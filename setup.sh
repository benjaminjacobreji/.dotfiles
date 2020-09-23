#!/bin/bash

find ./scripts/ -type f -iname "*.sh" -exec chmod +x {} \;

./scripts/install-fonts.sh
./scripts/install.sh
./scripts/link-dotfiles.sh
./scripts/change-permissions.sh

#Change default shell to zsh
chsh -s $(which zsh)

# Fun ending
# figlet "Finished !" | lolcat -a -d 2

# Reboot to complete setup
sudo reboot