# Source Prezto.
if [[ -s $HOME/.zprezto/init.zsh ]]; then
  source $HOME/.zprezto/init.zsh
fi

brew-load() {
  if [[ -f ~/Library/LaunchAgents/homebrew.mxcl.$1.plist ]] then
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.$1.plist
  elif [[ -f /Library/LaunchDaemons/homebrew.mxcl.$1.plist ]]; then
    launchctl load /Library/LaunchDaemons/homebrew.mxcl.$1.plist
  else
    echo "Could not locate LaunchAgent or LaunchDaemon '$1'"
  fi
}

brew-unload() {
  if [[ -f ~/Library/LaunchAgents/homebrew.mxcl.$1.plist ]] then
    launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.$1.plist
  elif [[ -f /Library/LaunchDaemons/homebrew.mxcl.$1.plist ]]; then
    launchctl unload /Library/LaunchDaemons/homebrew.mxcl.$1.plist
  else
    echo "Could not locate LaunchAgent or LaunchDaemon '$1'"
  fi
}

brew-reload() {
  if [[ -f ~/Library/LaunchAgents/homebrew.mxcl.$1.plist ]] then
    launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.$1.plist
    launchctl load ~/Library/LaunchAgents/homebrew.mxcl.$1.plist
  elif [[ -f /Library/LaunchDaemons/homebrew.mxcl.$1.plist ]]; then
    launchctl unload /Library/LaunchDaemons/homebrew.mxcl.$1.plist
    launchctl load /Library/LaunchDaemons/homebrew.mxcl.$1.plist
  else
    echo "Could not locate LaunchAgent or LaunchDaemon '$1'"
  fi
}

goproj() {
  if [[ -d $GOPATH/src/github.com/$(whoami)/$1 ]] then
    cd $GOPATH/src/github.com/$(whoami)/$1
  else
    echo "Could not locate Project '$1' in GOPATH=$GOPATH"
  fi
}
