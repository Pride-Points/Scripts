#!/bin/bash

#Atualizar a instância 
echo "Atualizando a instância..."
sudo apt update && sudo apt upgrade -y

clear 
#Instalar o Java 
echo "Instalando o Java..."
sleep 0.5
sudo apt install default-jdk -y

clear 
#Instalar o Maven 
echo "Instalando o Maven..."
sleep 0.5
sudo apt install maven -y

clear
#Instalar o Docker 
echo "Instalando o Docker..."
sleep 0.5
sudo apt install docker.io -y

clear
#Adicionar usuário ao grupo Docker
sudo usermod -a -G docker $(whoami)

#renovando a sessão para aplicar as modificações ao usuário
newgrp docker

#Criando o Container com o banco de dados pridepoints
docker run --name bd_pride_ec2 -e MYSQL_ROOT_PASSWORD=966193319c -p 3306:3306 -d mysql:latest

#Clonando o projeto
echo "Clonando o repositório do Back-End..."
sleep 0.5

git clone https://github.com/Pride-Points/Front-End.git

clear
echo "Ambiente configurado com sucesso!"
sleep 0.5
