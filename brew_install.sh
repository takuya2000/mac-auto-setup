#!/bin/bash
cat << EOS

 AkkeyLab

 The elapsed time does not matter.
 Because speed is important.

EOS

#
# Install web apps.
#
echo " ----- Install web apps ------"
brew install --cask flux
# brew install --cask java
brew install --cask karabiner-elements
brew install --cask bettertouchtool
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask mpv
brew install --cask iina
#brew install --cask atom
brew install --cask alt-tab
#brew install --cask macmediakeyforwarder
brew install --cask alfred
brew install --cask makemkv
brew install --cask selfcontrol
brew install --cask zoom
brew install --cask slack
brew install --cask blackhole-2ch


#brew install mysql
#brew install tmux
#brew install the_silver_searcher
#brew install --cask shifty
#brew install --cask chromedriver
#brew install --cask cheatsheet
#brew install --cask cyberduck
#brew install --cask docker
#brew install --cask dropbox
#brew install --cask duet
#brew install --cask eclipse-java
#brew install --cask firefox
#brew install --cask genymotion
#brew install --cask postman
#brew install --cask fluid
#brew install --cask skitch

brew install mas
mas install 539883307  # Line
mas install 1142151959 # Just Focus
mas install 439654198  # SimpleMind
mas install 1292198261 # iMazing HEIC Converter

brew install ffmpeg
brew install cliclick
brew install streamlink
brew install youtube-dl
