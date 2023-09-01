#!/bin/bash

curl -fsSLO https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    sudo chmod -R 777 /opt && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda


