# Personalización de mi entorno de trabajo en Linux

## Programas en debian
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
sudo apt install linphone
```

## Programas en arch
```
sudo pacman -Syu
sudo pacman -S libfido2
sudo pacman -S kitty
sudo pacman -S kitty-terminfo
yay -S linphone-desktop
sudo pacman -S flatpak
```

## Flatpak
```
flatpak install flathub org.keepassxc.KeePassXC
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.xnview.XnConvert
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.audacityteam.Audacity
flatpak install flathub org.kde.kdenlive
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


### Configuración de bash (arch)
```
 git clone https://github.com/zaqueoae/mylinux.git && bash ~/mylinux/comandos_personalizadosarch.sh ~/.config/ && rm -rf ~/mylinux
```


### Configuro kitty (Ubuntu)
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
En debian
```
mkdir -p ./config/ && git clone https://github.com/zaqueoae/mylinux.git && bash ~/mylinux/vscode_configuration.sh && rm -rf ~/mylinux
```
En arch
```
mkdir -p ./config/ && git clone https://github.com/zaqueoae/mylinux.git && bash ~/mylinux/vscode_configuration_arch.sh && rm -rf ~/mylinux

```


Esto hace:
- Deshabilita workbench.editor.enablePreview


### Remapear teclado
Utilizo esto: https://github.com/sezanzeb/input-remapper
