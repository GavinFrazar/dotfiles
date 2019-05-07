#!/usr/bin/env bash

which stow
if [[ $? -ne 0 ]]
then
    sudo dnf install stow
fi

stow bash
stow conda
stow doom
stow scripts
stow spacemacs
stow spc-themes
stow vim
stow zsh
