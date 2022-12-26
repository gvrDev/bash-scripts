#!/bin/bash

echo "Installing fonts"
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Caskaydia Cove Nerd Font Complete Regular.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Regular.otf
cd ~/.local/share/fonts && curl -fLo "Caskaydia Cove Nerd Font Complete Italic.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Italic.otf
cd ~/.local/share/fonts && curl -fLo "Caskaydia Cove Nerd Font Complete Bold.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Bold/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Bold.otf
cd ~/.local/share/fonts && curl -fLo "Caskaydia Cove Nerd Font Complete Bold Italic.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/Bold/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Bold%20Italic.otf
cd ~/.local/share/fonts && curl -fLo "Caskaydia Cove Nerd Font Complete Mono SemiBold Italic.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/SemiBold/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Mono%20SemiBold%20Italic.otf
cd ~/.local/share/fonts && curl -fLo "Caskaydia Cove Nerd Font Complete Mono SemiBold.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/CascadiaCode/SemiBold/complete/Caskaydia%20Cove%20Nerd%20Font%20Complete%20Mono%20SemiBold.otf

