#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y


sudo ufw allow ssh
ufw allow 80/tcp
ufw allow 443/tcp
ufw allow 5222/tcp
ufw allow 5269/tcp
ufw allow 5000/tcp
ufw allow 3478:3479
ufw allow 3478:3479/tcp
ufw allow 3478:3479/udp
ufw allow 5349:5350/udp
ufw allow 5349:5350/tcp
ufw allow 49152:65535/udp
sudo ufw enable

mkdir /etc/snikket
cd /etc/snikket

# Solicitar el dominio al usuario
read -p "Introduce el dominio de tu instancia Snikket: " SNIKKET_DOMAIN

# Solicitar el correo electrónico al usuario
read -p "Introduce el correo electrónico del administrador: " SNIKKET_ADMIN_EMAIL

# Escribir los valores en el archivo de configuración
cat <<EOL | sudo tee /etc/snikket/snikket.conf
# The primary domain of your Snikket instance
SNIKKET_DOMAIN=$SNIKKET_DOMAIN

# An email address where the admin can be contacted
# (also used to register your Let's Encrypt account to obtain certificates)
SNIKKET_ADMIN_EMAIL=$SNIKKET_ADMIN_EMAIL
EOL

curl -o docker-compose.yml https://snikket.org/service/resources/docker-compose.yml


    
    
#Hora del servidor
    sudo timedatectl set-timezone Europe/Madrid
    sudo timedatectl set-ntp on

docker compose up -d

docker exec snikket create-invite --admin --group default
