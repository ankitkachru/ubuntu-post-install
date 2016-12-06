#!/usr/bin/env bash

# add repositories, update and upgrade
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-add-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:slgobinath/safeeyes
sudo apt update
# sudo apt upgrade

# install the application of PPA

sudo apt -y install \
    atom sublime-text-installer idle vim g++ safeeyes \
    redshift sqlitebrowser weechat vlc chromium-browser \
    gparted filezilla

# install java
sudo apt install oracle-java8-installer

# kill bluetooth on startup and start redshift
sudo sed -i -e '$i rfkill block bluetooth \nredshift \n' /etc/rc.local