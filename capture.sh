#!/bin/bash
set -euo pipefail

BATCH=0
if [[ "${1:-}" == "--batch" ]]; then
  BATCH=1
  shift
fi

MSG="${1:-note: capture update}"

# Stage core content + governance files
if [ -d notes ] || [ -d explorations ]; then
  git add notes explorations CLAUDE.md README.md PLAYBOOK.md templates 2>/dev/null || true
else
  git add .
fi

validate_file() {
  local f="$1"

  if [[ "$f" == notes/*.md ]]; then
    grep -q '^---$' "$f" || { echo "❌ $f 缺少 frontmatter"; return 1; }
    grep -q '^date:' "$f" || { echo "❌ $f 缺少 date"; return 1; }
    grep -q '^created:' "$f" || { echo "❌ $f 缺少 created"; return 1; }
    grep -q '^summary:' "$f" || { echo "❌ $f 缺少 summary"; return 1; }
    grep -q '^## Bubble 的洞察' "$f" || { echo "❌ $f 缺少 '## Bubble 的洞察'"; return 1; }
  fi

  if [[ "$f" == explorations/*.md ]]; then
    grep -q '^## Bubble 的洞察' "$f" || { echo "❌ $f 缺少 '## Bubble 的洞察'"; return 1; }
  fi

  return 0
}

# Validate staged markdown before commit
FAILED=0
while IFS= read -r f; do
  [ -f "$f" ] || continue
  validate_file "$f" || FAILED=1
done < <(git diff --cached --name-only --diff-filter=ACM | grep -E '^(notes|explorations)/.*\.md$' || true)

if [ "$FAILED" -ne 0 ]; then
  echo "\n⛔ 校验失败：请修复以上问题后重试 ./capture.sh"
  exit 1
fi

# Commit only when there are staged changes
if git diff --cached --quiet; then
  echo "No changes to commit"
else
  git commit -m "$MSG"
fi

if [ "$BATCH" -eq 1 ]; then
  echo "Done: committed locally (batched, not pushed)"
  exit 0
fi

# Immediate push mode
git push

echo "Done: synced to remote"