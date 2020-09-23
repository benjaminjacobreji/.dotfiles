#!/bin/zsh

echo "📦 Installing miniconda" | lolcat

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Miniconda3-latest-Linux-x86_64.sh
bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p ~/miniconda
rm ~/Miniconda3-latest-Linux-x86_64.sh

source ~/.zshrc

conda update conda -y
conda update --all -y
conda clean --all -y
