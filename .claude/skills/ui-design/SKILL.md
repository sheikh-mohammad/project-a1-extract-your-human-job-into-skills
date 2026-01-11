---
name: ui-design
description: |-
  This skill generates modern, aesthetic, production-quality frontend UI using HTML, TailwindCSS, and minimal JavaScript. The skill follows semantic HTML practices, TailwindCSS utility classes for styling, and includes JavaScript only when necessary for interactions. This skill should be used when users need clean, professional UI components and pages that follow modern design principles.
---

# UI Design Skill

This skill generates modern, aesthetic, production-quality frontend UI using HTML, TailwindCSS, and minimal JavaScript. The skill creates clean, professional UI components and pages that follow modern design principles and best practices.

## Core Capabilities

1. **Semantic HTML**: Creates well-structured, accessible HTML markup
2. **TailwindCSS Styling**: Implements modern styling using utility-first approach
3. **Minimal JavaScript**: Includes only necessary JavaScript for interactions
4. **Modern Aesthetics**: Follows contemporary design principles and visual guidelines
5. **Production Quality**: Generates clean, readable, well-structured code

## Core Requirements

- Use semantic HTML elements for proper structure and accessibility
- Use TailwindCSS utility classes for styling
- Use JavaScript only when necessary (interactions, toggles, animations)
- Output clean, readable, well-structured code
- Do NOT overuse animations or effects

## UI Aesthetic Guidelines (VERY IMPORTANT)

The UI must feel:

- **Modern and professional**
- **Minimal but not empty**
- **Well-spaced with generous padding**
- **Strong visual hierarchy**
- **Readable typography**
- **Balanced layout**
- **Soft shadows and rounded corners**
- **Subtle gradients or muted colors**
- **Consistent spacing system**
- **Clear section separation**

Avoid:
- Loud or neon colors
- Crowded layouts
- Overly complex animations
- Outdated UI patterns
- Bootstrap-style card clutter

## Layout & Structure Expectations

- Use grid or flex layouts thoughtfully
- Headings must be visually distinct (size + weight)
- Buttons should look clickable and premium
- Cards should have:
  - Rounded corners
  - Soft shadows
  - Clear content grouping
- Sections should:
  - Breathe (space between them)
  - Have clear purpose
  - Not feel stacked tightly

## Typography Rules

- Use clear font hierarchy
- Headings: bold, confident
- Body text: readable, neutral
- Avoid excessive font sizes
- Avoid decorative fonts

## Color & Styling Rules

- Use a limited color palette
- Prefer:
  - Neutral backgrounds
  - Accent colors for actions
- Ensure good contrast

## Interactions (Optional but Encouraged)

- Hover effects on buttons and cards
- Smooth transitions
- Simple JS for:
  - Toggle menus
  - Accordions
  - Modals
- Animations must be subtle and purposeful

## Output Format

When generating frontend code:
- Provide complete HTML file
- Include TailwindCSS CDN
- Include JS inside `<script>` tag if used
- Add short comments explaining sections
- Do NOT explain the code unless asked

## Input Parameters

- **Page Purpose**: The purpose of the page (e.g., landing page, dashboard, feature page)
- **Sections**: Optional sections to include in the UI
- **Theme Preference**: Optional theme preference (e.g., light, dark, specific color scheme)
- **Components**: Specific UI components to include

## Output

A complete, production-ready HTML file with TailwindCSS styling that meets all aesthetic and technical requirements, saved in the ui-designs directory with a subfolder for the project.

## Before Implementation

Gather context to ensure successful implementation:

| Source | Gather |
|--------|--------|
| **Codebase** | Any existing UI templates or design guidelines in the project |
| **Conversation** | User's specific UI requirements and preferences |
| **Skill References** | Design guidelines and best practices from `references/` |
| **User Guidelines** | Any specific constraints or requirements for the UI |

Ensure all required context is gathered before implementing.
Only ask user for THEIR specific requirements (domain expertise is in this skill).