#!/usr/bin/env bash

[[ -d ~/.config/kitty/ ]] || mkdir ~/.config/kitty/
[[ -d ~/.config/tmux/  ]] || mkdir ~/.config/tmux/

cp ./.zshrc        ~/.zshrc
cp ./.p10k.zsh     ~/.p10k.zsh
cp ./kitty/*       ~/.config/kitty/
cp ./tmux/*.conf*  ~/.config/tmux/
cp ./tmux/.*.conf* ~/.config/tmux/

pushd ./brew/
./brew_install
popd

echo "======================================================================="
echo "==   Complete!"
echo "=="
echo "==   Run 'source ~/.zshrc' to finish applying .zshrc changes"
echo "=="
echo "==   Type CTRL-CMD-, (Control + command + comma) to apply Kitty changes (if running kitty)"
echo "======================================================================="

