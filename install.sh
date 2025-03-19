#!/bin/bash

# Update package list 
apt-get update 

# Install curl
apt-get install -y curl

# Install Miniconda
curl -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh && \
bash ~/miniconda.sh -b -p /opt/miniconda && \
rm ~/miniconda.sh && \
echo 'export PATH="/opt/miniconda/bin:$PATH"' >> ~/.bashrc && \
source ~/.bashrc

# Clean up to reduce image size
apt-get clean && rm -rf /var/lib/apt/lists/*
