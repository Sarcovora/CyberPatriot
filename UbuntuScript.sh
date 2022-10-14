#!/bin/bash

#check for root privileges
if [ $UID != '0' ]
    then
    echo please run with root privileges
    exit
fi

# find operating system
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

# #update the system
apt-get update -y
apt-get upgrade -y

# change all passwords
for user in awk -F':' '{ print $1}' /etc/passwd
do
	echo -e "CyberPatriot123\!nCyberPatriot123\!" | passwd user
done

# enable firewall
ufw enable

# configure password history
chmod 777 /etc/logon.defs
sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS 90/g' /etc/logon.defs
sed -i 's/PASS_MIN_DAYS.*/PASS_MIN_DAYS 10/g' /etc/logon.defs
sed -i 's/PASS_WARN_AGE.*/PASS_WARN_AGE 7/g' /etc/logon.defs
chmod 644 /etc/logon.defs

# configure password requirements
# #install ssh
# apt-get install openssh-server -y
# purge common unwanted services and malware
# other stuff

# list files in the user directory
dir /home -R