#!/bin/bash

# Install Node.js and npm if not already installed
if ! command -v npm &> /dev/null
then
    curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
    sudo yum install -y nodejs
fi

# Clear npm cache
npm cache clean --force

# Remove node_modules and package-lock.json if they exist (to prevent conflicts)
rm -rf node_modules package-lock.json

# Install dependencies
npm install
