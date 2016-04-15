#!/usr/bin/env bash

#dotnet apt-get feed - see https://dotnet.github.io/getting-started/
sudo sh -c 'echo "deb [arch=amd64] http://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
sudo apt-get update

#dotnet
sudo apt-get --yes install dotnet=1.0.0.001598-1

#npm
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs
#sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules}

#git
sudo apt-get install -y git

#packages from npm
npm install -g gulp-cli yo generator-aspnet

#vscode 1.0
URL='https://az764295.vo.msecnd.net/stable/fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8/vscode-amd64.deb'; FILE='vscodetemp';  wget "$URL" -O$FILE && sudo dpkg -i $FILE; rm $FILE

#create dev folder and link from vagrant
[ -d "/vagrant/dev" ] && echo "/vagrant/dev already exists, so we won't recreate it" || mkdir /vagrant/dev
ln -s /vagrant/dev ~/dev
