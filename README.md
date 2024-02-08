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
