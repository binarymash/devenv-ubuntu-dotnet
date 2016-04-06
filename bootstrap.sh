#!/usr/bin/env bash

#install apt-get feed for dotnet - see https://dotnet.github.io/getting-started/
sudo sh -c 'echo "deb [arch=amd64] http://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
sudo apt-get update

#install dotnet
sudo apt-get --yes install dotnet=1.0.0.001598-1
