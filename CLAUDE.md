# Mimi-AnythingGoes — Capture Rules

## Config

- **Timezone**: America/Toronto

## Goal

Capture user inputs into clean markdown files, then commit and push.

## Capture flow

When user sends content to save:

1. Determine date `YYYY-MM-DD`
2. Determine short topic slug
3. Create file: `notes/YYYY-MM-DD_topic-slug.md`
4. Use format:

```markdown
---
date: YYYY-MM-DD
created: "HH:MM"
summary: 1-2 sentence summary
---

# Title

<content>
```

## Rules

- Preserve original wording and language
- One topic per file (unless clearly same topic)
- For links: include URL + short relevance note
- For images: extract meaningful text/content to markdown
- Keep markdown simple and readable
- Every note must include a section: `## Bubble 的洞察` with 3-5 practical insights
- After each push, send the user a concise insights summary in chat (not just file/commit status)

## Explorations

When user asks for synthesis/patterns, create:

- `explorations/YYYY-MM-DD_topic-slug.md`

Format:

```markdown
# <Topic>

**Date**: YYYY-MM-DD
**Source**: notes from YYYY-MM-DD to YYYY-MM-DD
**Lens**: <analysis perspective>

---

<insights and synthesis>
```

## Git

After successful capture/update, always sync:

1. `./capture.sh "note: ..."` or `"explore: ..."`

If doing manual git, still require:

1. `git add <changed files>`
2. `git commit -m "note: ..."` or `"explore: ..."`
3. `git push`
