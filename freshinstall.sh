#!/bin/bash

#FULL INSSTALL SCRIPT FOR NEW LINUX I'M TIRED OF DOING IT ALL OVER THE PLACE:
#RUN with sudo sh filename.sh AND ENTER PASSWORD.

#To invert colors on key command use and bind to keyboard: xcalib -i -a

echo "Execute this program as follows: 'yes | sudo sh freshinstall.sh'"

echo "killing existing installation processes"
sudo killall dpkg
sudo dpkg --configure -a

#ADD REPOS BELOW HERE:
echo "adding repos:"
#PAPER icon and cursor
sudo add-apt-repository ppa:snwh/pulp
#Arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
#Adapta theme
sudo apt-add-repository ppa:tista/adapta -y
#Numix theme
sudo add-apt-repository ppa:numix/ppa
#SPOTIFY
# 1. Add the Spotify repository signing key to be able to verify downloaded packages
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
#GOOGLE
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#===========================================
#REMOVE AUTO UPDATER:
#APT remove update-notifier
echo "updating package lists"
# UPDATE PACKAGE LISTS:
sudo apt-get update

#===========================================
#INSTALL NEEDED PACKAGES:
echo "installing packages"
# Install Spotify
sudo apt-get install spotify-client

# Install xcalib (for color inversion)
sudo apt-get install xcalib

#unity tweak tool
sudo apt-get install unity-tweak-tool

#google chrome stable
sudo apt-get install google-chrome-stable

#guake
sudo apt-get install guake

#compiz
sudo apt-get install compizconfig-settings-manager

#calibre
sudo apt-get install calibre

# install icon theme
sudo apt-get install paper-icon-theme

# install cursor theme
sudo apt-get install paper-cursor-theme

#arc theme
sudo apt-get install arc-theme

#java 8 openjdk
sudo apt-get install openjdk-8-jdk

#r-base language
sudo apt-get install r-base r-base-dev

#redshift
sudo apt-get install redshift

#git
sudo apt-get install git
git config --global user.email "kenney.jnk@gmail.com"
git config --global user.name "Jack Kenney"
git config --global credential.helper cache

# pdf concatenator: pdftk
# ex: pdftk pdf1.pdf pdf2.pdf output pdf-cat.pdf
sudo apt install pdftk

#python
sudo apt install python
sudo apt install python-pip
pip install --upgrade pip
sudo apt install python3
sudo apt install python3-pip
pip3 install --upgrade pip3

#docker
sudo apt-get install docker-ce

#LAST
#catch any trailing packages:
sudo apt-get upgrade
sudo apt-get install

#restricted extras - has a menu
sudo apt-get install ubuntu-restricted-extras

#clear all unnecessary packages
sudo apt autoremove

#change grub settings to preferred user interface
#this makes the last opened OS the default boot
sudo echo "\nGRUB_DEFAULT=saved\nGRUB_SAVEDEFAULT=true\n" >> /etc/default/grub
sudo update-grub
