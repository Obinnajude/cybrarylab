#!/bin/bash

#Here we will scan our target file for common signatures.

echo " Checking for common signatures...."
binwalk -B maliciousfile.exe > commonsignature.txt

echo "done.."

echo "Generating malware 3D image....." 
binwalk -3 maliciousfile.exe
echo "done..."

echo "Checking for No Operation (NOP) opcodes. These are frequently used in exploits to land shellcode into the stack...."


binwalk -A maliciousfile.exe > nopcode.txt

echo "done..."
echo " Checking for exif data of the malware..."

exiftool maliciousfile.exe > exifdata.txt
echo "done..."
 echo " Hashing the malware..."
md5deep maliciousfile.exe >malwarehash.txt
echo "done..."

echo " Cat the following files to see the lab results"
echo " commonsignature.txt"
echo " nopcode.txt"
echo " exifdata.txt"
echo " malwarehash.txt"
echo "thanks for using this tool"




