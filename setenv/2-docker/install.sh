#!/bin/bash

# See: https://docs.docker.com/engine/install/ubuntu/


sudo apt update
sudo apt install -y ca-certificates curl gnupg \
    libc6 \
    software-properties-common build-essential

DOCKER_VERSION="24.0.5-1~ubuntu.20.04~focal"
CONTAINERD_VERSION="1.6.22-1"
DOCKER_BUILDX_VERSION="0.11.2-1~ubuntu.20.04~focal"
DOCKER_COMPOSE_VERSION="2.20.2-1~ubuntu.20.04~focal"
ARCH="amd64"
BASE_URL="https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64"

curl -fsSL ${BASE_URL}/containerd.io_${CONTAINERD_VERSION}_${ARCH}.deb -o containerd.io.deb
curl -fsSL ${BASE_URL}/docker-ce_${DOCKER_VERSION}_${ARCH}.deb -o docker-ce.deb
curl -fsSL ${BASE_URL}/docker-ce-cli_${DOCKER_VERSION}_${ARCH}.deb -o docker-ce-cli.deb
curl -fsSL ${BASE_URL}/docker-buildx-plugin_${DOCKER_BUILDX_VERSION}_${ARCH}.deb -o docker-buildx-plugin.deb
curl -fsSL ${BASE_URL}/docker-compose-plugin_${DOCKER_COMPOSE_VERSION}_${ARCH}.deb -o docker-compose-plugin.deb

sudo dpkg -i \
./containerd.io.deb \
./docker-ce.deb \
./docker-ce-cli.deb \
./docker-buildx-plugin.deb \
./docker-compose-plugin.deb

# OR latest
#curl https://get.docker.com | sh \
#  && sudo systemctl --now enable docker

