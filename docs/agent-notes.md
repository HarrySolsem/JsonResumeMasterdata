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

## Open threads
- Skill levels differ between en and no (groups 0, 3, 9: en Advanced, no Ekspert/Ekspert/Middels). Not changed; owner to confirm which is right.
- Other possibly obsolete items kept: Windows SharePoint Services, Visual C++, ANSI C, Sybase SQL Anywhere, VBA.
