cp ./.zshrc    ~/.zshrc
cp ./.p10k.zsh ~/.p10k.zsh
cp ./kitty/*   ~/.config/kitty/

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

