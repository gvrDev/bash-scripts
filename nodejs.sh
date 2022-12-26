echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
nvm install --lts
nvm use --lts
source ~/.bashrc

echo "Installing node dependencies"
npm -g update
npm i -g tree-sitter-cli
