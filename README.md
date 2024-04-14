# Personalización de mi entorno de trabajo en Linux

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
flatpak install flathub md.obsidian.Obsidian
```
## Dot files
```
git clone https://github.com/zaqueoae/mylinux.git && cp -r ~/mylinux/.conf/* ~/.conf/ && rm -rf ~/mylinux
```

### Tema kde
Graphite-dark


## Extensiones chrome
- ublock origin
- unhook
- https://github.com/DimiMikadze/focused


### Configuro kitty
```
nano ~/.bashrc
```
y pego esto al final
```
# kitty ssh fix
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
```

### Extensiones Vscode
- Ayu
- Bash extension pack
- error lens
- php debug
- github copilot
- php intelepse
- indent rainbow
