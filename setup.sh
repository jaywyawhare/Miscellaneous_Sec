#!/bin/bash

echo "All inputs are case sensitive"
read -p "Enter your username: " uname
read -p "Enter the user-password: " upass
read -p "Enter the root-password: " rpass

#find editor present in the system
which nano > /dev/null
if [ $? -eq 0 ]
then
    editor=nano
else
    which pico > /dev/null
    if [ $? -eq 0 ]
    then
        editor=pico
    else
        echo "No editor found"
        exit 1
    fi
fi

if editor=$nano
then
    
    echo "$uname ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
    echo "$uname:$upass" | chpasswd
    echo "$rpass" | chpasswd
    echo "User created successfully"
else
    
    echo "$uname ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
    echo "$uname:$upass" | chpasswd
    echo "$rpass" | chpasswd
    echo "User created successfully"
fi
sudo -i
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git wget curl build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake cmake libuv1-dev libmicrohttpd-dev libssl-dev jq libsodium-dev zlib1g-dev software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt install code
sudo apt autoremove -y

