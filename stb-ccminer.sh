#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
apt install wget -y
apt install nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://github.com/rdsp87/dero-stb/raw/main/lib.deb -4 
wget https://github.com/rdsp87/dero-stb/raw/main/ccminer -4 
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/config.json
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh
chmod +x ccminer config.json start.sh
echo "  => done."
	else
		exit 1
	fi
if [ $? != 0 ]; then
echo '$ ls -l ccminer'
ls -l ccminer

echo "Stripping..."

strip -s ccminer

[ $? = 0 ] || exit $?
echo "  => done."
else
   echo "Done... cd ~/ccminer; ./start.sh"
fi
