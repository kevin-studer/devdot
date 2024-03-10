#!/bin/bash

echo "=> Installing my dotfiles"

if [ ! -f "/etc/debian_version" ]; then
  echo "   Only works on debian based machines"
	exit 1
fi

if [ ! -x "$(command -v hx)" ]; then
  echo "   Installing editor"
  sudo add-apt-repository -y ppa:maveonair/helix-editor
  sudo apt update
  sudo apt install -y helix 

fi

echo "=> Finished"

