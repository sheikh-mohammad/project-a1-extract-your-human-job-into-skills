#!/bin/bash

# Script to post the specific content from your file to LinkedIn
# First, let's extract the content from your file

POST_CONTENT=$(cat ../../../linkedin-posts/001-21-days-of-problem-solving-with-python-series.md)

echo "Content to be posted:"
echo "====================="
echo "$POST_CONTENT"
echo "====================="
echo ""

echo "To post this to LinkedIn, you have two options:"
echo ""
echo "OPTION 1: Manual posting"
echo "   - Copy the content above and paste it directly into LinkedIn's post editor"
echo "   - Add any hashtags or formatting as needed"
echo ""
echo "OPTION 2: Automated posting (requires Playwright server)"
echo "   To enable automated posting, you need to start the Playwright MCP server:"
echo "   1. Navigate to the browsing-with-playwright skill:"
echo "      cd ../../../.claude/skills/browsing-with-playwright"
echo "   2. Start the server:"
echo "      bash scripts/start-server.sh"
echo "   3. Verify it's running:"
echo "      python scripts/verify.py"
echo "   4. Then run this script again:"
echo "      cd ../linkedin-post-writing"
echo "      bash post_from_file.sh"
echo ""

# If the user wants to try automated posting, check if server is running
if command -v python &> /dev/null; then
    # Attempt to check if server is running
    if python ../../../.claude/skills/browsing-with-playwright/scripts/mcp-client.py call -u http://localhost:8808 -t browser_snapshot -p '{}' &> /dev/null; then
        echo "Playwright server appears to be running. Attempting automated posting..."

        # Navigate to LinkedIn
        python ../../../.claude/skills/browsing-with-playwright/scripts/mcp-client.py call -u http://localhost:8808 -t browser_navigate -p '{"url": "https://www.linkedin.com/feed/"}'

        # Wait for page to load
        sleep 3

        # Click the post box
        echo "Looking for post box..."
        # This would need to be adjusted based on actual LinkedIn UI elements
        # The ref would need to be obtained from the actual snapshot
    else
        echo "Playwright server is not running. Please start it as described above."
    fi
else
    echo "Python is not available. Cannot attempt automated posting."
fi