#!/bin/bash

set -e

echo "=> Installing the dotfiles"

if [ ! -d ~/.config ]; then
  mkdir ~/.config
fi

if [ ! -d ~/.config/helix ]; then
  mkdir ~/.config/helix
fi

stow -d . -t ~/.config/helix helix
