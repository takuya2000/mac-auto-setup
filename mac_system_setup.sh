
# ダウンロードしたすべてのアプリケーションの実行を許可
sudo spctl --master-disable
# デフォルトシェルの変更
chsh -s /bin/bash
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

# ========== Disable Sound on Boot ==========
sudo nvram SystemAudioVolume=" "

# spotlight 無効化
# sudo mdutil -a -i off

#!/bin/bashdefaults write com.apple.screencapture type jpeg
# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false    

# ダウンロードしたファイルを初めて開く際に表示される警告ダイアログを無効
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Wipe all app icons from the Dock （Dock に標準で入っている全てのアプリを消す、Finder とごみ箱は消えない）
defaults write com.apple.dock persistent-apps -array
# Automatically hide or show the Dock （Dock を自動的に隠す）
defaults write com.apple.dock autohide -bool true
# Dockが表示されるまでの待ち時間を無効
defaults write com.apple.dock autohide-delay -float 0
# Dockを自動で隠すまでの待ち時間無効
defaults write com.apple.dock autohide-time-modifier -float 0.1
# Set the icon size （アイコンサイズの設定）
defaults write com.apple.dock tilesize -int 45

# フルパス表示に変更する
$ defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# ステータスバーを表示
$ defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
$ defaults write com.apple.finder ShowPathbar -bool true


# Spotlight検索を表示を無効化
# defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "<dict><key>enabled</key><false/><key>value</key><dict><key>parameters</key><array><integer>65535</integer><integer>49</integer><integer>1048576</integer></array><key>type</key><string>standard</string></dict></dict>"

# コントロール間のフォーカス移動をキーボードで操作をONにする
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2


# DS_Storeファイルの作成を抑制する
defaults write com.apple.desktopservices DSDontWriteNetworkStores true


# 動きを高速化
defaults write -g com.apple.trackpad.scaling 3 && \
defaults write -g com.apple.mouse.scaling 1.5 && \
defaults write -g KeyRepeat -int 1 && \
defaults write -g InitialKeyRepeat -int 10

## TrackPad設定 ##
# タップしたときクリック
defaults write -g com.apple.mouse.tapBehavior -int 1
# ４本指でアプリケーション間をスワイプ
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
# アプリケーションExpose無効
defaults write com.apple.dock showAppExposeGestureEnabled -bool false

# 透明度を下げる
defaults write com.apple.Accessibility EnhancedBackgroundContrastEnabled -int 1
defaults write com.apple.universalaccess reduceTransparency -int 1

# コントロール間の操作をキーボード操作
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# ========== Show Accessibility Shortcuts in menu bar ==========
defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist AccessibilityShortcuts -int 2

## 一度再起動
killall cfprefsd
killall Finder
killall Dock

echo ""-------defaultコマンド完了----再起動しますか？-----""
sudo shutdown -r now

#
# mac-auto-setup.git
#
#echo " ---- mac-auto-setup.git -----"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/takuya2000/mac-auto-setup/master/app.sh)"

# git clone https://github.com/takuya2000/mac-auto-setup.git
#echo " ------------ END ------------"
