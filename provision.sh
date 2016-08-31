#!/bin/bash

sudo apt-get install -y git-core curl

# Install Node Version Manager
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash

echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

# Install node 5.11.1 and 6
nvm install 5.11.1
nvm install 6
# Use node 5.11
nvm alias default 5.11.1
nvm use 5.11.1
# Install php and git 
sudo apt-get -y install php5
sudo apt-get -y install git
# Clone the Jetpack repo master branch
git clone https://github.com/Automattic/jetpack
cd jetpack
npm set progress=false
