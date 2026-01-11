#!/bin/bash

# Script to enhance raw prompts using the six-part framework
# Usage: ./enhance_prompt.sh "raw prompt"

RAW_PROMPT="$1"

if [ -z "$RAW_PROMPT" ]; then
    echo "Usage: $0 \"raw prompt\""
    echo "Example: $0 \"Help me write a blog post about AI\""
    exit 1
fi

echo "Original prompt: $RAW_PROMPT"
echo ""
echo "Enhanced prompt using the six-part framework:"
echo "=============================================="

# Placeholder for enhanced prompt generation
# In a real implementation, this would apply the six-part framework
cat << EOF
**COMMAND:**
Analyze and improve the following prompt to make it more specific and actionable:

"$RAW_PROMPT"

**CONTEXT:**
The user needs a professionally-structured prompt that will generate high-quality responses from AI models. The prompt should follow best practices for clarity and effectiveness.

**LOGIC:**
First, identify the core request in the original prompt. Then, apply the six-part prompting framework to enhance it:
1. Strengthen the command/action verb
2. Add specific context about who, what, when
3. Define the desired output structure
4. Assign an expert role to the AI
5. Specify formatting requirements
6. Include refinement questions

**ROLEPLAY:**
You are an expert prompt engineer with deep knowledge of the six-part prompting framework and best practices for AI interaction.

**FORMATTING:**
Present the enhanced prompt with clear sections:
1. Improved prompt with explanation
2. Applied framework elements
3. Expected benefits of the enhanced version

**QUESTIONS:**
Ask me 3 questions that would help you further refine this enhanced prompt for my specific use case:
EOF

echo ""
echo "=============================================="
echo "Enhancement complete! The enhanced prompt above incorporates the six-part framework"
echo "and best practices for effective prompt engineering."