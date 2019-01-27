#!/bin/bash
if [ ! -n "$2" ];
then { 
    echo "You must pass \"Name\" \"example@email.com\" to this file"; exit 1; }
fi

# basic house keeping
sudo apt-get install snapd git
sudo snap install spotify

# to enable dark theme
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt install elementary-tweaks
# now go to settings > tweaks > appearance > prefer dark variant

# gestures - https://github.com/iberianpig/fusuma
sudo gpasswd -a $USER input
sudo apt-get install libinput-tools
sudo apt-get install xdotool
sudo apt-get --fix-broken install
sudo apt-get install libinput-tools
sudo apt-get install xdotool
sudo gem install fusuma # you have to do this again
sudo apt-get --fix-broken install
sudo apt-get install libinput-tools
sudo apt-get install xdotool
cp ./config.yml /home/echo/.config/fusuma/config.yml # move the custom settings

# setup git
git config --global user.name "$1"
git config --global user.email "$2"
# make ssh key
ssh-keygen -t rsa -b 4096 -C "$2"
eval "$(ssh-agent -s)"
ssh-add /home/echo/.ssh/id_rsa
echo "Use this SSH key to authenticate with GitHub."
cat /home/echo/.ssh/id_rsa.pub
# note you still have to manually add this to your github account for security


cd /home/echo/
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh

#########
# Manual TODO: To help ensure proper suspend for at least Huawei Matebook X Pro
#   sudo vim /etc/default/acpi-support
# Edit this line as such (I had to add dbus): 
#   SUSPEND_METHODS="dbus dbus-pm dbus-hal pm-utils"


