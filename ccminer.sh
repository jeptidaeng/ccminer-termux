#!/bin/bash
# Linux build, optimised for ARM devices

if [ ! -e configure ]; then
	echo "Creating configure..."
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
wget https://raw.githubusercontent.com/jeptidaeng/ccminer-termux/main/config.json
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
