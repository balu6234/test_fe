#!/bin/bash



# Get current branch name dynamically
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Default commit message
COMMIT_MSG="Auto commit by script $CURRENT_BRANCH "

# Add all changes
git add .

# Commit with default message
git commit -m "$COMMIT_MSG"

# Push to the current branch
git push origin "$CURRENT_BRANCH"
