# Agent notes

## Environment quirks
- No CI or tests. Validate with `python3 -m json.tool data/<lang>/jsonresume.json`.
- Session may start on detached HEAD at `main`; create a `claude/…` branch before committing.
- `json.dumps(d, indent=2, ensure_ascii=False) + "\n"` round-trips both jsonresume.json files byte-identically, so scripted edits give minimal diffs. Exact-string replacement also works.

## Gotchas
- `data/en` and `data/no` are parallel and line-aligned; project order and skills arrays are index-aligned. Edit both together.
- Other sessions edit the same files in other sections: change only what the issue covers. Issue line numbers drift; locate by name or `grep -n`.
- Skills limits (#41-#43): max 10 keywords per group, each keyword in one group only, no obsolete tech (NetWare, Visual FoxPro, Windows NT Server, Fiddler removed).
- Other possibly obsolete items kept: Windows SharePoint Services, Visual C++, ANSI C, Sybase SQL Anywhere, VBA.

## Owner decisions
- Skill levels in `data/no` are Norwegian (Ekspert/Avansert/Middels); `data/en` stays English (#42).
- Skill levels (owner, chat): group 0 Advanced, group 3 Expert, group 9 Advanced, in both en and no.
- #45: certificate name is «Certified Scrum Product Owner (CSPO)» in both languages (issuer left as «Agile Lean House»).
- #48: only Nexus has ended; boligsosial and Strategi are ongoing (present tense). Boligsosial endDate removed. Nexus delivered on time, no deviations (owner, 2026-11-26).
- #49: Enebakk summary rewritten in present tense; no portfolio count/budget in summaries, since they change over time (owner, PR #52 thread).

## Open threads
- nothing
