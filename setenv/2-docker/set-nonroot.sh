#!/bin/bash

# See: https://docs.docker.com/engine/security/rootless/


sudo apt install -y dbus-user-session uidmap
sudo systemctl disable --now docker.service docker.socket

#if ! command -v dockerd-rootless-setuptool.sh &> /dev/null
#then
#    sudo apt install -y docker-ce-rootless-extras
#fi
#dockerd-rootless-setuptool.sh install

curl -fsSL https://get.docker.com/rootless | sh


echo 'export PATH="${HOME}/bin:${PATH}"' >> ~/.bashrc
echo 'export DOCKER_HOST="unix:///run/user/1000/docker.sock"' >> ~/.bashrc

echo 'export PATH="${HOME}/bin:${PATH}"' >> ~/.zshrc
echo 'export DOCKER_HOST="unix:///run/user/1000/docker.sock"' >> ~/.zshrc

