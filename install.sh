#!/usr/bin/sh

INSTALL_DIR=~/dotfiles

cleanInstall() {
  echo "Removing current dotfiles dir"
  rm -rf $INSTALL_DIR
}

#cleanInstall
# download and execute this script
# stow conf directories
# ? add to .zshrc
