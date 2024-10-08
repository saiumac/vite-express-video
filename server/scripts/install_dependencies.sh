#!/bin/bash

# Install Node.js and npm if not already installed
if ! command -v npm &> /dev/null
then
    curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
    sudo yum install -y nodejs
fi

# Clear npm cache
npm cache clean --force

# Ensure the environment is clean
rm -rf node_modules
rm -f package-lock.json
rm -f npm-shrinkwrap.json

# Ensure no leftover npm processes are running
pkill -f npm || true

# Reinstall dependencies
npm install --force
