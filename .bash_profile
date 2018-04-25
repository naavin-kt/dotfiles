export NVM_DIR="$HOME/.nvm" 
. "/usr/local/opt/nvm/nvm.sh"

PROMPT_COMMAND='__posh_git_ps1 "\u@\h :\w" "\\\$ "; '$PROMPT_COMMAND

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

eval "$(rbenv init -)"

export ANDROID_HOME="/Users/$USER/Library/Android/sdk"
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/tools

alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gsgb='grunt sass && grunt build'
alias sourcetree='open -a SourceTree'
alias ip="curl whatismyip.akamai.com && ifconfig en0 inet | grep 'inet '"
