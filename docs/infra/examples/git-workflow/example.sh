#!/bin/bash
# Example Git workflow script for infrastructure changes

# Set up variables
BRANCH_NAME="infra/$(date +%Y-%m-%d)-$1"
COMMIT_MESSAGE="Infrastructure: $1"

# Create a new branch
echo "Creating branch: $BRANCH_NAME"
git checkout -b "$BRANCH_NAME"

# Make changes to infrastructure code
# ... your changes here ...

# Add changes to staging
git add .

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push to remote
git push -u origin "$BRANCH_NAME"

# Create pull request (requires GitHub CLI)
if command -v gh &> /dev/null; then
    echo "Creating pull request..."
    gh pr create --title "$COMMIT_MESSAGE" --body "This PR updates infrastructure with: $1"
else
    echo "GitHub CLI not installed. Please create a pull request manually."
    echo "Branch: $BRANCH_NAME"
fi

echo "Workflow complete!"
