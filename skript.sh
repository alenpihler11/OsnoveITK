#!/bin/bash
mkdir /home/alenpihler/Namizje
mkdir /home/alenpihler/Dokumenti
mkdir /home/alenpihler/Prenosi
mkdir /home/alenpihler/Slike
mkdir /home/alenpihler/Video

for i in {1..5}
do 
mkdir folder$i
done 

for i in {1..5}
do 
sudo Useradd uporabnik$i
sudo usermod -aG sudo uporabnik$i
done

sudo apt-get upgrade
sudo apt-get update

sudo apt-get install git-all 
sudo apt install net-tools
sudo apt install nginx 

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker run hello-world

git add .  
read -p "Commit description: " desc  
git commit -m "$desc"
git push origin master