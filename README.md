# Personalización de mi entorno de trabajo en Linux

## Programas
```
sudo  apt update
sudo apt upgrade -y
sudo apt install curl -y
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
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
mkdir -p ./config/ && git clone https://github.com/zaqueoae/mylinux.git && cp -r ~/mylinux/.config/* ~/.config/ && rm -rf ~/mylinux
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
- Monokai Charcoal high contrast
- Bash extension pack
- error lens
- php debug
- github copilot
- php intelepse
- indent rainbow

### Configuración de vscode
```
mkdir -p ./config/ && git clone https://github.com/zaqueoae/mylinux.git && bash ~/mylinux/vscode_configuration.sh && rm -rf ~/mylinux
```
Esto hace:
- Deshabilita workbench.editor.enablePreview
