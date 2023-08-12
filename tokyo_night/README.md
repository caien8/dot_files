## Installing  Dependencies
### PACMAN
xorg
xorg-xinit
sxhkd
dmenu
feh
picom
kitty
firefox
arandr
thunar
kate
neovim
git
polybar
pacman-contrib
alsa-utils
paru
xdg-user-dirs
rofi
networkmanager-dmenu

### PARU
bspwm-rounded-corners-git

## Installing  GTK Themes (Tokyo-Night)

```bash
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
mv themes/Tokyonight-Dark-BL /usr/share/themes/

mv home/.gtkrc-2.0 ~/
```

## FONTS
```bash
cp fonts ~/.local/share/
```


## CONFIGS
```bash
mv config/* ~/.config
```
