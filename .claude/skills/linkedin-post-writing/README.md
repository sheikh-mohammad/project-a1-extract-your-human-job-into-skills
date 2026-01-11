# LinkedIn Post Writing Skill

This skill generates LinkedIn posts in the exact writing and speaking style of Sheikh Mohammad Ahmed.

## Overview

The skill creates medium-length LinkedIn posts that follow Sheikh Mohammad Ahmed's distinctive communication patterns:
- Friendly and clear, easy to read
- Slightly casual but still professional
- Step-by-step explanations with examples
- Short paragraphs for clarity
- Storytelling approach when explaining ideas
- Encouraging and enthusiastic tone, sometimes with light humor
- Simple explanations of technical or complex topics
- Natural, conversational questions and clarifications

Additionally, this skill can post the generated content directly to LinkedIn on behalf of the user using browser automation.

## Features

1. **Post Generation**: Create LinkedIn posts in Sheikh Mohammad Ahmed's distinctive voice and style
2. **Direct Posting**: Automatically post generated content to LinkedIn on behalf of the user using browser automation
3. **Style Consistency**: Maintains the friendly, professional tone with storytelling and humor

## Usage

When prompted to generate a LinkedIn post, the skill will:

1. Take the specified topic and goal
2. Apply the characteristic writing patterns
3. Generate a medium-length post with short paragraphs
4. Include storytelling elements and step-by-step explanations
5. Maintain the natural, human-like tone
6. Optionally publish the post directly to LinkedIn if requested

## Key Style Elements

- Uses direct, clear language
- Includes phrases like "I want to..." or "So I want to..."
- Asks rhetorical questions naturally
- Uses "So now..." or "Let me..." to transition between points
- Includes minor grammar quirks that feel natural and human
- Explains intentions as it goes

## Input Parameters

- **Topic**: The subject matter for the LinkedIn post
- **Goal**: The purpose of the post (e.g., inspire, explain, share experience)
- **PostToLinkedIn**: Optional boolean to indicate if the post should be published to LinkedIn (default: false)

## Output

A ready-to-post LinkedIn post written in Sheikh Mohammad Ahmed's personal tone and style, optimized for storytelling and clear explanation with short paragraphs, simple language, and natural, human-style communication.

Optionally, the post can be automatically published to LinkedIn using browser automation.

## Browser Automation Integration

This skill leverages the browsing-with-playwright capability to automate LinkedIn posting:

- **Navigation**: Goes to LinkedIn.com and verifies logged-in state
- **Content Entry**: Inserts the generated post into LinkedIn's editor
- **Publishing**: Submits the post and confirms successful publication
- **Error Handling**: Manages potential issues during the posting process