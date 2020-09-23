#!/bin/bash

echo "📦 APT Update" | lolcat

sudo apt clean
sudo apt update
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean
sudo apt update
