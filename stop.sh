#!/bin/bash
clear

GREEN='\033[0;32m'
PURPLE='\033[0;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

printf "${PURPLE} \n  ### Stoping Container...${NC}\n\n"
docker-compose down

printf "${PURPLE} \n ### Done.${NC}\n\n"