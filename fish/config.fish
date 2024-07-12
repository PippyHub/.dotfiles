if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias fzf "fzf --preview='cat {}'"
alias fdir "cd (fzf --preview='cat {}' --walker=dir)"

eval "$(/opt/homebrew/bin/brew shellenv)"
set -x PATH /Users/piperinnshall/Developer/src/godot/bin $PATH
set -x PATH /Users/piperinnshall/Developer/src/aseprite/build/bin $PATH
set -x PATH /Users/piperinnshall/Developer/src/sketchybar/bin $PATH
