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

