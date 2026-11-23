# Agent notes

## Environment quirks
- Session may start on detached HEAD at `main`; create a `claude/…` branch first.
- No CI or tests in the repo. Validate with `python3 -m json.tool data/<lang>/jsonresume.json`.

## Gotchas
- `data/en` and `data/no` are parallel; project order and indexes match. Other sessions edit the same files, so use exact-string replacement, not a JSON re-dump (keeps formatting and line endings).
- Issue line numbers refer to `data/no/jsonresume.json` at an older commit; locate by project name.

## Owner decisions
- None recorded yet.

## Open threads
- #48: project outcomes and Strategy endDate need owner input (see Agentstatus #50).
