PROMPT_COMMAND='__posh_git_ps1 "\u@\h :\w" "\\\$ "; '$PROMPT_COMMAND

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

eval "$(rbenv init -)"

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PATH="/usr/local/sbin:$PATH:$HOME/.node/bin:$HOME/Library/Android/sdk/build-tools/24.0.1:$HOME/Library/Android/sdk/platform-tools:/Users/naavinnetccentric/anaconda/bin"

alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gsgb='grunt sass && grunt build'
alias sourcetree='open -a SourceTree'
