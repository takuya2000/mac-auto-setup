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
brew cask install bettertouchtool
brew cask install karabiner-elements
brew cask install google-chrome
brew cask install flux
brew cask install iterm2

brew install youtube-dl
brew install mpv --with-bundle
brew cask install atom
brew cask install hyperswitch
brew cask install macmediakeyforwarder

#brew install mysql
#brew cask install shifty
#brew cask install chromedriver

#brew cask install cheatsheet
#brew cask install cyberduck
#brew cask install docker
#brew cask install dropbox
#brew cask install duet
#brew cask install eclipse-java
#brew cask install firefox
#brew cask install genymotion

#brew cask install postman

#brew install tmux
#brew install the_silver_searcher
brew cask install fluid
brew cask install skitch
brew cask install alfred


brew install mas
mas install 539883307

brew cask install java
