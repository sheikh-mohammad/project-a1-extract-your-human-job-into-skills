---
name: graphic-design
description: |-
  This skill creates modern, aesthetic visual designs using Google Gemini image generation via MCP Playwright browser access. The skill generates high-quality design images, downloads them, and organizes them locally in the graphic-designs directory following modern aesthetic principles. This skill should be used when users need professional graphic designs for tech platforms, AI tools, learning products, or personal portfolios.
---

# Graphic Design Skill

This skill creates modern, aesthetic visual designs using Google Gemini image generation via MCP Playwright browser access. The skill generates high-quality design images, downloads them, and organizes them locally following professional design standards.

## Core Capabilities

1. **Gemini Integration**: Uses MCP Playwright to access Google Gemini for image generation
2. **Modern Aesthetics**: Creates designs following professional design principles
3. **Image Download & Organization**: Downloads generated images and saves them in organized directory structure
4. **Prompt Construction**: Converts user requests into detailed, structured image prompts
5. **Professional Output**: Generates images suitable for tech platforms, AI tools, and professional use

## Design Aesthetic Requirements (VERY IMPORTANT)

All generated images must follow these principles:

- **Modern**: Contemporary design approach
- **Clean**: Uncluttered and purposeful
- **Minimal**: Focus on essential elements
- **Professional**: Suitable for business use
- **High visual hierarchy**: Clear information organization
- **Balanced spacing**: Proper visual breathing room
- **Readable text areas**: Consideration for overlay text
- **Soft shadows**: Subtle depth effects
- **Subtle gradients**: Gentle color transitions
- **Muted or neutral color palettes**: Sophisticated color choices

Avoid:
- Cartoon styles
- Loud or neon colors
- Overcrowded layouts
- Low-contrast text
- Generic clip-art visuals

## Prompt Construction Rules (Critical)

Before sending a prompt to Gemini, the skill will:

1. Convert the user request into a detailed, structured image prompt
2. Explicitly define:
   - Layout style
   - Color tone
   - Mood
   - Lighting
   - Composition
   - Design purpose
3. Ensure the prompt is descriptive, precise, and visual

## Image Generation Rules

- Generate 1–3 images per request
- Prefer high-resolution outputs
- Ensure designs leave space for text overlays
- Each image should feel intentional and usable

## Download & File Handling Rules

After image generation:

1. Download each image from Gemini
2. Create directory if missing: `graphic-designs/`
3. Save images using descriptive filenames:
   - `graphic-designs/linkedin-banner-modern-01.png`
   - `graphic-designs/ai-dashboard-hero-02.png`
4. Do NOT overwrite files unless explicitly instructed

## Input Parameters

- **Design Purpose**: The purpose of the design (e.g. LinkedIn post, banner, thumbnail)
- **Style Keywords**: Optional style keywords to influence the design
- **Color Preferences**: Optional color preferences for the design
- **Size/Dimensions**: Required dimensions or aspect ratio for the image (e.g., "1080x1080", "16:9", "1920x1080")

## Output

A summary including:
- Number of images generated
- File names saved
- Design style used
- Location where files are saved

## Before Implementation

Gather context to ensure successful implementation:

| Source | Gather |
|--------|--------|
| **Codebase** | Any existing design templates or guidelines in the project |
| **Conversation** | User's specific design requirements and preferences |
| **Skill References** | Design guidelines and best practices from `references/` |
| **User Guidelines** | Any specific constraints or requirements for the design |

Ensure all required context is gathered before implementing.
Only ask user for THEIR specific requirements (domain expertise is in this skill).

## Authentication Requirements

- The skill will open https://gemini.google.com
- If authentication is required, execution will pause
- User will be asked to log in manually
- Execution continues only after Gemini is accessible