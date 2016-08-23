#!/bin/bash

sudo apt-get install -y git-core curl

curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash

echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

nvm install 5.11.1
nvm install 6
nvm alias default 5.11.1
nvm use 5.11.1
sudo apt-get -y install git
git clone https://github.com/Automattic/jetpack
cd jetpack
npm set progress=false
