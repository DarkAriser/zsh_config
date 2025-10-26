#!/usr/bin/env bash

[[ -d ./kitty/ ]] || mkdir ./kitty/
[[ -d ./tmux/  ]] || mkdir ./tmux/
[[ -d ./brew/  ]] || mkdir ./brew/

cp ~/.zshrc                ./.zshrc
cp ~/.p10k.zsh             ./.p10k.zsh
cp ~/.config/kitty/*       ./kitty/
cp ~/.config/tmux/*.conf*  ./tmux/
cp ~/.config/tmux/.*.conf* ./tmux/
brew leaves      >         ./brew/brew_list
brew list --cask >         ./brew/brew_cask_list
