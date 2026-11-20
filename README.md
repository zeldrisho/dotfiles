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

On a new machine, initialize from the remote repository and review the result before applying:

```sh
chezmoi init https://github.com/zeldrisho/dotfiles.git
chezmoi diff
chezmoi apply
```

## License

[MIT](LICENSE)
