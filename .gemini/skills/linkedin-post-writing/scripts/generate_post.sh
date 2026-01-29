#!/bin/bash

# Script to generate a LinkedIn post in Sheikh Mohammad Ahmed's style
# Usage: ./generate_post.sh "topic" "goal"

TOPIC="$1"
GOAL="$2"

if [ -z "$TOPIC" ] || [ -z "$GOAL" ]; then
    echo "Usage: $0 \"topic\" \"goal\""
    echo "Example: $0 \"AI in Education\" \"inspire\""
    exit 1
fi

echo "Generating LinkedIn post about '$TOPIC' with goal to '$GOAL' in Sheikh Mohammad Ahmed's style..."
echo ""
echo "------------------------------------------------------------"
echo ""

# Generate the post based on the template and style
cat << EOF
Okay, I want to talk about $TOPIC and why it matters for professionals like us.

I am currently exploring $TOPIC and I realized how it can make a difference in our daily work and career growth.

So now let me break it down step by step:

First, $TOPIC is important because it addresses [key challenge/opportunity]. For example, [specific example related to $TOPIC].

Second, mastering $TOPIC can significantly impact [relevant area]. You know, when professionals understand $TOPIC deeply, it really shows in their [performance/outcomes].

What I learned from my own experience is [personal insight about $TOPIC]. Because in the past, [personal story related to $TOPIC] and that taught me [key lesson].

So what other thoughts do you have about $TOPIC? I'd love to hear your experiences and perspectives on this.

#LinkedIn #ProfessionalDevelopment #$TOPIC #[GOAL Tag]
EOF

echo ""
echo "------------------------------------------------------------"
echo "LinkedIn post generated successfully!"