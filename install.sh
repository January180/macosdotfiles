#!/bin/zsh

# installing xcode cli tools
echo "installing cli tools :3"
xcode-select --install
echo "done installing cli tools, moving to installing homebrew."

# homebrew 
echo "installing homebrew x3"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/incirlik/.zprofile
echo 'eval "$/opt/homebrew/bin/brew shellenv)"' >> /Users/incirlik/.zprofile
eval "$/opt/homebrew/bin/brew shellenv"
echo "done installing homebrew, moving to taps."

# brew taps
echo "installing homebrew taps >_<"
brew tap homebrew/cask-fonts
brew tap FelixKratz/formulae
brew tap koekeishiya/formulae
echo "done installing taps, moving to installing needed software."

# install shit
echo "installing the shit you need :3"
brew install powerlevel9k
brew install node
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install neovim
brew install neofetch
brew install ncurses
brew install rust
brew install sketchybar
brew install yabai
brew install sf-symbols
brew install switchaudio-osx
brew install bottom
brew install termshark
brew install skhd
brew install coreutils
brew install jq
brew install gh
brew install wget
echo "done installing shit, moving to casks."
# ^^ more to come

# installing casks
echo "installing casks UwU"
brew install --cask alacritty
brew install --cask spotify
brew install --cask font-hack-nerd-font
brew install --cask font-space-mono-nerd-font
brew install --cask iina
echo "done installing brew casks, moving to changing default settings."

# ^^ more to come

# changing mac settings
echo "changing macos defaults"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.spaces spans-displays -bool false
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock "mru-spaces" -bool "false"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain _HIHideMenuBar -bool true
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.Finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder ShowStatusBar -bool false
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool YES
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
echo "done changing default macos settings, moving to copying config files."

# copying config
echo "copying configsssss :3"
git clone https://github.com/January180/macosdotfiles.git
cp -r macosdotfiles/.zshrc ~/
cp -r macosdotfiles/.yabairc ~/ 
cp -r macosdotfiles/.hushlogin ~/
cp -r macosdotfiles/.config ~/
echo "cleaning up. . ."
rm -r macosdotfiles
echo "done cleaning up, moving to starting processes."
# starting proccesses
echo "starting proccesses"

brew services start skhd
brew services start yabai
brew services start sketchybar
echo "done starting procceses."

#warning 
echo "installation is done, run nvim to install your config and restart you silly goose!"

