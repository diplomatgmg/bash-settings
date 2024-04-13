alias code=pycharm-professional
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias s=yandex
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

alias update='sudo apt update && sudo apt upgrade'
alias cleanup='sudo apt autoremove && sudo apt clean'

alias dockerclear='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
