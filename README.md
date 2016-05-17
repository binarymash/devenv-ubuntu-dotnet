##devenv-ubuntu-dotnet

This is a Vagrant box with Ubuntu 14.04 Desktop, .net core, Visual Studio Code
 and several other development packages useful for developing web based applications

##Requirements

The following tools will need to be installed on your machine...

* Vagrant
* VirtualBox

##Installation

Run the following command line...

    vagrant up

####Manual steps
Install the C# extension to Visual Studio Code

* Visual Studio Code > View > Command Palette
* ext install C#

##What's installed

* .NET core SDK - *preview 1 (dotnet-dev-1.0.0-preview1-002702)*
* .NET core - *RC2 (dotnet-sharedframework-microsoft.netcore.app-1.0.0-rc2-3002702)*
* Visual Studio Code - *1.1*
* git
* gulp
* npm
* yeoman

##Getting started

For the simplest .NET core application...

    $ cd /vagrant/dev
    $ mkdir helloWorld
    $ cd helloWorld
    $ dotnet new
    $ dotnet restore
    $ dotnet run
