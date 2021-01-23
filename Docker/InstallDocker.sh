#!/bin/sh

# https://docs.docker.com/engine/install/ubuntu/

sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-compose

sudo usermod -aG docker $USER

echo "Please restart your computer."
