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

# setup git
git config --global user.name "$1"
git config --global user.email "$2"
# make ssh key
ssh-keygen -t rsa -b 4096 -C "$2"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
echo "Use this SSH key to authenticate with GitHub."
cat ~/.ssh/id_rsa.pub
# note you still have to manually add this to your github account for security