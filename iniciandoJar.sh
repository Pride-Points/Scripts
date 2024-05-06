#!/bin/bash

#Startando o Docker 
echo "Inicializando o Container..."
sleep 0.5
docker start bd_pride_ec2

#Acessando o Back-End
echo "Acessando o repositório do Back End..."
sleep 0.5
cd Back-End/

#Acessando Pasta Target 
echo "Acessando o repositório do Back End..."
sleep 0.5
cd Back-End/

#Inicializando o Jar
echo "Inicializando o Jar..."
sleep 0.5
cd target/
java -jar apiPridePoints-0.0.1-SNAPSHOT.jar

