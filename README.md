# Configuración de linux
Configuracion inicial cuando instalo debian: upgrade del kernel backports, programas que uso regularmente, tema de  kde...

## Programas
```
sudo  apt update
sudo apt upgrade -y
sudo apt install kitty
sudo apt install kitty-terminfo
sudo apt install chromium
sudo apt install flatpak
sudo apt install plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.telegram.desktop
sudo apt install libreoffice
sudo apt install obs-studio
sudo apt install audacity
sudo apt install kdenlive
sudo apt install linphone
sudo apt install keepassxc
```


### Tema kde
```
https://github.com/catppuccin/kde
iconos: la capitane
estilo ventanas: brisa
```


### Configuro kitty
nano ~/.bashrc
y pego esto al final
```
# kitty ssh fix
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="TERM=xterm-256color ssh"
```
edito .config/kitty/kitty.conf y le pego https://github.com/zaqueoae/mylinux/blob/main/kitty/kitty.conf
edito .config/kitty/color.ini y le pego https://github.com/zaqueoae/mylinux/blob/main/kitty/color.ini

### Actualizar Kernel de linux con backports en debian
Primero se añaden los backports. Un ejemplo: 
```
sudo apt-get -t bookworm-backport install linux-image-amd64 linux-headers-amd64 firmware-linux
```
Se corre ese comando pero cambiando **bookworm** por el nombre en clave de la versión de debian en la que me encuentre. En mi caso es la 12, y por tanto sería bookworm.

Para saber el nombre de la versión debian en la que me encuentro: https://wiki.debian.org/es/DebianReleases

Luego corro esto
```
sudo  apt update
sudo  apt upgrade -y
```

A continuación escribo: sudo apt install linux-image-   y doy a la tecla tab para elegir el kernel que quiera usar. Lo instalo y reinicio el ordenador.

Por último corro esto:

```
sudo apt-get install firmware-linux
sudo apt-get upgrade firmware-linux
```
