if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias fdir "cd (fzf --preview='cat {}' --walker=dir)"
alias fzf "fzf --preview='cat {}'"

eval "$(/opt/homebrew/bin/brew shellenv)"
