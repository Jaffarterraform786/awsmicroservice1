#!/bin/bash

# Update the system
sudo yum update -y

# Install Git
sudo yum install git -y

# Install GCC, C++ Compiler, and Make
sudo yum install -y gcc-c++ make

# Download Node.js v22.9.0 (Linux x64 binary)
cd /tmp
curl -O https://nodejs.org/dist/v22.9.0/node-v22.9.0-linux-x64.tar.xz

# Extract the archive
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-v22.9.0-linux-x64.tar.xz -C /usr/local/lib/nodejs

# Set up the environment variables for Node.js
echo 'export PATH=/usr/local/lib/nodejs/node-v22.9.0-linux-x64/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Verify installations
node -v
npm -v
