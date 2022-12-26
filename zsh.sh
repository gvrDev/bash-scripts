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
