echo "Installing dependencies with dnf"
sudo dnf install -y dnf-plugins-core

sudo dnf copr enable atim/lazygit -y

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install -y neovim kitty zsh lazygit brave-browser xclip xset xinput ripgrep fd-find exa g++ gamemode openssh-askpass flameshot
