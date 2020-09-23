#!/bin/zsh

echo "🐋 Installing Docker" | lolcat

sudo apt remove docker docker-engine docker.io containerd runc

./scripts/update.sh

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

./scripts/update.sh

sudo apt install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -aG docker $USER