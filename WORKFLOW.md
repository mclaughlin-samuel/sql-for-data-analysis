# My Git Workflow

How I save and publish my SQL practice. Repo: https://github.com/mclaughlin-samuel/sql-for-data-analysis

## Every time I write a new query

1. In DBeaver, write the query, then **File → Save As** (`⌘⇧S`) into the right topic folder,
   e.g. `queries/01-select/`. Use a lowercase, descriptive name like `basic-select.sql`.

2. In Terminal, from the project folder, run:

   ```bash
   git add -A && git commit -m "Add query: description here" && git push
   ```

## Handy commands

```bash
git status          # what's changed but not yet committed
git log --oneline   # commit history, one line each
```

## Notes

- Uses **PostgreSQL** — connect DBeaver to your PostgreSQL instance before running queries.
- Push over HTTPS using the `gh` login (account: `mclaughlin-samuel`).
- If `git push` asks to log in: `gh auth login` (GitHub.com → HTTPS → web browser).
