# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

The canonical source directory is chezmoi's default location:

```text
~/.local/share/chezmoi
```

## Usage

```sh
# Add a file to chezmoi
chezmoi add ~/.config/example/config

# Preview changes
chezmoi diff

# Apply changes
chezmoi apply

# Enter the source repository
chezmoi cd
```

Bootstrap is supported from Fedora WSL. Initialize there and review the result before applying:

```sh
chezmoi init https://github.com/zeldrisho/dotfiles.git
chezmoi diff
chezmoi apply
```

Windows and macOS are sync targets, not bootstrap targets.

## License

[MIT](LICENSE)
