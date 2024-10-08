#!/bin/bash

# Install Node.js and npm if not already installed
if ! command -v npm &> /dev/null
then
    curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
    sudo yum install -y nodejs
fi

# Install dependencies
npm install
