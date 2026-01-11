---
name: prompt-engineering
description: |-
  This skill transforms raw prompts into clear, effective prompts using proven frameworks and best practices. It applies the six-part prompting framework and other advanced techniques to enhance prompt quality, specificity, and effectiveness. This skill should be used when users need to convert vague or basic prompts into professional-grade prompts that yield better results from AI models.
---

# Prompt Engineering Skill

This skill enhances raw prompts by transforming them into clear, structured prompts using industry-standard frameworks and best practices. It leverages the six-part prompting framework and other advanced techniques to improve prompt effectiveness and output quality.

## Core Capabilities

1. **Framework Application**: Applies the six-part prompting framework to structure prompts effectively
2. **Best Practice Integration**: Incorporates proven prompt engineering techniques
3. **Quality Enhancement**: Improves clarity, specificity, and effectiveness of prompts
4. **Template Generation**: Creates professional-grade prompts with optimal structure

## The Six-Part Prompting Framework

The skill implements the comprehensive six-part framework for optimal prompt engineering:

### 1. Command: Start Strong, Not Soft
- Begins with clear, direct commands using strong action verbs
- Uses specific action verbs: analyze, create, design, recommend, generate, evaluate
- Avoids weak words like "give" or "help"
- Sets a professional, focused tone

### 2. Context: More is Always Better
- Provides comprehensive background information to narrow AI's interpretation range
- Implements the Rule of Three Framework:
  - **Who**: Age, profession, experience level, situation
  - **What**: Specific goal, constraints, requirements
  - **When**: Timeline, deadlines, urgency
- Scales context appropriately based on complexity and importance

### 3. Logic: Define the Output Structure
- Specifies exactly how the AI should think and respond
- Defines clear output requirements and structure
- May include tables, checklists, or specific formatting

### 4. Roleplay: Transform Generic into Expert-Level
- Has the AI adopt a specific professional identity to improve response quality
- Assigns field-specific roles based on the prompt's domain
- Examples: "You are a certified financial advisor with 15 years of experience..."

### 5. Formatting: Structure for Success
- Organizes information in immediately useful and actionable ways
- Offers popular formatting options:
  - Numbered lists for sequential steps
  - Bullet points for equal-weight items
  - Tables for comparing options
  - Sections with headers for complex topics
  - Summary boxes for key takeaways

### 6. Questions: The Secret Sauce
- Ends prompts with question requests to identify gaps and refine results
- Implements iterative questioning for deeper refinement
- Uses follow-up questions to enhance precision

## Additional Prompt Engineering Techniques

- **Zero-Shot**: Direct requests without examples
- **Few-Shot**: Multiple examples to establish pattern (typically 3-5 optimal)
- **Chain of Thought (CoT)**: Encourages step-by-step reasoning
- **System Prompting**: Sets overall context and behavior guidelines
- **Role Prompting**: Assigns specific expertise to the AI

## Configuration Settings Guidance

- **Temperature (0-1)**: Low (0-0.3) for focused responses, high (0.8-1.0) for creative outputs
- **Output Length/Token Limits**: Controls maximum response length
- **Top-K and Top-P**: Limit choices to top most likely tokens based on probability

## Input Parameters

- **Raw Prompt**: The initial, potentially vague or basic prompt to be enhanced
- **Target Domain**: The specific field or application area for the prompt (optional)
- **Output Requirements**: Specific format or structure requirements (optional)

## Output

An enhanced, professionally-structured prompt that incorporates the six-part framework and other best practices, designed to produce superior results from AI models.

## Before Implementation

Gather context to ensure successful implementation:

| Source | Gather |
|--------|--------|
| **Codebase** | Any existing prompt templates or guidelines in the project |
| **Conversation** | User's specific prompt to enhance and target requirements |
| **Skill References** | Framework details and best practices from `references/` |
| **User Guidelines** | Any specific constraints or preferences for the enhanced prompt |

Ensure all required context is gathered before implementing.
Only ask user for THEIR specific requirements (domain expertise is in this skill).