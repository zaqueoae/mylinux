# Configuración de linux

## Programas
```
sudo apt install kitty
sudo apt install kitty-terminfo 
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
