# Personalización generak de mi propio linux

## Programas
```
sudo  apt update
sudo apt upgrade -y
sudo apt install kitty
sudo apt install kitty-terminfo
sudo apt install flatpak
sudo apt install plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.xnview.XnConvert
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.audacityteam.Audacity
flatpak install flathub org.kde.kdenlive
sudo apt install linphone
flatpak install flathub org.keepassxc.KeePassXC
```
## Dot files
```
git clone https://github.com/zaqueoae/mylinux.git && cp -r ~/mylinux/.conf/* ~/.conf/ && rm -rf ~/mylinux
```

### Tema kde
```
git clone --depth=1 https://github.com/catppuccin/kde catppuccin-kde && cd catppuccin-kde && ./install.sh <<EOF
1
13
1
y
y
EOF
rm -rf ~/catppuccin-kde
```

iconos: la capitane
estilo ventanas: brisa


## Extensiones chrome
- ublock origin
- unhook
- https://github.com/DimiMikadze/focused


### Configuro kitty
nano ~/.bashrc
y pego esto al final
```
# kitty ssh fix
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
```

## Extensiones Vscode
- Ayu
- Bash extension pack
- error lens
- php debug
- github copilot
- php intelepse
- indent rainbow

Para instalar Thermal: sudo apt-get -y install thermald


Otras recomendaciones: https://www.reddit.com/r/LinuxOnThinkpad/comments/uw6hh9/a_better_t480_power_saving_guide/
