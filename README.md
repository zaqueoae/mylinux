# Personalización generak de mi propio debian y thinkpad t480
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
flatpak install flathub com.xnview.XnConvert
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
sudo nano /etc/apt/sources.list

#Y pego al final esto. Sistituyendo bookworm por la version de debian que esté usando. Se puede ver la versión aquí: https://wiki.debian.org/es/DebianReleases
deb http://deb.debian.org/debian bookworm-backports main contrib non-free-firmware
deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free-firmware

#Luego corro esto
sudo  apt update
sudo  apt upgrade -y

#A continuación escribo:
sudo apt install linux-image-
#y doy a la tecla tab para elegir el kernel que quiera usar. Lo instalo y reinicio el ordenador.

#Por último corro esto para actualizar los drivers.
sudo apt-get install firmware-linux
sudo apt-get upgrade firmware-linux
```

## Extensiones de chromium
- Unhook
- Ublock origin
- Focused - Website Blocker

## Energía en un thikpad t480
Voy a usar tlp y Thermal. Aquí una discusión sobre Thermal vs auto-cpufreq: https://news.ycombinator.com/item?id=35025838

## Extensiones Vscode
- Ayu
- Bash extension pack
- code runer
- error lens
- php debug
- github copilot
- php intelepse
- indent rainbow
- 

Para instalar Thermal: sudo apt-get -y install thermald


Otras recomendaciones: https://www.reddit.com/r/LinuxOnThinkpad/comments/uw6hh9/a_better_t480_power_saving_guide/
