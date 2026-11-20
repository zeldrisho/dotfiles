# Homebrew (macOS and Linux/WSL)
if test (uname) = Darwin
    eval (/opt/homebrew/bin/brew shellenv fish)
else if type -q brew
    eval (brew shellenv fish)
end

set -g fish_greeting ""
set -gx EDITOR micro
set -gx MICRO_TRUECOLOR 1
if test (uname) = Darwin
    set -gx ANDROID_HOME "$HOME/Library/Android/sdk"
end

zoxide init fish | source

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd < "$tmp"; and test "$cwd" != "$PWD"; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    command rm -f -- "$tmp"
end
