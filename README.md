# Extract Your Human Job Into Skills

## Project Overview

This project is focused on turning everyday human work into 3-5 focused, reusable agent skills. The goal is to identify repeatable tasks and build small, focused agent skills that handle those tasks, ultimately saving time and reducing mental effort.

**Project Timeline:**
- Start Date: Jan 2, 2026
- Due Date: Jan 11, 2026

## Project Goals

- Turn what you already do into 3–5 focused, reusable agent skills
- Each skill should do one clear thing, be measurable, and noticeably save time or reduce mental effort
- Build skills that replace parts of your own job and could help others with similar work
- Prove the skills work on yourself before sharing them

## Core Principles

### The Non-Negotiables

1. **Build in public:** Share what you build (LinkedIn, X, YouTube)
2. **Automate yourself first:** Prove it works on YOU before selling
3. **Measure everything:** Every skill has success metrics
4. **Ship weekly:** No learning without shipping

### Project Constraints

- Skills must be small (100–900 LOC is fine)
- Each skill must have one clear outcome
- Each skill must be measurable

## Project Deliverables

- 3–5 skills (Claude Code / General Agent)
- A short README.md describing what each skill replaces and time saved / quality improved
- One 60–90 second demo (screen recording) — Use Loom Chrome Extension to record easily

## Success Metrics

**Success Signal:** At least one skill replaces a manual task for you this week.

## Project Structure & Git Atomic Commit Principle

This project follows the atomic commit principle where `git add`, `commit`, and `push` are performed for every atomic work and small task. This ensures:

- Small, focused changes
- Clear, descriptive commit messages
- Self-contained and coherent commits
- Each commit passes all tests independently

### Directory Structure

- **linkedin-posts/**: All LinkedIn posts saved with numbering prefix (e.g., 001-post-title.md, 002-another-post.md)
- **graphic-designs/**: Graphic designing related work and images with numbering prefix (e.g., 001-design-name.png, 002-another-design.jpg)
- **ui-designs/**: Frontend designing related tasks within subfolders of each tasks with numbering prefix (e.g., 001-component-name/, 002-another-component/)
- **prompts/**: All JSON formatted enhanced prompts with numbering prefix (.json files, e.g., 001-prompt-name.json, 002-another-prompt.json)

### File Naming Convention

- Use 3-digit numbering prefix (001, 002, 003, etc.) for all files in project directories
- Format: `NNN-identifier.extension` where NNN is the number (starting from 001)
- For frontend-design subfolders, use format: `001-component-name/`, `002-layout-name/`, etc.

## Current Skills Developed

This project has implemented several skills to automate routine tasks:

### 1. LinkedIn Post Writing Skill
- Automatically generates LinkedIn posts in the author's distinctive voice and style
- Follows a friendly, clear, and engaging tone with storytelling elements
- Maintains professional tone while incorporating conversational elements
- Uses structured templates for consistent, high-quality output

### 2. UI Design Skill
- Generates modern, aesthetic, production-quality frontend UI using HTML, TailwindCSS, and minimal JavaScript
- Follows semantic HTML practices and modern design principles

### 3. Graphic Design Skill
- Creates modern, aesthetic visual designs using Google Gemini image generation
- Generates high-quality design images and organizes them locally

### 4. Prompt Engineering Skill
- Transforms raw prompts into clear, effective prompts using proven frameworks
- Applies the six-part prompting framework to enhance prompt quality

### 5. Skill Creator Pro
- Creates production-grade, reusable skills that extend Claude's capabilities
- Builds domain-specific intelligence and adaptable skills

## Skills Impact & Success Metrics

Each skill developed in this project has measurable benefits:

### LinkedIn Post Writing Skill
- **Time Saved:** Reduces post creation time from 30-45 minutes to 5-10 minutes
- **Quality Improved:** Maintains consistent tone and structure while ensuring professional quality
- **Task Replaced:** Manual drafting and editing of LinkedIn content

### UI Design Skill
- **Time Saved:** Creates professional UI components in minutes instead of hours
- **Quality Improved:** Ensures consistent design patterns and modern aesthetics
- **Task Replaced:** Manual HTML/CSS coding for basic UI elements

### Graphic Design Skill
- **Time Saved:** Generates design assets in seconds instead of multiple hours
- **Quality Improved:** Produces professional, consistent visual materials
- **Task Replaced:** Outsourcing or manual creation of simple graphics

### Prompt Engineering Skill
- **Time Saved:** Optimizes prompts in minutes instead of trial and error over days
- **Quality Improved:** Creates more effective prompts that yield better results
- **Task Replaced:** Manual prompt refinement and optimization

### Skill Creator Pro
- **Time Saved:** Builds new skills in minutes instead of hours of development
- **Quality Improved:** Creates production-grade, reusable capabilities
- **Task Replaced:** Manual coding of new automation capabilities

## Implementation Approach

Based on the project instructions, we follow these best practices:

- Keep commits under 50 lines when possible
- Group related changes together
- Separate formatting changes from functional changes
- Use present tense in commit messages ("Add feature" not "Added feature")
- Follow conventional commit format when applicable

## Reference Materials

For more information on Claude Code features and workflows, refer to Part 2, Chapter 5 of the course materials.

## Repository

[View Project Repository](https://agentfactory.panaversity.org/factory?checkpoint=A1)

## Demo Video

Watch a 60-90 second demonstration of the skills in action:

[Demo Video](./demo_video.webm)

This video showcases how the developed skills automate routine tasks and provide measurable time savings as described in the Skills Impact & Success Metrics section.