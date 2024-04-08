#!/bin/bash

# Define variables
BRANCH_NAME="one"

# Check if the 'one' branch already exists
if git show-ref --quiet "refs/heads/$BRANCH_NAME"; then
    # If 'one' branch exists, delete it
    git branch -D "$BRANCH_NAME"
fi

# Check out a new branch named 'one' and switch to it
git checkout -b "$BRANCH_NAME"

# Stage changes (assuming all changes are in index.js)
git add index.js

# Commit changes
git commit -m "New changes"

# Push the new 'one' branch to the remote repository
git push origin "$BRANCH_NAME"
