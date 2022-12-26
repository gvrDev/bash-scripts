#!/bin/bash

#dnf-dep
curl -o- https://raw.githubusercontent.com/gvrDev/bash-scripts/main/dnf-dep.sh | bash

#nodejs
curl -o- https://raw.githubusercontent.com/gvrDev/bash-scripts/main/nodejs.sh | bash

#fonts
curl -o- https://raw.githubusercontent.com/gvrDev/bash-scripts/main/fonts.sh | bash

#zsh
curl -o- https://raw.githubusercontent.com/gvrDev/bash-scripts/main/zsh.sh | bash


echo "Removing current dotfiles"
rm -rf $HOME/.config/i3
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/kitty
rm -rf $HOME/.config/my-autostart.sh
rm -rf $HOME/.zshrc
rm -rf $HOME/.p10k.zsh
rm -rf $HOME/.my-dotfiles

echo "Cloning new dotfiles"
git clone https://github.com/gvrDev/dotfiles.git
rm -rf $HOME/.my-dotfiles/
mv dotfiles/ $HOME/.my-dotfiles/

ln -sf $HOME/.my-dotfiles/i3 ~/.config
ln -sf $HOME/.my-dotfiles/nvim ~/.config
ln -sf $HOME/.my-dotfiles/kitty ~/.config
ln -sf $HOME/.my-dotfiles/my-autostart.sh ~/.config
ln -sf $HOME/.my-dotfiles/.zshrc ~/
ln -sf $HOME/.my-dotfiles/.p10k.zsh ~/
