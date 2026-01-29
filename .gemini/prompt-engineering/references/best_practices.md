# Prompt Engineering Best Practices Reference

## Core Prompt Engineering Concepts

**Definition**: "Prompt engineering is the art and science of crafting instructions that guide AI language models to produce desired outputs."

**Key Distinction**:
- "Prompt engineering" = crafting the *instruction* you give the model
- "Context engineering" = curating the *information* the model can see when following that instruction

## Essential Configuration Settings

- **Temperature (0-1)**: Low (0-0.3) for focused responses, high (0.8-1.0) for creative outputs
- **Output Length/Token Limits**: Controls maximum response length
- **Top-K and Top-P**: Limit choices to top most likely tokens based on probability

## Fundamental Prompting Techniques

1. **Zero-Shot**: Ask directly without examples
2. **One-Shot**: Provide single example to guide response format
3. **Few-Shot**: Multiple examples to establish pattern (3-5 typically optimal)
4. **System Prompting**: Set overall context and behavior guidelines
5. **Role Prompting**: Assign specific expertise to the AI
6. **Contextual Prompting**: Provide specific background information

## Advanced Strategies

- **Chain of Thought (CoT)**: Encourage step-by-step reasoning
- **Self-Consistency**: Generate multiple reasoning paths and select most common answer
- **Step-Back Prompting**: Ask general question first, then apply to specific task
- **ReAct (Reasoning + Acting)**: Combine reasoning with tool use/actions
- **Tree of Thoughts (ToT)**: Explore multiple reasoning branches simultaneously

## Best Practices

**Structure**: "Task: [What you want done] Context: [Background information] Format: [How you want output structured]"

**Core Principles**:
- Be specific and clear
- Use action verbs (analyze, compare, create, describe)
- Provide examples when possible
- Control output format explicitly
- Use instructions over constraints
- Iterate and document results

**Testing Framework**: Document prompts systematically with version, goal, model, temperature, output quality, and notes.

## MoE-Specific Considerations

For Mixture-of-Experts models, front-load domain signals and use unambiguous, domain-specific vocabulary since "small wording changes can steer which experts wake up."

---

## The Six-Part Prompting Framework - Detailed

### Overview
This framework provides a systematic approach to crafting effective AI prompts that deliver professional-level results across all major AI models.

### The Six Components

#### 1. Command: Start Strong, Not Soft
**Purpose**: Begin with clear, direct commands using strong action verbs rather than vague requests.

**Examples**:
- Weak: "Give me investing advice"
- Strong: "Recommend a diversified investment strategy for a moderate risk investor saving for a home within 5 years"

**Key Principles**:
- Use action verbs: analyze, create, design, recommend, generate, evaluate
- Avoid weak words like "give" or "help"
- Be specific about desired outcomes
- Set a professional, focused tone

#### 2. Context: More is Always Better
**Purpose**: Provide comprehensive background information to narrow AI's interpretation range.

**The Rule of Three Framework**:
- **Who**: Age, profession, experience level, situation
- **What**: Specific goal, constraints, requirements
- **When**: Timeline, deadlines, urgency

**Context Scaling**:
- Simple requests: Minimal context needed
- Complex projects: Extensive context required
- Life-changing decisions: Maximum context investment

#### 3. Logic: Define the Output Structure
**Purpose**: Specify exactly how the AI should think and respond.

**Examples**:
- Basic: "List the asset categories, explain the percent allocation for each, and briefly justify the rationale behind each choice"
- Advanced formatting options include tables, checklists, PDF formats

#### 4. Roleplay: Transform Generic into Expert-Level
**Purpose**: Have the AI adopt a specific professional identity to improve response quality.

**Examples**:
- "You are a certified financial advisor with 15 years of experience specializing in personal finance and mid-term investment planning"

**Field-Specific Roles**:
- Finance: "Certified financial advisor with 15 years experience"
- Marketing: "Senior marketing strategist with expertise in digital campaigns"
- Technology: "Senior software architect with 10 years in enterprise systems"

#### 5. Formatting: Structure for Success
**Purpose**: Organize information in immediately useful and actionable ways.

**Popular Formatting Options**:
- Numbered lists for sequential steps
- Bullet points for equal-weight items
- Tables for comparing options
- Sections with headers for complex topics
- Summary boxes for key takeaways

#### 6. Questions: The Secret Sauce
**Purpose**: End prompts with question requests to identify gaps and refine results.

**The Game-Changer**: "Ask me 10 questions that will help you tailor this strategy even more"

**Advanced Question Strategy**:
- Round 1: "Ask me 10 questions to tailor this better"
- Round 2: "Based on my answers, ask 10 more questions that fill in gaps"
- Round 3: "Give me 10 more detailed questions"
- Stop when AI starts repeating questions

### Complete Example Template

```
**COMMAND:**
Recommend a comprehensive investment strategy

**CONTEXT:**
for a 32-year-old software engineer with moderate risk tolerance, earning $90,000/year, with $25,000 in savings, looking to buy a home in 5 years while also building long-term wealth

**LOGIC:**
List the asset categories, explain the percent allocation for each, justify the rationale behind each choice, and include specific investment vehicles or funds

**ROLEPLAY:**
You are a certified financial advisor with 15 years of experience specializing in personal finance and mid-term investment planning for tech professionals

**FORMATTING:**
Format the response as:
1. Executive Summary (2-3 sentences)
2. Asset Allocation Table (with percentages and reasoning)
3. Specific Investment Recommendations
4. Timeline and Milestones
5. Risk Management Considerations

**QUESTIONS:**
Ask me 10 questions that will help you tailor this strategy even more specifically to my situation
```

### Best Practices

**Model Selection**:
- ChatGPT & Gemini: Best for this framework
- Claude: Works well with slight modifications
- Specialized models may require framework adjustments

**Context Balancing**:
- High-stakes decisions: Invest heavily in context and questions
- Daily tasks: Use abbreviated version with 3-5 elements
- Creative projects: Emphasize roleplay and formatting elements

**Voice Memo Strategy**:
- Use phone's voice memo feature for answering AI questions
- Speak naturally and conversationally
- Let AI ask follow-up questions until it stops finding new angles

**Iteration Approach**:
1. Start with basic framework
2. Let AI ask questions and answer them
3. Refine the prompt based on gaps identified
4. Generate final output when AI stops asking fresh questions

### Common Mistakes to Avoid
- Skipping the Command: Starting with questions instead of clear directives
- Insufficient Context: Providing generic information that could apply to anyone
- No Output Structure: Letting AI choose its own response format
- Generic Roles: Using vague expertise instead of specific professional roles
- Stopping Too Early: Not using the questions feature to refine results