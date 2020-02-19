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
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export ANDROID_SDK_ROOT=/Users/$USER/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$PATH

#adb logcat *:E
#ngrok http 3000 -region ap
#mongodump --host="localhost:27017" -o dump
#mongorestore dump/
#watchman watch-del-all && rm -rf $TMPDIR/react-native-packager-cache-* && rm $TMPDIR/metro-bundler-cache-*
#react-native init MyApp --version 0.61.0

export PATH=`pwd`/flutter/bin:$PATH
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export LC_ALL=en_GB.UTF-8

alias android-emulator='emulator -avd Nexus_6P_API_27'
alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'
alias gsgb='grunt sass && grunt build'
alias sourcetree='open -a SourceTree'
alias ip="printf 'ip ' && curl whatismyip.akamai.com && ifconfig en0 inet | grep 'inet '"
alias python-server="python -m SimpleHTTPServer 8000"
alias cwp="cd ~/Codes/redemption-app-v2"
alias rn-clear="watchman watch-del-all && rm -rf $TMPDIR/react-native-packager-cache-* && rm $TMPDIR/metro-bundler-cache-*"
