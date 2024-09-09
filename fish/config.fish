if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"

alias fzf "fzf --preview='cat {}'"
alias fdir "cd (fzf --preview='cat {}' --walker=dir)"

set -x PATH /Users/piperinnshall/Developer/scripts/* $PATH

set -x PATH /Users/piperinnshall/Developer/src/godot/bin $PATH
set -x PATH /Users/piperinnshall/Developer/src/aseprite/build/bin $PATH

set -x GPG_TTY (tty)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

