
<div align="center">

# ✨**Vishal's Hyprland Dotfiles**✨

<br/>
<img src="https://img.shields.io/github/stars/vishal2376/dotfiles?style=for-the-badge&logo=powerpages&color=cba6f7&logoColor=D9E0EE&labelColor=302D41"/>
<img src="https://img.shields.io/github/repo-size/vishal2376/dotfiles?style=for-the-badge&logo=dropbox&color=7dc4e4&logoColor=D9E0EE&labelColor=302D41"/>
<img src="https://img.shields.io/github/last-commit/vishal2376/dotfiles?style=for-the-badge&logo=github&color=a6da95&logoColor=D9E0EE&labelColor=302D41"/>
</div>

# Showcase

# Details
- **OS**: Arch Linux
- **Compositor**: [Hyprland](https://github.com/hyprwm/Hyprland)
- **Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Notifications**: [dunst](https://github.com/dunst-project/dunst)
- **Wallpaper Loader**: [swww](https://github.com/Horus645/swww)
- **Wallpapers Location**: `~/.local/share/wallhaven`
- **Terminal**: `gnome-terminal`
- **Shell**: `zsh`
- **Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Font**: [Nerd Font](https://www.nerdfonts.com/)

# Installation

## 📦 Required dependencies:

Install the following packages (Arch):

```
hyprland-git waybar-hyprland-git cava python rofi xdg-desktop-portal-hyprland-git grim slurp jq dunst wl-clipboard swaylock-effects-git btop pavucontrol swww polkit-kde-agent nerd-fonts-jetbrains-mono playerctl socat inotify-tools-git gnome-terminal-transparent noto-fonts-emoji
```

Follow the [Quick Start Instructions from Hyprland](https://wiki.hyprland.org/Getting-Started/Quick-start/)

For Nvidia, replace `hyprland-git` with `hyprland-nvidia-git`, and follow the [Nvidia section](https://wiki.hyprland.org/Nvidia/) of the Hyprland wiki.

## 🧙‍♂️ Setup config files

Copy all files from `./config` in this repo to your config directory.

```bash
git clone https://github.com/vishal2376/dotfiles.git
cd dotfiles
cp -r ./config/* ~/.config
```

## ✨ Theming Other Applications

### Firefox

### GTK

Install the `catppuccin-gtk-theme-mocha` package from the AUR.

### Cursor

Install [Catppuccin Cursors](https://github.com/catppuccin/cursors) by following the instructions in the README.

<br/>

# ⌨️ Keybinds 
All keybinds can be found in the `keybinds` folder
- `SUPER+D`: Application Launcher (rofi)
- `SUPER+Q`: Quit Window
- `SUPER+SPACE`: Toggle float/tile window
- `SUPER+M`: Quit Hyprland
- `SUPER+[0-9]`: Switch workspace
- `SUPER+SHIFT+[0-9]`: Move window to workspace
- `SUPER+SHIFT+T`: Switch Wallpaper
- `SUPER+H`: Open clipboard history
- `SUPER+T` or `SUPER+RETURN`: Terminal
- `SUPER+W`: Brave (Browser)
- `SUPER+E`: Thunar (File manager)
- `SUPER+S`: Toggle Split
- `SUPER+F1`: Toggle all animation and blurs
- `SUPER+SHIFT+S`: Sublime Text
- `PRINT`: Screenshot whole screen
- `SUPER+PRINT`: Screenshot window
- `SUPER+SHIFT+PRINT`: Screenshot specific area


# ⭐ Credits
- [zeroruka](https://github.com/zeroruka): Inspiring hyprland-setup and useful scripts
