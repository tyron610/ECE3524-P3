#!/bin/bash

# Tyron Everett
# ECE 3524
# Project 3
np=$(ifconfig -a)
nr=$(netstat -r )
ni=$(netstat -i)
d=$(date)
hh=$(hostname)
hd=$(hostname -d)
hf=$(hostname --fqdn)
hn=$(hostname -i)
dn=$(hostname -I)
l=$(last)
du=$(du -a)
pIP=$(wget -qO - icanhazip.com)
w=$(who -H)
os=$(uname -o)
rel=$(lsb_release --release)
code=$(lsb_release --codename)
s=$(lsb_release -i)
sr=$(lsb_release -d)
h=$(hostname -A)
cnt=1
echo $d
echo "---------------------------"
printf " Main Menu\n"
echo "---------------------------"
printf "1.  Operating system info\n"
printf "2.  Hostname and DNS info\n"
printf "3.  Network info\n"
printf "4.  Who is online\n"
printf "5.  Last Logged in users\n"
printf "6.  My IP address\n"
printf "7.  My disk usage\n"
printf "8.  My home file-tree\n"
printf "9.  File operations\n"
printf "10. Exit\n"
while [ $cnt -eq 1 ] 
do 
printf "Enter your choice [ 1 - 10 ] "
read arg

if [ $arg -eq 1 ]
then
	echo "-------------------------------------"
	printf " System Information\n"
	echo "-------------------------------------"
	printf "$os\n"
	printf "$s\n"
	printf "$sr\n"
	printf "$rel\n"
	printf "$code\n"
	printf "Press [Enter] key to continue..."
	read enter

elif [ $arg -eq 2 ]
then
	echo "-------------------------------------"
	printf " Hostname and DNS information\n"
	echo "-------------------------------------"
	printf "Hostname : $hh\n"
	printf "DNS domain : $hd\n"
	printf "FUlly qualified domain name : $hf\n"
	printf "Network address (IP) : $hn\n"
	printf "DNS name servers (DNS IP) : $dn"
	printf "\n"
	printf "Press [Enter] key to continue..."
	read enter
elif [ $arg -eq 3 ]
then
	echo "-------------------------------------"
	printf " Network Information\n"
	echo "-------------------------------------"
	printf "Total network interfaces found: 1\n"
	printf "*** IP Addresses Information ***\n"
	printf "$np\n"
	printf "***********************\n"
	printf "*** Network routing ***\n"
	printf "***********************\n"
	printf "$nr\n"
	printf "*************************************\n"
	printf "*** Interface traffic information ***\n"
	printf "*************************************\n"
	printf "$ni\n"
	printf "\n"
	printf "Press [Enter] key to continue..."
	read enter

elif [ $arg -eq 4 ]
then
	echo "-------------------------------------"
	printf " Who is online:\n"
	echo "-------------------------------------"
	printf "$w"
	printf "\n"
	printf "Press [Enter] key to continue..."
	read enter

elif [ $arg -eq 5 ] 
then
	echo "-------------------------------------"
	printf " List of last logged in users\n"
	echo "-------------------------------------"
	printf "$l"
	printf "\n"
	printf "Press [Enter] key to continue..."
	read enter

elif [ $arg -eq 6 ]
then
	echo "-------------------------------------"
	printf " Public IP information\n"
	echo "-------------------------------------"
	printf "$pIP"
	printf "\n"
	printf "Press [Enter] key to continue..."
	read enter

elif [ $arg -eq 7 ]
then
	echo "-------------------------------------"
	printf " Disk Usage Info\n"
	echo "-------------------------------------"
	printf "$du"
	printf "\n"
	printf "Press [Enter] key to continue..."
	read enter
elif [ $arg -eq 8 ]
then
	sh ./Proj1.sh
	printf "Press [Enter] key to continue..."
	read enter
elif [ $arg -eq 10 ]
then
	cnt=0
	
	
fi
done

