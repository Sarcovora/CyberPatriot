#!/bin/bash

#check for root privileges
if [ $UID != '0' ]
    then
    echo please run with root privileges
    exit
fi

# fine operating system
if hostnamectl | grep "Operating System" | grep -i "Fedora"; then
	echo "Fedora"
else if hostnamectl | grep "Operating System" | grep -i "Ubuntu"; then
	echo "Ubuntu"
else if hostnamectl | grep "Operating System" | grep -i "Debian"; then
	echo "Debian"
else
	echo "Unknown"
fi
fi
fi




# other stuff

# #update the system
# apt-get update -y
# apt-get upgrade -y

# #install firewall
# ufw enable
# apt-get install gufw -y

# #install ssh
# apt-get install openssh-server -y
