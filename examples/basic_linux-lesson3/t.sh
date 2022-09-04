#!/bin/bash

USERNAME="testuser2"

if [ $UID != 0 ]; then
        echo "Can't execute this script. Need root privileges"
        exit 1
fi
echo "Add user $USERNAME"
useradd -g 100 -G 999  -m  -s /bin/bash $USERNAME

echo "Show $USERNAME info"
id $USERNAME

echo "Delete user $USERNAME"
userdel -rf $USERNAME

echo "Show $USERNAME info again"
id $USERNAME
