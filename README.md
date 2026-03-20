<div align="center">

# Mimi-AnythingGoes

**Capture anything. Keep it searchable. Own your notes.**

*Text, screenshots, links, ideas — all in Markdown + Git.*

</div>

---

## What this repo is

A lightweight, AI-friendly note system:
- quick capture from chat/CLI
- automatic organization into markdown files
- git history for every change
- easy future analysis across all notes

## Structure

```text
Mimi-AnythingGoes/
├── CLAUDE.md
├── notes/
│   └── YYYY-MM-DD_topic-slug.md
└── explorations/
    └── YYYY-MM-DD_theme.md
```

## Quick start

```bash
# in this repo
./setup.sh

# then capture with your assistant/CLI flow
```

## File format

```markdown
---
date: YYYY-MM-DD
created: "HH:MM"
summary: 1-2 sentence summary
---

# Title

Content...
```

## Commit message style

- `note: <brief summary>`
- `explore: <brief summary>`

## Token-efficient save modes

- Batched commit (no push): `./capture.sh --batch "note: ..."`
- Immediate push: `./capture.sh "note: ..."`
- Flush batched commits: `./capture-flush.sh`

Chat flags:
- `#save lite` (default short ack)
- `#save full`
- `#save bilingual`
- `#save analysis`
- `#save batch`
- `#save flush`

## Why this setup

- **Token-friendly**: plain markdown over heavy page JSON
- **Portable**: works in any editor
- **Searchable**: grep + GitHub search + AI
- **Durable**: your repo, your ownership
