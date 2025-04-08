#!/bin/bash
echo "Updating and installing required things"
yes | pkg update && pkg upgrade
yes | pkg install libjansson wget nano
echo "Cloning and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
# Basic *nix build instructions:
echo "./install.sh"
if ! wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/config.json ..; then
    echo "Error: build-linux-arm.sh configuration failed"
    exit 1
else
     wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh ..
fi
# compile
echo "Compiling now"
if ! chmod +x config.json start.sh   ; then
    echo "Error: Compiling failed"
    exit 1
else
   
   echo "setup nearly complete."
   echo "Edit the config with \"nano ~/ccminer/config.json\""
   echo "start the miner with \"cd ~/ccminer; ./start.sh\"."  
   
   echo "Done... you can use run script now"
fi
