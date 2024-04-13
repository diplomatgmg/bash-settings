plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
npm
node
colorize
sudo
copyfile
web-search
you-should-use
)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
