#!/bin/bash
set -euo pipefail

# Push current branch (safe when nothing new)
git push

echo "Done: flushed batched commits to remote"