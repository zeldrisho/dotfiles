# Agent Instructions

## Toolchain

- Use chezmoi for managing files in this repository.
- Use `fd` for file discovery and search.

## Commands

| Task | Command |
| --- | --- |
| Show pending changes | `git status --short` |
| Preview rendered changes | `chezmoi diff` |
| Preview an apply | `chezmoi apply --dry-run` |
| Inspect a rendered file | `chezmoi cat <target>` |
| Apply changes | `chezmoi apply` |
| Refresh global Brewfile | `brew bundle dump --global --force` |

## Rules

- Before implementing changes, research the relevant official documentation at `site:chezmoi.io`, `site:docs.brew.sh`, and `site:fishshell.com/docs`.
- Use Conventional Commits.
- Use chezmoi naming conventions: `dot_` for hidden files and `private_` for private paths.
- Review `chezmoi diff` before applying changes.
- Never commit secrets, tokens, credentials, or machine-specific private data.
- Keep `AGENTS.md`, `README.md`, and `LICENSE` source-only; they are excluded from chezmoi application.

## References

| Need | File |
| --- | --- |
| Project usage | `README.md` |
| Chezmoi documentation | `https://www.chezmoi.io/` |
