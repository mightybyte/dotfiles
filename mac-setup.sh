#!/bin/sh

# macOS config steps
#
# whole disk encryption
# caps lock control
# increase keyboard repeat rate, reduce delay
# increase resolution
# trackpad tap to click
# Desktop & Screen Saver - hot corners
# Security & Privacy - Require password 5 seconds after screen saver begins
# Accessibility - Zoom with scroll gesture and modifier keys

ssh-keygen -b 4096 -t rsa

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/mightybyte/dotfiles.git
cp dotfiles/.* .
brew install tmux
brew install vim

# Spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus

# MenuMeters
# http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_1.9.2.zip
