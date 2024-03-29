#!/bin/bash

#config files
cp -r ~/.config/btop ~/.config/dunst ~/.config/hypr/ ~/.config/neofetch/ ~/.config/rofi ~/.config/swaylock ~/.config/waybar ~/.config/cava/ /mnt/ECHO/dotfiles/.config/

#neovim config
[ -d "/mnt/ECHO/dotfiles/.config/nvim/lua/" ] || mkdir -pv /mnt/ECHO/dotfiles/.config/nvim/lua/
cp -r ~/.config/nvim/lua/custom/ /mnt/ECHO/dotfiles/.config/nvim/lua/

#custom scripts
cp -r ~/Documents/Bash/scripts /mnt/ECHO/dotfiles