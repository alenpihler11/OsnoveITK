#!/bin/bash
sudo mkdir Namizje
sudo mkdir Dokumenti
sudo mkdir Prenosi
sudo mkdir Slike
sudo mkdir Video

for i in {1..5}
do 
mkdir folder$i
done 

for i in {1..5}
do 
sudo useradd -m --groups sudo uporabnik$i
done

sudo apt update
sudo apt upgrade

sudo apt install ufw
sudo apt install git-all
sudo apt install nginx
sudo apt install net-tools

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
