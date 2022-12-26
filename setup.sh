#!/bin/bash

echo "Installing dependencies"
sudo dnf install dnf-plugins-core

sudo dnf copr enable atim/lazygit -y

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install neovim kitty zsh lazygit brave-browser xclip xset xinput ripgrep fd-find exa g++ steam gamemode

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
source ~/.bashrc

echo "Installing fonts"
curl -o- https://raw.githubusercontent.com/gvrDev/bash-scripts/main/fonts.sh | bash

echo "Removing oh-my-zsh plugins"
find $HOME/.oh-my-zsh/custom/themes/ ! -name 'example.zsh-theme' -type f -exec rm -rf {} +
find $HOME/.oh-my-zsh/custom/themes/ ! -name 'example.zsh-theme' -type d -exec rm -rf {} +
find $HOME/.oh-my-zsh/custom/plugins ! -name 'example' -type d -exec rm -rf {} +

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

echo "Installing zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing node dependencies"
npm -g update
npm i -g tree-sitter-cli

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
