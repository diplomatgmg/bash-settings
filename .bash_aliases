alias pvenv="python3 -m venv venv && source venv/bin/activate"
alias .pvenv="python3 -m venv .venv && source .venv/bin/activate"

alias la='ls -A'
alias ls='ls -CF --color=tty'

alias cat=highlight

alias off='shutdown now'
alias ..='cd ..'
alias ...='cd ../..'
mkcd() {
    mkdir -pv "$@" && cd "$@"
}
alias c=clear

alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gl='git log --oneline --decorate --graph'

alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt clean'

alias cleardocker='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias clearram='sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"'
