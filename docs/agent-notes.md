# Agent notes

## Environment quirks
- No CI or tests. Validate with `python3 -m json.tool data/<lang>/jsonresume.json`.
- `json.dumps(d, indent=2, ensure_ascii=False) + "\n"` round-trips both jsonresume.json files byte-identically, so scripted edits give minimal diffs.

## Gotchas
- `data/en` and `data/no` skills arrays are index-aligned (same groups, same keyword order). Edit both together.
- Skills limits (#41-#43): max 10 keywords per group, each keyword in one group only, no obsolete tech (NetWare, Visual FoxPro, Windows NT Server, Fiddler removed).
- Other sessions edit the same files in other sections: change only what the issue covers.

## Owner decisions
- Skill levels in `data/no` are Norwegian (Ekspert/Avansert/Middels); `data/en` stays English (#42).
- Skill levels (owner, chat): group 0 Advanced, group 3 Expert, group 9 Advanced, in both en and no.
- #48: only Nexus has ended; boligsosial and Strategi are ongoing (present tense). Boligsosial endDate removed (owner, 2026-11-26).

## Open threads
- Other possibly obsolete items kept: Windows SharePoint Services, Visual C++, ANSI C, Sybase SQL Anywhere, VBA.
- Session may start on detached HEAD at `main`; create a `claude/…` branch first.
- No CI or tests in the repo. Validate with `python3 -m json.tool data/<lang>/jsonresume.json`.

## Gotchas
- `data/en` and `data/no` are parallel; project order and indexes match. Other sessions edit the same files, so use exact-string replacement, not a JSON re-dump (keeps formatting and line endings).
- Issue line numbers refer to `data/no/jsonresume.json` at an older commit; locate by project name.

## Owner decisions
- #48: only Nexus is ended. Plan for boligsosial virksomhet and Strategi for tjenesteutvikling are still running (owner, 2026-11-26): keep present tense.
- #48: boligsosial endDate removed (project ongoing, owner 2026-11-26).

## Open threads
- #48: Nexus outcomes still needed from owner; do not guess.
- No AGENTS.md, CI or tests in the repo. Validate with `python3 -m json.tool <file>`.

## Gotchas
- Edit single lines only (the files are large and other sessions edit them in parallel). Line numbers in issues drift; locate by `grep -n`.
- Keep `data/en` and `data/no` in sync.

## Owner decisions
- #49: Enebakk summary rewritten in present tense; no portfolio count/budget in summaries, since they change over time (owner, PR #52 thread).
- Session may start on detached HEAD at `main`; create a `claude/…` branch before committing.

## Gotchas
- `data/en` and `data/no` `jsonresume.json` are line-aligned; issue line numbers usually match in both. Edit with `sed -i '<line>s/…/…/'` to avoid reformatting.
- Validate with `python3 -m json.tool <file> >/dev/null`. No CI or tests in repo.

## Owner decisions
- #45: certificate name is «Certified Scrum Product Owner (CSPO)» in both languages (issuer left as «Agile Lean House»).

## Open threads
- #48: Nexus outcomes needed from owner; do not guess.
