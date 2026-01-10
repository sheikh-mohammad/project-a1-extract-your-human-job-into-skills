# Project Structure & Git Atomic Commit Principle

## Core Principle
Apply the atomic commit principle: `git add`, `commit`, and `push` for every atomic work and small task.

> Use this principle also when user says `git`
> This means for every git command or git-related task, make atomic commits

## What is an Atomic Commit?
An atomic commit is a single, indivisible unit of change that:
- Contains only one logical change
- Is self-contained and coherent
- Passes all tests independently
- Has a clear, descriptive commit message

## Benefits of Atomic Commits
- **Easier to review**: Smaller changes are easier to understand and review
- **Simpler debugging**: Issues can be traced to specific, small changes
- **Flexible revert**: Individual changes can be reverted without affecting other features
- **Better collaboration**: Team members can understand and merge changes more easily
- **Clean history**: Maintains a clear and organized project history

## How to Apply This Principle
1. **Small, focused changes**: Each commit should address one specific issue or feature
2. **Frequent commits**: Commit early and often as you make progress
3. **Descriptive messages**: Write clear commit messages that explain the change
4. **Test before commit**: Ensure each commit passes all relevant tests
5. **Single responsibility**: Each commit should have one clear purpose

## Example Workflow
```
1. Make a small change (atomic work)
2. git add <changed-files>
3. git commit -m "Describe the specific change made"
4. git push origin <current-branch>
5. Repeat for next atomic task
```

## Project Directory Structure
- **linkedin-posts/**: All LinkedIn posts will be saved in this directory with numbering prefix (e.g., 001-post-title.md, 002-another-post.md)
- **graphic-design/**: Graphic designing related work and images with numbering prefix (e.g., 001-design-name.png, 002-another-design.jpg)
- **frontend-design/**: Frontend designing related tasks within subfolders of each tasks with numbering prefix (e.g., 001-component-name/, 002-another-component/)
- **prompt-engineering/**: JSON formatted prompts with numbering prefix (.json files, e.g., 001-prompt-name.json, 002-another-prompt.json)
- **ui-ux-feedback/**: UI/UX feedback and reviews in Markdown format with numbering prefix (.md files, e.g., 001-feedback.md, 002-review.md)

## File Naming Convention
- Use 3-digit numbering prefix (001, 002, 003, etc.) for all files in project directories
- Format: `NNN-identifier.extension` where NNN is the number (starting from 001)
- For frontend-design subfolders, use format: `001-component-name/`, `002-layout-name/`, etc.
- This ensures chronological organization and easy tracking of work progression

## Best Practices
- Keep commits under 50 lines when possible
- Group related changes together
- Separate formatting changes from functional changes
- Use present tense in commit messages ("Add feature" not "Added feature")
- Follow conventional commit format when applicable