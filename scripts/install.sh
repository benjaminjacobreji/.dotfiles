#!/bin/bash

echo "📦 Installing Packages" | lolcat

# Update Ubuntu and get standard repository programs
./scripts/update.sh

function apt-install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

function snap-install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
apt-install git
apt-install git-lfs
apt-install rsync
apt-install curl
apt-install wget
apt-install dialog
apt-install file
apt-install htop
apt-install openvpn
apt-install tree
apt-install vim
apt-install neovim
apt-install apt-transport-https
apt-install software-properties-common
apt-install ca-certificates
apt-install gnupg-agent
apt-install zsh
apt-install build-essential
apt-install dkms
apt-install 'linux-headers-$(uname -r)'

# Developer Stuff
apt-install gcc
apt-install g++
apt-install make
apt-install cmake
apt-install openjdk-14-jdk
apt-install openjdk-14-jre
apt-install cpu-checker
snap-install 'code --classic'

# Media processing
apt-install ffmpeg
snap-install vlc

# Fun stuff
apt-install figlet
apt-install lolcat
apt-install neofetch
apt-install screenfetch

# Fonts
apt-install powerline

# Run scripts in programs/
./scripts/programs/oh-my-zsh.sh
./scripts/programs/nvm.sh
./scripts/programs/miniconda.sh
./scripts/programs/docker.sh

# Get all upgrades
./scripts/update.sh
