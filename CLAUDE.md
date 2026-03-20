# Mimi-AnythingGoes — Capture Rules

## Config

- **Timezone**: America/Toronto

## Goal

Capture user inputs into clean markdown files, then commit and push.

Treat this repo as a holistic archive of Mimi's inner landscape (random thoughts, learnings, feelings, thoughts, ideals, aspirations), and extract cross-domain meaning over time.

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
- Merge notes only when same-topic confidence is high and specific evidence is explicit; otherwise keep separate and cross-link instead.
- For links: include URL + short relevance note
- For images: extract meaningful text/content to markdown
- Keep markdown simple and readable
- Follow `PLAYBOOK.md` for response style and insight priorities
- Prefer `templates/note.md` and `templates/exploration.md` when creating new files

## Token-Efficiency Defaults (Active)

### 2) Language policy (monolingual by default)
- Default: keep source language only (no CN/EN duplication).
- Only output bilingual when user explicitly asks (`+bilingual`).

### 3) Same-topic update policy
- If same-day + same-topic, update existing note instead of creating a new duplicate.
- Prefer append/section update over full rewrite.

### 4) Chat ack policy (short by default)
- Default user-facing ack format:
  - `Saved <file>|<sha>|pushed`
- Every commit must include one short Bubble insight line.
  - Format: `Insight: <one sentence>`
- Only include full Pattern/Blind spot/New idea when user asks (`+analysis` or `#save full`).

### 5) Git sync policy (batch by default)
- Default mode: `batch` (stage + local commit accumulation, deferred push).
- Flush triggers:
  - user sends `#save flush`, or
  - batch reaches 5 note updates, or
  - 30 minutes elapsed since last push.

### 7) Memory log policy (one-liner)
- Execution log entries must be one line:
  - `<time> | <file> | <commit> | pushed|batched`
- Avoid repeated narrative boilerplate in daily memory logs.

### 8) User command flags
- `#save lite` → minimal structure + short ack
- `#save full` → full structure + insights summary
- `#save bilingual` → bilingual output
- `#save analysis` → include Pattern/Blind spot/New idea
- `#save batch` → keep batched sync mode
- `#save flush` → immediate push of pending batched changes

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

Default mode is batched sync.

- Normal save:
  1. `./capture.sh --batch "note: ..."` (or `"explore: ..."`)
- Immediate push when needed:
  1. `./capture.sh "note: ..."` (or `"explore: ..."`)
- Flush pending batched changes:
  1. `./capture-flush.sh`

If doing manual git in batch mode:
1. `git add <changed files>`
2. `git commit -m "note: ..."` or `"explore: ..."`
3. Push only on flush trigger (`#save flush` / threshold / timer).
