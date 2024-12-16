# Personalización de mi entorno de trabajo en Linux
## Configuración de git
```
git config --global user.email "miemail@gmail.com"
git config --global user.name "minik"
```

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
echo "export TERM=xterm" >> ~/.bashrc
source ~/.bashrc
sudo apt install flatpak
sudo apt install plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt install linphone
```

## Programas en arch
```
yay
yay -S libfido2
yay -S kitty
yay -S kitty-terminfo
yay -S linphone-desktop-appimage
sudo pacman -Syu flatpak
sudo pacman -Syu telegram-desktop
sudo pacman -Syu obsidian
yay -S visual-studio-code-bin
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
curl -o configuracion_arch.sh https://raw.githubusercontent.com/zaqueoae/mylinux/main/configuracion_arch.sh?v=1 && bash ~/configuracion_arch.sh && rm -f ~/configuracion_arch.sh && source ~/.bashrc
```


### Configuro kitty (Ubuntu)
```
nano ~/.bashrc
```
y pego esto al final
```
# kitty ssh fix
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
vpnup () {
sudo wg-quick up wg0
}

vpndown (){
sudo wg-quick down wg0
}
pw(){
    USER=$(whoami)
    BASE_DIR="/var/www"
    APACHE_USER="www-data"

    # Agregar al usuario actual al grupo www-data
    sudo usermod -a -G $APACHE_USER $USER

    # Cambiar el grupo propietario de los directorios y subdirectorios a www-data
    sudo chgrp -R $APACHE_USER $BASE_DIR

    # Asegurar permisos de lectura, escritura y ejecución para el grupo
    sudo chmod -R g+rwX $BASE_DIR

    # Asegurar que los nuevos archivos y directorios hereden el grupo www-data
    sudo find $BASE_DIR -type d -exec chmod g+s {} \;

    # Crear los directorios necesarios
    sudo mkdir -p /var/www/html
    sudo mkdir -p /var/repositorio
    sudo mkdir -p /var/create_tpv

    # Cambiar el propietario de los directorios creados al usuario actual y al grupo www-data
    sudo chown -R "$USER:$APACHE_USER" /var/www/html
    sudo chown -R "$USER:$APACHE_USER" /var/repositorio
    sudo chown -R "$USER:$APACHE_USER" /var/create_tpv

    # Reiniciar Apache para aplicar los cambios
    sudo systemctl restart apache2
}
```
Ahora
```
source .bashrc
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
