#!/bin/bash
echo "Updating and installing required things"
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
echo "Cloning and starting compiling"
 wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/config.json
# Basic *nix build instructions:
echo "./install.sh"
if ! wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh ..; then
    echo " chmod 777 configuration"
    exit 1
else
     chmod 77 ccminer config.json start.sh ..
fi
# compile
echo "Compiling now"
echo "now Error: Compiling"
exit 1
else
   
    echo "Done... you can use run script now"

   echo "setup nearly complete."
   echo "Edit the config with \"nano ~/ccminer/config.json\"" 

fi
