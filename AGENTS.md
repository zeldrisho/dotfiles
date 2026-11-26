# Repository Guidelines

## Repository Structure

This is a chezmoi source repository, not an application. `private_dot_config/` manages application settings and themes under `~/.config/`; `private_dot_pi/` manages pi settings, and `private_Library/` holds macOS Sublime Text preferences. Root templates manage `~/.Brewfile` and `~/.gitconfig`. Root `run_once_*` and `run_onchange_*` templates handle setup and package or configuration synchronization. Fedora WSL is the supported bootstrap environment; macOS and Windows are sync targets only.

## Development and Validation

- `chezmoi add ~/.config/example/config` imports a file into the source tree.
- `chezmoi cat ~/.config/fish/config.fish` shows a rendered target for the current machine.
- `chezmoi diff` previews changes; `chezmoi apply --dry-run --verbose` previews an apply without changing the home directory. Review both before running `chezmoi apply`, which can install packages or copy Windows settings.
- There is no build step, automated test suite, or coverage requirement. For script changes, syntax-check the rendered result with `sh -n` or `fish -n`, matching the script's interpreter. Check relevant platform branches on their target environments and note any you could not verify.

## Style and Configuration

Use chezmoi's `dot_` prefix for hidden paths, `private_` for restricted permissions, and `.tmpl` for rendered files. Match surrounding indentation and syntax. Use `run_once_` for one-time setup and `run_onchange_` for scripts that should rerun when their rendered content changes. Use chezmoi variables for user and platform values rather than hardcoding machine-specific paths.

Keep credentials, signing material, and local overrides out of Git. Keep `AGENTS.md`, `README.md`, and `LICENSE` excluded from application via `.chezmoiignore`. Before `chezmoi update`, check `chezmoi status` and reconcile local changes you want to keep.

## Commits and Pull Requests

Write short subjects that describe the change. Recent history uses prefixes such as `chore(fish):`, but Conventional Commits are not required. In pull requests, explain the motivation, identify affected platforms, and summarize validation. Link related issues when applicable and include screenshots for visible theme or UI changes when useful.
