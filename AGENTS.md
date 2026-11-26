# AGENTS.md

JSON Resume master data for Harry Solsem's CV. Shared agent rules: <https://github.com/Solsem-Consulting/Solsem-Consulting-Workflows/blob/main/docs/agent-regler.md> (read it with `curl -fsSL https://raw.githubusercontent.com/Solsem-Consulting/Solsem-Consulting-Workflows/main/docs/agent-regler.md`). This file adds repo rules; it cannot lift a "never" there.

## Layout
- `data/en/` and `data/no/`: each has `jsonresume.json` and `references.json`. Keep en and no in sync when an issue concerns both.
- `data/autogenerert.json`, `data/samples/`: not edited unless an issue says so.

## Rules
- Facts about the owner's CV (dates, outcomes, budgets, certificate status) not in the repo or the issue: ask the owner under `Needs owner`. Never guess.
- Change only what the issue covers. Other sessions edit the same files in parallel. No whole-file reformatting; prefer single-line edits or exact-string replacement.
- Validate before push: `python3 -m json.tool data/<lang>/jsonresume.json >/dev/null` (and `references.json` if touched). No CI or tests exist.
- Issue line numbers drift; locate by `grep -n`.
- Never merge, approve, tag or release. PR assigned to `HarrySolsem`, `Closes #N`, subscribe with `subscribe_pr_activity`.
- Status: one comment per finished or blocked task in `Agentstatus` (#50), English, compact telegram style, max 6 lines, with `Handoff`.
- Lessons for the next session go in `docs/agent-notes.md` (same PR as the work).
