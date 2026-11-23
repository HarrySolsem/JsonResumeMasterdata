# Agent notes

## Environment quirks
- Session may start on detached HEAD at `main`; create a `claude/…` branch before committing.

## Gotchas
- `data/en` and `data/no` `jsonresume.json` are line-aligned; issue line numbers usually match in both. Edit with `sed -i '<line>s/…/…/'` to avoid reformatting.
- Validate with `python3 -m json.tool <file> >/dev/null`. No CI or tests in repo.

## Owner decisions
- #45: certificate name is «Certified Scrum Product Owner (CSPO)» in both languages (issuer left as «Agile Lean House»).

## Open threads
- nothing
