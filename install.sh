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
exit 1

fi
echo "  => done."
if [ $? != 0 ]; then
echo "setup nearly complete.
echo "Edit the config with \"nano ~/ccminer/config.json\""
echo "go to line 15 and change your worker name"
echo "use \"<CTRL>-x\" to exit and respond with"
exit 1
echo '$ ls -l ccminer'
ls -l cpuminer

echo "Stripping..."

strip -s ccminer

[ $? = 0 ] || exit $?
echo "  => done."
