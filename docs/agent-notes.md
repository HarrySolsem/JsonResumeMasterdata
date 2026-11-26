# Agent notes

## Environment quirks
- No CI or tests. Validate with `python3 -m json.tool data/<lang>/jsonresume.json`.
- Session may start on detached HEAD at `main`; create a `claude/…` branch before committing.
- `json.dumps(d, indent=2, ensure_ascii=False) + "\n"` round-trips both jsonresume.json files byte-identically, so scripted edits give minimal diffs. Exact-string replacement also works.

## Gotchas
- `data/en` and `data/no` are parallel and line-aligned; project order and skills arrays are index-aligned. Edit both together.
- Other sessions edit the same files in other sections: change only what the issue covers. Issue line numbers drift; locate by name or `grep -n`.
- Skills limits (#41-#43): max 10 keywords per group, each keyword in one group only, no obsolete tech (NetWare, Visual FoxPro, Windows NT Server, Fiddler removed).
- #40: the 5 remaining old unlevelled skill groups (not 6) were deleted, not merged: all 10 levelled groups already hold 10 keywords. Dropped with them: .NET, VBA, Visual C++, ANSI C, Windows SharePoint Services, Access, Oracle, Sybase; re-add via a new issue if wanted.

## Owner decisions
- Skill levels in `data/no` are Norwegian (Ekspert/Avansert/Middels); `data/en` stays English (#42).
- Skill levels (owner, chat): group 0 Advanced, group 3 Expert, group 9 Advanced, in both en and no.
- #45: certificate name is «Certified Scrum Product Owner (CSPO)» in both languages (issuer left as «Agile Lean House»).
- #48: only Nexus has ended; boligsosial and Strategi are ongoing (present tense). Boligsosial endDate removed. Nexus delivered on time, no deviations (owner, 2026-11-26).
- #49: Enebakk summary rewritten in present tense; no portfolio count/budget in summaries, since they change over time (owner, PR #52 thread).
- #8/#10: Riverty summary is now the owner's proposed ~350-char text (50 staff, 5 team leads, 15 direct reports); office-presence sentence removed. The numbers exist only in the summary/issue, not in highlights.
- #34/#35/#36: merged volunteer entries (sameie, STOFO, all 13 NITO-url entries incl. DNB/Sharecat/GlobalConnect groups) into one each, en+no. Sameie and STOFO have no endDate (current sameie / likeperson ongoing). STOFO board end 2026-11-15 (owner, #36 comment) is stated in summary text only. Volunteer now 10 entries; merged entry sits at the slot of its start date.

## Open threads
- nothing
