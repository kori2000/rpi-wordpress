#!/bin/bash
clear

GREEN='\033[0;32m'
PURPLE='\033[0;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

HOSTNAME=$(hostname)
LOCAL_IP=$(hostname -I | awk '{print $1;}')

printf  "${PURPLE} \n ### Pulling Images...${NC}\n\n"
docker pull hypriot/rpi-mysql:latest
docker pull redis:latest
docker pull phpmyadmin/phpmyadmin:latest
docker pull wordpress:latest

printf "${PURPLE} \n  ### Starting Container...${NC}\n\n"
docker-compose up -d

printf "${PURPLE}\n\n ### Wordpress available from \n${YELLOW}"
printf " Hostname : http://$HOSTNAME\n"
printf " Local IP : http://$LOCAL_IP\n\n"