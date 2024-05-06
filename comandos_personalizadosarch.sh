#!/bin/bash

> ~/.bashrc
#Permisos al servidor local
echo "
    [[ \$- != *i* ]] && return

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    PS1='[\u@\h \W]\$ '
    
    # kitty ssh fix
    [ \"\$TERM\" = \"xterm-kitty\" ] && alias ssh=\"kitty +kitten ssh\"

    #Permisos servidor local
    pw() {
      sudo mkdir -p /srv/http
      sudo mkdir -p /var/repositorio
      sudo mkdir -p /var/create_tpv
      sudo chown -R \"\$currentuser\":http /srv/http
      sudo chown -R \"\$currentuser\":http /var/repositorio
      sudo chown -R \"\$currentuser\":http /var/create_tpv
      sudo chmod -R g+w /var/repositorio
      sudo chmod -R g+w /var/create_tpv
      sudo chmod -R g+w /srv/http
    }
" >> ~/.bashrc

source ~/.bashrc







# Recarga .bashrc
source ~/.bashrc
