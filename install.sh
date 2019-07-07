#!/bin/zsh

INSTALL_DIR=~/dotfiles

promptClean() {
  read -k 1 "answer?Are you sure to remove dotfiles ?"
  if ! [[ "$answer" =~ [yY] ]]; then
     exit 0
  fi
  echo "test"
}

cleanInstall() {
  echo "Removing current dotfiles"
  rm -rf $INSTALL_DIR
  echo "Current dotfiles removed"
}

promptClean
#cleanInstall
# download and execute this script
# stow conf directories
# ? add to .zshrc
