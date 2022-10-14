import os
import subprocess
from subprocess import call

def execOut(cmd):
	proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

	o, e = proc.communicate()

	print('Output: ' + o.decode('ascii'))
	print('Error: '  + e.decode('ascii'))
	print('code: ' + str(proc.returncode))
	# return (o.decode('ascii'), e.decode('ascii'), str(proc.returncode))

def execall(cmd):
	call(cmd, shell=True)

def main():
	#check for root privileges
	print("Checking for root privileges...")
	# print(execOut('echo $UID'))
	execOut('echo $UID')
	# if (execOut('echo $UID')[0] != '0'):
	# 	print("You need to run this script as root!")
	# 	exit(1)
	# pass

main()
# if [ $UID != '0' ]
#     then
#     echo please run with root privileges
#     exit
# fi

# # fine operating system
# if hostnamectl | grep "Operating System" | grep -i "Fedora"; then
# 	echo "Fedora"
# else if hostnamectl | grep "Operating System" | grep -i "Ubuntu"; then
# 	echo "Ubuntu"
# else if hostnamectl | grep "Operating System" | grep -i "Debian"; then
# 	echo "Debian"
# else
# 	echo "Unknown"
# fi
# fi
# fi

# # install firewall
# ufw enable

# other stuff

# #update the system
# apt-get update -y
# apt-get upgrade -y


# #install ssh
# apt-get install openssh-server -y
