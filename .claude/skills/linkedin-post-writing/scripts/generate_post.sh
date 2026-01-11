#!/bin/bash

# Script to generate a LinkedIn post in Sheikh Mohammad Ahmed's style
# Usage: ./generate_post.sh "topic" "goal" [post_to_linkedin]
# post_to_linkedin is optional (true/false), defaults to false

TOPIC="$1"
GOAL="$2"
POST_TO_LINKEDIN="${3:-false}"

if [ -z "$TOPIC" ] || [ -z "$GOAL" ]; then
    echo "Usage: $0 \"topic\" \"goal\" [post_to_linkedin]"
    echo "Example: $0 \"AI in Education\" \"inspire\" true"
    exit 1
fi

echo "Generating LinkedIn post about '$TOPIC' with goal to '$GOAL' in Sheikh Mohammad Ahmed's style..."
echo ""
echo "------------------------------------------------------------"
echo ""

# Generate the post based on the template and style
LINKEDIN_POST=$(cat << EOF
Okay, I want to talk about $TOPIC and why it matters for professionals like us.

I am currently exploring $TOPIC and I realized how it can make a difference in our daily work and career growth.

So now let me break it down step by step:

First, $TOPIC is important because it addresses [key challenge/opportunity]. For example, [specific example related to $TOPIC].

Second, mastering $TOPIC can significantly impact [relevant area]. You know, when professionals understand $TOPIC deeply, it really shows in their [performance/outcomes].

What I learned from my own experience is [personal insight about $TOPIC]. Because in the past, [personal story related to $TOPIC] and that taught me [key lesson].

So what other thoughts do you have about $TOPIC? I'd love to hear your experiences and perspectives on this.

#LinkedIn #ProfessionalDevelopment #$TOPIC #[GOAL Tag]
EOF
)

echo "$LINKEDIN_POST"

echo ""
echo "------------------------------------------------------------"
echo "LinkedIn post generated successfully!"

# If POST_TO_LINKEDIN is true, attempt to post to LinkedIn
if [ "$POST_TO_LINKEDIN" = "true" ]; then
    echo ""
    echo "Attempting to post to LinkedIn..."

    # Check if the Playwright MCP server is available
    if ! command -v python &> /dev/null; then
        echo "Error: Python is not available. Cannot post to LinkedIn."
        exit 1
    fi

    # Determine the path to the mcp-client.py from the browsing-with-playwright skill
    BROWSING_SKILL_PATH="../../../.claude/skills/browsing-with-playwright"

    if [ -f "$BROWSING_SKILL_PATH/scripts/mcp-client.py" ]; then
        CLIENT_SCRIPT="$BROWSING_SKILL_PATH/scripts/mcp-client.py"
    else
        echo "Error: Could not find mcp-client.py in browsing-with-playwright skill."
        echo "Please ensure the browsing-with-playwright skill is properly configured."
        exit 1
    fi

    # Attempt to post to LinkedIn using browser automation
    echo "Navigating to LinkedIn..."
    python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_navigate -p '{"url": "https://www.linkedin.com/feed/"}' > /dev/null 2>&1

    # Wait a bit for the page to load
    sleep 3

    # Get the page snapshot to find the post box
    SNAPSHOT_OUTPUT=$(python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_snapshot -p '{}')

    # Look for the post box in the snapshot (this is simplified logic)
    # In a real implementation, we would need to parse the snapshot to find the right element
    POST_BOX_REF=$(echo "$SNAPSHOT_OUTPUT" | grep -o '"ref":"[^"]*"[^}]*create a post\|post a thought\|share an article\|start a post' | head -n1 | grep -o '"ref":"[^"]*"' | cut -d'"' -f3)

    if [ -n "$POST_BOX_REF" ]; then
        # Click the post box
        python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_click -p "{\"element\": \"Post box\", \"ref\": \"$POST_BOX_REF\"}" > /dev/null 2>&1

        # Wait for the post editor to appear
        sleep 2

        # Get snapshot again to find the text area
        EDITOR_SNAPSHOT=$(python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_snapshot -p '{}')

        # Find the text area reference (again, simplified)
        TEXT_AREA_REF=$(echo "$EDITOR_SNAPSHOT" | grep -o '"ref":"[^"]*"[^}]*text\|textarea\|editor' | head -n1 | grep -o '"ref":"[^"]*"' | cut -d'"' -f3)

        if [ -n "$TEXT_AREA_REF" ]; then
            # Insert the post content
            python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_type -p "{\"element\": \"Post text area\", \"ref\": \"$TEXT_AREA_REF\", \"text\": \"$LINKEDIN_POST\"}" > /dev/null 2>&1

            # Find and click the post button
            BUTTON_SNAPSHOT=$(python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_snapshot -p '{}')
            POST_BUTTON_REF=$(echo "$BUTTON_SNAPSHOT" | grep -o '"ref":"[^"]*"[^}]*post\|share' | head -n1 | grep -o '"ref":"[^"]*"' | cut -d'"' -f3)

            if [ -n "$POST_BUTTON_REF" ]; then
                python "$CLIENT_SCRIPT" call -u http://localhost:8808 -t browser_click -p "{\"element\": \"Post button\", \"ref\": \"$POST_BUTTON_REF\"}" > /dev/null 2>&1
                echo "Successfully posted to LinkedIn!"
            else
                echo "Could not find post button. Manual posting required."
            fi
        else
            echo "Could not find text area in post editor. Manual posting required."
        fi
    else
        echo "Could not find post box on LinkedIn feed. Are you logged in?"
    fi
else
    echo "Not posting to LinkedIn. Set third parameter to 'true' to post automatically."
fi