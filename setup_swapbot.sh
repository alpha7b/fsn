#!/bin/bash

# install node & pm2
sudo apt update
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs -y
sudo npm i -g pm2

# download swapbot code
git clone https://github.com/fusionfans/swapbot.git

# config bot
cd swapbot
cp config.sample.js config.js

read -p "Please paste your private key: " priKey
sed -i "s/your private key/$priKey/g" config.js

sudo npm i

# start bot
sudo npm run start
