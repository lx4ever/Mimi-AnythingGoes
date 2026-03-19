#!/bin/bash
set -euo pipefail

MSG="${1:-note: capture update}"

# Stage core content
if [ -d notes ] || [ -d explorations ]; then
  git add notes explorations CLAUDE.md README.md 2>/dev/null || true
else
  git add .
fi

# Commit only when there are staged changes
if git diff --cached --quiet; then
  echo "No changes to commit"
else
  git commit -m "$MSG"
fi

# Always try push (safe even when no new commit)
git push

echo "Done: synced to remote"
