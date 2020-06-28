This repository is used by [Le Wagon](https://www.lewagon.com) students during our 9-week [coding bootcamp](https://www.lewagon.com).

## Toolset

- [oh-my-zsh](http://ohmyz.sh/)
- [Sublime Text](https://www.sublimetext.com/)
- [git](https://git-scm.com/)
- Ruby via [`rbenv`](https://github.com/rbenv/rbenv)


## Hack MacOSX Default Settings
#### Login Screen
**Show System Info at the Login Screen:**
```
  sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
```

#### System Default Configs
**Disable creation of Metadata Files on Network Volumes (avoids creation of .DS_Store and AppleDouble files.)**
```
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

**Add a message to the login screen:**
```
  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"
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

**Trackpad scaling factor (Used for 1080p + resolutions)**
```
  defaults write com.apple.trackpad.scaling -float 10
```
