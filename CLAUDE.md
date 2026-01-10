# Git Atomic Commit Principle

## Core Principle
Apply the atomic commit principle: `git add`, `commit`, and `push` for every atomic work and small task.

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

## Best Practices
- Keep commits under 50 lines when possible
- Group related changes together
- Separate formatting changes from functional changes
- Use present tense in commit messages ("Add feature" not "Added feature")
- Follow conventional commit format when applicable