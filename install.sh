#!/bin/bash


####################################################
#                 ARCH PACKAGES                    #
####################################################
required_packages=(
    hyprland-git
    waybar-hyprland-git 
    cava
    python
    rofi 
    xdg-desktop-portal-hyprland-git 
    grim 
    slurp 
    jq
    dunst 
    wl-clipboard 
    swaylock-effects-git 
    btop 
    pavucontrol 
    swww 
    polkit-kde-agent 
    nerd-fonts-jetbrains-mono 
    playerctl 
    socat 
    inotify-tools-git 
    gnome-terminal-transparent 
    noto-fonts-emoji
  ) 

####################################################
#                 CUSTOM STYLE                     #
####################################################

# define colors for message
green='\033[0;32m' #sucess
red='\033[0;31m' # error
nc='\033[0m' # normal

# horizontal line
print_line(){
  printf -- '\n%s\n' '----------------------------------------------------------------'
}

####################################################
#                 INSTALLATION                     #
####################################################

# Install each required packages using yay
for pkg in "${required_packages[@]}"; do

  echo -e "\nInstalling $pkg..."
 
  # skip packages that are already installed and also skip user prompt
  yay -S --needed --noconfirm "$pkg" > /dev/null 2> /tmp/required_packages_error.log

  # check exit_state($?) (0 means success)
  if [ $? -eq 0 ]; then
    echo -e "${green}Successfully installed $pkg ${nc}"
  else
    echo -e "${red}Error installing $pkg:${nc}"
    echo -e "$pkg" >> ./manual_install.txt
    cat /tmp/required_packages_error.log
  fi
done

print_line

# Display any error messages
if [[ -s /tmp/required_packages_error.log ]]; then
  echo -e "${red}Error installing $pkg:${nc}"
  cat /tmp/required_packages_error.log
fi

print_line

# Display not installed packages
if [[ -s ./manual_install.txt ]]; then
   echo -e "${red}Install the following packages manually${nc}"
   cat ./manual_install.txt
fi

# Clean up temporary files
rm /tmp/required_packages_error.log manual_install.txt


####################################################
#              CLONE & COPY CONFIG                 #
####################################################
# git clone https://github.com/vishal2376/dotfiles.git
# cd dotfiles
# cp -r ./config/* ~/.config