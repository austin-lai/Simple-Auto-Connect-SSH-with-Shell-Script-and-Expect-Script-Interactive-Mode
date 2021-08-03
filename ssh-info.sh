#!/bin/bash

# You can use interactive mode to collect SSH SERVER IP, USERNAME and PASSWORD
# By creating additional Shell script called "ssh-info.sh" with the content below
echo -n "Enter the SSH SERVER IP :"
read -s -e SERVER
echo -ne "SSH SERVER IP = $SERVER \n"

echo -n "Enter the SSH SERVER Port Number :"
read -s -e SSH_PORT
echo -ne "SSH SERVER Port = $SSH_PORT \n"

echo -n "Enter the SSH USERNAME :"
read -s -e USERNAME
echo -ne "USERNAME = $USERNAME \n"

echo -n "Enter the SSH PASSWORD for $USERNAME :"
read -s -e PASSWORD
echo -ne "\n"

# Then execute the expect script and passing the information to expect script
expect ./auto-ssh-with-expect.sh $SERVER $SSH_PORT $USERNAME $PASSWORD
