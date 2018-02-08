###### MacOS essentials
#Remove dock items
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others
killall Dock

#Enable tap to click
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
brew install "${apps[@]}"

# Tapping via Cask
apps=(
  # Creative Tools
  sketch
  figma
  origami-studio
  abstract
  atom
  adobe-creative-cloud
  fontbase
  notion
  # Client
  sourcetree
  now
  # Plugins
  craftmanager
  # Fuse
  osxfuse
  # Install Java8
  java
  # Xcode
  alcatraz
  # Communication
  slack
  # Utilities
  hyper
  1password
  backblaze
  dropbox
  bartender
  cheatsheet
  google-chrome
  sync
)
brew cask install "${apps[@]}"

# npms
apps=(
  # Web
  bower
  # Hyper
  hpm-cli
)
npm install -g "${apps[@]}"

# Open installations that must be completed by user
# ACC
open '/usr/local/Caskroom/adobe-creative-cloud/latest/Creative Cloud Installer.app'
