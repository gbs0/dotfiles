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

**Add a message to the login screen:**
```
  sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Your Message"
```

**Change login screen background:**
```
  sudo defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture "/Library/Desktop Pictures/Aqua Blue.jpg"
```

#### System Default Configs
**Disable creation of Metadata Files on Network Volumes (avoids creation of .DS_Store and AppleDouble files.)**
```
  defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
  defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
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

**Turn off the “Application Downloaded from Internet” quarantine warning:**
```
  defaults write com.apple.LaunchServices LSQuarantine -bool NO
```

**Global User Interface Scale Multiplier:**
```
  defaults write -g AppleDisplayScaleFactor -float
```

For more cli commands go to:
https://ss64.com/osx/syntax-defaults.html

And also, I highly recomend this book about all MACOSX settings:
https://books.google.com.br/books?id=2r7zCQAAQBAJ&pg=PT289#v=onepage&q&f=false
