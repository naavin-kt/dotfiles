PROMPT_COMMAND="__posh_git_ps1 '\u@\h :\w' '\\\$ '; "$PROMPT_COMMAND

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export ANDROID_SDK_ROOT=/Users/$USER/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$PATH

export LC_ALL=en_GB.UTF-8
export BASH_SILENCE_DEPRECATION_WARNING=1

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

alias android-emulator="emulator -avd Pixel_5_API_30"
alias android-clean="./gradlew cleanBuildCache && ./gradlew clean"
alias android-build="./gradlew assembleDebug"
alias android-release="./gradlew bundleRelease && ./gradlew assembleRelease"
alias bp="cat ~/.bash_profile"
alias cwp="cd ~/Codes/"
alias cwb="cd ~/Codes/"
alias flushdns="sudo killall -HUP mDNSResponder; sudo killall mDNSResponderHelper; sudo dscacheutil -flushcache"
alias gc="git checkout"
alias gs="git status"
alias gd="git diff"
alias gl="git log --pretty=oneline --abbrev-commit"
alias gp="git pull"
alias gp-all='for d in */; { echo "$d"; cd $d; git pull; cd ..; }'
alias gp-code='cd ~/Codes && for d in */; { echo "$d"; cd $d; git fetch --tags --prune origin && git pull; cd ..; }'
alias ios-clean="xcodebuild -workspace MyApp.xcworkspace -configuration Debug -scheme MyApp clean"
alias ios-build="cd ios/ && fastlane beta"
alias ios-release="cd ios/ && fastlane release"
alias ip="printf 'ip ' && curl whatismyip.akamai.com && ifconfig | grep 'inet 192'"
alias python-server="python -m SimpleHTTPServer 8000"
alias python3-server="python3 -m http.server 8000"
alias rn-clear="watchman watch-del-all && rm -rfv $TMPDIR/react-* && rm -rfv $TMPDIR/react-native-packager-cache-* && rm -rfv $TMPDIR/metro-bundler-cache-*"
alias sourcetree="open -a SourceTree"
alias sd="printf '\e]1337;SetProfile=Dark\007'"
alias sl="printf '\e]1337;SetProfile=Default\007'"

# adb logcat *:E
# adb install android/app/build/outputs/apk/release/app-release.apk
# alias ios-clean="cd ios && pod install --repo-update && fastlane clean"
# code --list-extensions > extensions.list
# fastlane snapshot reset_simulators
# keytool -importcert -file upload_cert.der -keystore myapp-release-key.keystore
# keytool -v -list -keystore myapp-release-key.keystore
# keytool -printcert -jarfile android/app/build/outputs/apk/release/app-release.apk
# mongodump --host="localhost:27017" -o dump
# mongorestore dump/
# ngrok http 3000 -region ap
# npm list -g --depth=0
# nvm install lts/fermium --reinstall-packages-from=14.19.3
# react-native init MyApp --version 0.67.0
# react-native run-ios --simulator="iPhone 12 Pro Max"
# xcodebuild -workspace MyApp.xcworkspace -configuration Debug -scheme MyApp clean"
# xcrun simctl list | grep 'Booted'
# xcrun simctl delete unavailable

# export PATH=`pwd`/flutter/bin:$PATH
# export PATH="/usr/local/opt/binutils/bin:$PATH"
# export PATH="$HOME/.fastlane/bin:$PATH"

# export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
