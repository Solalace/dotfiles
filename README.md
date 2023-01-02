### Installation

## Packages
```
sudo pacman -S xorg xorg-xinit xorg-server \
qemu-guest-agent spice-vdagent xf86-video-intel xf86-video-qxl \
adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts \
ttf-nerd-fonts-symbols-common ttf-jetbrains-mono ttf-joypixels \
noto-fonts noto-fonts-emoji noto-fonts-cjk \
powerline-fonts \
gtk-engines gtk-engine-murrine \
zathura zathura-pdf-poppler \
pipewire-jack pipewire-alsa pipewire-pulse pulsemixer alsa-utils \
bspwm sxhkd nitrogen rofi jgmenu dunst zsh \
git wget lrzip
```

#### Install Yay
```
git clone https://aur.archlinux.org/yay.git
cd yay ; makepkg -si
```

## Yay packages
```
yay -S nerd-fonts-complete ttf-iosevka ttf-meslo \
polybar \
picom-animations-git \
lxappearance qt5ct \
papirus-icon-theme-git papirus-folders-git bibata-cursor-theme \
materia-gtk-theme
```

##### Clone the Repo
```
git clone https://github.com/Solalace/dots
```

##### Give permissions to execute:
```
cd ~/ ; chmod +x .xinitrc .xsession
cd ~/.config ; chmod +x _ui/polybar/launch.sh _main/bspwm/config.bash _main/picom/picom.conf _main/sxhkd/sxhkdrc
```

##### Move pre-installed fonts:
```
sudo mkdir /usr/share/fonts/ /usr/share/fonts/OTF /usr/share/fonts/TTF
cd /usr/share/fonts/
sudo cp ~/.local/share/fonts/*ttf* TTF/ | sudo cp ~/.local/share/fonts/*otf* OTF/
sudo cp ~/.local/share/fonts/*/ .
```
