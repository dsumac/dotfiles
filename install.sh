#!/bin/sh


cd ~/dotfiles

# using -t ~ because of if your dotfiles directory is a symlink, it will make the symlink in the symlink directory
stow vscode -t ~
