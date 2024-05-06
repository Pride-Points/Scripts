#!/bin/bash

#Atualizar a instância 
echo "Atualizando a instância..."
sleep 0.5
sudo apt update && sudo apt upgrade -y
clear


#Instalando o Node
echo "Instalando o Node..."
sleep 0.5
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
clear

#Instalando o Nginx
echo "Instalando o Nginx..."
sleep 0.5
sudo apt install nginx
clear

#Clonando o repositório
echo "Clonando o repositório..."
sleep 0.5
git clone https://github.com/Pride-Points/Front-End.githttps://github.com/Pride-Points/Front-End.git
echo "Ambiente configurado com sucesso!"
sleep 0.5