###### MacOS essentials
# Remove dock items
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
killall Dock

# Enable tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

###### Software essentials
# Xcode CLI
xcode-select --install

# Package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install


# Update Homebrew, formulae, and packages
brew update
brew upgrade

# Tapping
apps=(
  # Version control
  git
  git-lfs
  # ruby
  gmp
  rbenv
  ruby-build
  # NTFS
  homebrew/fuse/ntfs-3g
  # node.js
  node
  # Python
  pyenv
  # GIF
  gifsicle
  # Encoder
  ffmpeg
  mplayer
  # PHP
  homebrew/php/composer
  # Image Manipulation
  imagemagick
  ghostscript
  # Javascript
  yarn
)
brew install "${apps}"

# Tapping via Cask
apps=(
  # Creative Tools
  sketch
  figma
  origami-studio
  visual-studio-code
  adobe-creative-cloud
  notion
  # Client
  sourcetree
  now
  # Plugins
  craftmanager
  # Install Java
  java
  # Xcode
  alcatraz
  # Communication
  slack
  telegram
  tweet-tray
  # Utilities
  hyper
  1password
  backblaze
  dropbox
  bartender
  cheatsheet
  google-chrome
  sync
  toggl
  the-unarchiver
  toggl
  vlc
  zoomus
)
brew cask install "${apps}"

# Open installations that must be completed by user
# ACC
open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'
