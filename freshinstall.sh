#!/bin/bash

#FULL INSTALL SCRIPT FOR NEW LINUX I'M TIRED OF DOING IT ALL OVER THE PLACE:
#RUN with sudo sh filename.sh AND ENTER PASSWORD.

#To invert colors on key command use and bind to keyboard: xcalib -i -a

echo "Execute this program as follows: 'yes | sudo sh freshinstall.sh'"

echo "killing existing installation processes"
sudo killall dpkg
sudo dpkg --configure -a
#=========================================
#ADD REPOS BELOW HERE:
echo "adding repos:"
#PAPER icon and cursor
sudo add-apt-repository ppa:snwh/pulp
#Arc theme
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
#GOOGLE
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

#vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
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
mkdir ~/Projects
cd ~/Projects
git clone "https://github.com/jackkenney/assignments.git"
git clone "https://github.com/lbialik/brightness-redshift.git"
git clone "https://github.com/jackkenney/binds-work.git"
cd ..

#python
sudo apt install python
sudo apt install python-pip
pip install --upgrade pip
sudo apt install python3
sudo apt install python3-pip
pip3 install --upgrade pip3

wget http://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh
sh Anaconda3-4.3.0-Linux-x86_64.sh
conda create --name cs383 python=3.6
conda create --name binds python=3.6

#vscode
sudo apt-get install code

#brightness controller
sudo apt install brightness-controller

#laptop touchpad controller
sudo apt install xserver-xorg-input-synaptics

#ubuntu-gnome-desktop
sudo apt install ubuntu-gnome-desktop

#LAST
#catch any trailing packages:
sudo apt-get upgrade
sudo apt-get install

#restricted extras - has a menu
sudo apt-get install ubuntu-restricted-extras

#clear all unnecessary packages
sudo apt autoremove

#own everything in your home folder
sudo chown -R echo .

#change grub settings to preferred user interface
#this makes the last opened OS the default boot
sudo echo "GRUB_DEFAULT=saved" >> /etc/default/grub
sudo echo "GRUB_SAVEDEFAULT=true" >> /etc/default/grub
sudo update-grub

# Adding Keyboard shortcuts:
sh make_keyboard_shortcuts.sh


