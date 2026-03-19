#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

# Push only if ahead of remote
BRANCH=$(git rev-parse --abbrev-ref HEAD)
UPSTREAM="origin/$BRANCH"

git fetch origin "$BRANCH" --quiet || true

LOCAL=$(git rev-parse "$BRANCH")
REMOTE=$(git rev-parse "$UPSTREAM" 2>/dev/null || echo "")

if [ -z "$REMOTE" ]; then
  echo "No upstream yet; attempting initial push"
  git push -u origin "$BRANCH"
  exit 0
fi

if [ "$LOCAL" != "$REMOTE" ]; then
  git push
  echo "Pushed pending commits"
else
  echo "Already up to date"
fi
