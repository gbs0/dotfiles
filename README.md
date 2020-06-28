This repository is used by [Le Wagon](https://www.lewagon.com) students during our 9-week [coding bootcamp](https://www.lewagon.com).

## Toolset

- [oh-my-zsh](http://ohmyz.sh/)
- [Sublime Text](https://www.sublimetext.com/)
- [git](https://git-scm.com/)
- Ruby via [`rbenv`](https://github.com/rbenv/rbenv)


## Hack MacOSX Default Settings
**Show System Info at the Login Screen**
```
  sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
```

**Always Show Hidden Files in the Finder:**
```
  defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder
```

**Remove the Auto-Hide Dock Delay**
```
  defaults write com.apple.Dock autohide-delay -float 0 && killall
  Dock
```

