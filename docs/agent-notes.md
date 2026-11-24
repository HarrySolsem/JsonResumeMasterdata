# Agent notes

## Environment quirks
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
- nothing
