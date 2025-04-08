
#!/bin/bash
echo "Updating and installing required things"
yes | pkg update && pkg upgrade -y
yes | pkg install libjansson wget nano -y
echo "wget and starting compiling"
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/ccminer
echo "Cloning and starting compiling"
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/config.json
wget https://raw.githubusercontent.com/Darktron/pre-compiled/generic/start.sh
chmod +x ccminer config.json start.sh
else
fi
# compile
echo "Compiling now"
echo "now Error: Compiling"
exit 1
else
   
   echo "Done... nano ~/ccminer/config.json"
fi
