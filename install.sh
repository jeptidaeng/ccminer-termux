#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/config.json
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh
chmod +x ccminer config.json start.sh
echo "  => done.. you can use run script now"
	else
		exit 1
   echo "
fi
