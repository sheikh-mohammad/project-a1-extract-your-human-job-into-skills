---
name: linkedin-post-writing
description: |-
  This skill creates LinkedIn posts in the exact writing and speaking style of Sheikh Mohammad Ahmed. It produces medium-length posts that are friendly, clear, and easy to read, with short paragraphs, storytelling elements, and an encouraging, enthusiastic tone with a sprinkle of humor! 😄 This skill should be used when users need LinkedIn posts written in Sheikh Mohammad Ahmed's distinctive voice and style. Additionally, this skill can post the generated content directly to LinkedIn on behalf of the user using browser automation.
---

# LinkedIn Post Writing Skill 🚀

This skill generates LinkedIn posts in the exact writing and speaking style of Sheikh Mohammad Ahmed. It creates medium-length posts that follow his distinctive communication patterns - with a fun twist! 😊

## Features

1. **Post Generation**: Create LinkedIn posts in Sheikh Mohammad Ahmed's distinctive voice and style
2. **Direct Posting**: Automatically post generated content to LinkedIn on behalf of the user using browser automation
3. **Style Consistency**: Maintains the friendly, professional tone with storytelling and humor

## Style Characteristics

The generated posts will exhibit these key characteristics:

1. **Friendly and clear**, easy to read
2. **Slightly casual but still professional**
3. **Step-by-step explanations** with examples
4. **Short paragraphs** for clarity
5. **Storytelling approach** when explaining ideas
6. An **encouraging and enthusiastic** tone, sometimes with light humor 😄
7. **Simple explanations** of technical or complex topics, suitable for beginners or peers
8. Natural, **conversational questions** and clarifications

## Input Parameters

- **Topic**: The subject matter for the LinkedIn post
- **Goal**: The purpose of the post (e.g., inspire, explain, share experience)
- **PostToLinkedIn**: Optional boolean to indicate if the post should be published to LinkedIn (default: false)

## Output

A ready-to-post medium-length LinkedIn post written in Sheikh Mohammad Ahmed's personal tone and style, optimized for storytelling and clear explanation with short paragraphs, simple language, and natural, human-style communication. Plus, it'll have some personality and humor to make those LinkedIn feeds more interesting! 😄

Optionally, the post can be automatically published to LinkedIn using browser automation.

## Before Implementation

Gather context to ensure successful implementation:

| Source | Gather |
|--------|--------|
| **Codebase** | Any existing LinkedIn post templates or guidelines in the project |
| **Conversation** | User's specific topic, goal, and audience requirements |
| **Skill References** | Style patterns from `references/` (writing examples, tone guidelines) |
| **User Guidelines** | Any specific company or personal branding requirements |
| **LinkedIn Access** | Verify LinkedIn session is active and accessible for posting |

Ensure all required context is gathered before implementing.
Only ask user for THEIR specific requirements (domain expertise is in this skill).

## Writing Approach

When generating a LinkedIn post, follow this approach:

1. **Start with a hook** - Engage the reader immediately
2. **Tell a story** - Share an experience or situation related to the topic
3. **Explain step-by-step** - Break down complex ideas into digestible parts
4. **Include examples** - Provide concrete illustrations
5. **Maintain the tone** - Keep it friendly, casual but professional with a touch of humor 😊
6. **End with value** - Give readers a clear takeaway or call to action

## LinkedIn Posting Workflow

When `PostToLinkedIn` is true, the skill will:

1. **Generate the post** using the established style
2. **Verify LinkedIn access** by navigating to LinkedIn homepage
3. **Locate the post creation area** using accessibility snapshot
4. **Insert the generated content** into the post editor
5. **Publish the post** by clicking the appropriate button
6. **Confirm successful posting** and return the result

## Key Language Patterns

- Use direct, clear language
- Include phrases like "I want to..." or "So I want to..."
- Ask rhetorical questions naturally
- Use "So now..." or "Let me..." to transition between points
- Include minor grammar quirks that feel natural and human
- Explain intentions as you go ("I'm doing this because...")
- Add some personality and light humor to make posts more engaging 😄
- Make sure posts feel authentic and not robotic

## Browser Automation Integration

This skill leverages the browsing-with-playwright capability to automate LinkedIn posting:

- **Navigation**: Goes to LinkedIn.com and verifies logged-in state
- **Content Entry**: Inserts the generated post into LinkedIn's editor
- **Publishing**: Submits the post and confirms successful publication
- **Error Handling**: Manages potential issues during the posting process