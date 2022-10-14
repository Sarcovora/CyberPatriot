#!/bin/bash

#check for root privileges
if [ $UID != '0' ]
    then
    echo 'Run with root privileges!!!'
	exit
fi


hostname=''

# fine operating system
if hostnamectl | grep "Operating System" | grep -i "Fedora"; then
	echo "Fedora"
	hostname='Fedora'
else if hostnamectl | grep "Operating System" | grep -i "Ubuntu"; then
	echo "Ubuntu"
	hostname='Ubuntu'
else if hostnamectl | grep "Operating System" | grep -i "Debian"; then
	echo "Debian"
	hostname='Debian'
else
	echo "Unknown"
	hostname='Unknown'
fi
fi
fi

# install firewall
ufw enable

# other stuff

# #update the system
# apt-get update -y
# apt-get upgrade -y


# #install ssh
# apt-get install openssh-server -y
