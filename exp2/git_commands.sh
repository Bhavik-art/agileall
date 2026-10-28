#!/usr/bin/env bash
# Experiment 2 — basic Git version-control operations
# Run commands step-by-step in Git Bash. Replace example identity and remote URL.

git --version

# Configure your own commit identity:
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global --list

# Initialize a repository:
mkdir git-version-control-lab
cd git-version-control-lab
git init -b main

# Create and commit a file:
echo "# Git Version Control Lab" > README.md
echo "This repository demonstrates basic Git operations." >> README.md
git status
git add README.md
git commit -m "Initial commit: add README"
git log --oneline

# Modify and inspect:
echo "Git records changes over time." >> README.md
git diff
git add README.md
git diff --staged
git commit -m "Update README with Git information"

# Create a feature branch and commit a change:
git switch -c feature/lab-notes
echo "Branch practice completed." >> README.md
git add README.md
git commit -m "Add branch practice note"
git branch
git switch main

# Add your GitHub repository as remote (replace URL):
git remote add origin https://github.com/YOUR-USERNAME/git-version-control-lab.git
git remote -v
git push -u origin main

# After making and committing a change on main:
git push
git status
