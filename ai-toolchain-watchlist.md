# AI Toolchain Watchlist

Purpose: track AI tools/projects with a consistent evaluation lens so decisions are not hype-driven.

## Scoring Dimensions (1-5)

1. **Capability Maturity**
- 1: demo-level
- 3: usable for partial workflows
- 5: production-grade for repeated use

2. **Integration Cost**
- 1: high setup friction (complex deps, brittle config)
- 3: moderate setup, some docs gaps
- 5: plug-and-play or low-friction integration

3. **Reliability & Stability**
- 1: frequent breaks / unclear errors
- 3: mostly stable with occasional issues
- 5: consistent behavior + clear failure handling

4. **Evidence of Real Use**
- 1: mostly announcements
- 3: some independent usage reports
- 5: clear real-world cases + community validation

## Optional Meta Fields

- Last checked date
- Repo/activity signal (commits, issue response cadence)
- Security/privacy notes
- Best-fit scenarios
- Hard limitations / no-go boundaries

---

## Watchlist Entries

### capcut-mate v3.0.15
- Link: (add repo/release URL)
- Capability Maturity: 3/5
- Integration Cost: 3/5
- Reliability & Stability: 2/5 (to validate with real runs)
- Evidence of Real Use: 2/5 (needs independent case confirmation)
- Notes:
  - Strong on modular skill narrative and interface standardization.
  - Need deeper validation on failure paths, version compatibility, render consistency.

---

## Decision Rule

- **Track** if average >= 3.0
- **Pilot** if average >= 3.5 and reliability >= 3
- **Adopt** if average >= 4.0 with at least 2 real-world validated use cases

## Weekly Maintenance (5 min)

- Update top 3 watched tools
- Add one concrete proof point per tool (issue, demo, benchmark, real workflow)
- Downgrade score immediately if maintenance stalls or breakage repeats
