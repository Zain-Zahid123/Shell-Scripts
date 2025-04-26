#!/bin/bash

echo " hello professionals "
echo " everythong is working fine "
name="zain"
echo " hello $name and  $(date)"
echo " enter username: "
read username
echo "$username"

read -p "enter username " name
echo "username is $name"

sudo useradd -m $username 
echo " suceessfully useradded "

echo " characters are $1 "
