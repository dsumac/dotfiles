#!/bin/bash

printCleanInstallPrompt() {
  read -k 1 "answer?Are you sure to remove your dotfiles ?"
  if [[ "$answer" =~ [yY] ]]; then
     return 0
  fi
  return 1
}

cleanInstall() {
  # TODO: verify path / use $DOTFILES env var
  INSTALL_DIR=~/dotfiles
  
  echo -e "\n\nRemoving current dotfiles ..."
  #rm -rf $INSTALL_DIR
  echo "Current dotfiles removed"
}

main() {
  printCleanInstallPrompt
  printCleanReturnCode=$?

  if [ $printCleanReturnCode = 0 ]; then
    cleanInstall
  else
    echo -e "\n Clean installation aborted !"
  fi
}

main

# cleanInstall
# download and execute this script
# check prerequites: zsh / stow
# check probably wanted soft
# stow conf directories
# ? add to .zshrc
