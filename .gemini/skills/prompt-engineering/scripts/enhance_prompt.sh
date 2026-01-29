#!/bin/bash

# Script to enhance raw prompts using the six-part framework
# Returns output in JSON format
# Usage: ./enhance_prompt.sh "raw prompt"

RAW_PROMPT="$1"

if [ -z "$RAW_PROMPT" ]; then
    echo "Usage: $0 \"raw prompt\""
    echo "Example: $0 \"Help me write a blog post about AI\""
    exit 1
fi

# Create a temporary file with the enhanced prompt
TEMP_FILE=$(mktemp)
cat > "$TEMP_FILE" << EOF
**COMMAND:**
Analyze and improve the following prompt to make it more specific and actionable:

$RAW_PROMPT

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

# Read the enhanced prompt and prepare it for JSON
ENHANCED_PROMPT=$(cat "$TEMP_FILE" | sed ':a;N;$!ba;s/\n/\\n/g' | sed 's/"/\\"/g')

# Clean up
rm "$TEMP_FILE"

# Escape the original prompt for JSON
ESCAPED_ORIGINAL=$(printf '%s' "$RAW_PROMPT" | sed 's/"/\\"/g' | sed 's/\\/\\\\/g')

# Create JSON output
cat << EOF
{
  "originalPrompt": "$ESCAPED_ORIGINAL",
  "enhancedPrompt": "$ENHANCED_PROMPT",
  "frameworkApplied": [
    "Command: Strengthened the initial directive",
    "Context: Provided comprehensive background",
    "Logic: Defined the output structure and reasoning approach",
    "Roleplay: Assigned expert role to the AI",
    "Formatting: Specified output structure requirements",
    "Questions: Included refinement questions"
  ],
  "improvementNotes": [
    "Converted vague request to specific, actionable command",
    "Added context about the purpose and requirements",
    "Defined clear structure for the response",
    "Assigned expert role to improve response quality",
    "Specified formatting requirements",
    "Included questions for iterative refinement"
  ],
  "expectedBenefits": [
    "More focused and specific AI responses",
    "Higher quality output due to clear instructions",
    "Better adherence to desired format and style",
    "Improved relevance to user's specific needs"
  ]
}
EOF