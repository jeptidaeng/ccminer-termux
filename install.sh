#!/bin/bash
echo "Updating and installing required things"
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
# Basic *wget instructions:
echo "./install.sh"
if ! wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/config.json ..; then
    echo "wget configuration"
    
if !  wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh ..; then

fi
# compile
echo "Compiling now"
if ! chmod +x config.json start.sh ..  ; then
    echo " Compiling"
    exit 3
else
   
   echo "setup nearly complete."
   echo "Edit the config with \"nano ~/ccminer/config.json\""
   echo "start the miner with \"cd ~/ccminer; ./start.sh\"."  
   
   echo "Done... you can use run script now"
