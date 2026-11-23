# Agent notes

## Environment quirks
- No AGENTS.md, CI or tests in the repo. Validate with `python3 -m json.tool <file>`.

## Gotchas
- Edit single lines only (the files are large and other sessions edit them in parallel). Line numbers in issues drift; locate by `grep -n`.
- Keep `data/en` and `data/no` in sync.

## Owner decisions
- #49: Enebakk summary rewritten in present tense; portfolio size/budget sentence left out until the owner supplies the numbers.

## Open threads
- #49: waiting for owner on portfolio project count and budget.
