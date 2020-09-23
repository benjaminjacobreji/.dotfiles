#!/bin/bash

echo "📦 Installing Fonts" | lolcat

mkdir ~/.local/share/fonts

cp ./fonts/* ~/.local/share/fonts

fc-cache -f -v