#!/bin/zsh

echo "📦 Installing nvm" | lolcat

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

source ~/.zshrc
. ~/.nvm/nvm.sh

nvm install node
nvm install --lts

nvm use node

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install --no-install-recommends yarn

./scripts/install-npm-packages.sh