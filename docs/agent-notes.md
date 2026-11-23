# Agent notes

## Environment quirks
- No AGENTS.md, CI or tests in the repo. Validate with `python3 -m json.tool <file>`.

## Gotchas
- Edit single lines only (the files are large and other sessions edit them in parallel). Line numbers in issues drift; locate by `grep -n`.
- Keep `data/en` and `data/no` in sync.

## Owner decisions
- #49: Enebakk summary rewritten in present tense; no portfolio count/budget in summaries, since they change over time (owner, PR #52 thread).

## Open threads
- nothing
