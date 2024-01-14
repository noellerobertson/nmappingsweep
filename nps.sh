#!/bin/bash

# nmap Ping Sweep script. Checks if nmap is installed. If it is already installed, continues with the Ping Sweep. If not, installs nmap and then proceeds with Ping Sweep.

if ! command -v nmap >/dev/null 2>&1; then
    echo "Nmap cannot be found. Installing..."
    
    # Install nmap with package manager of the distro (edit if different).
    if command -v apt-get >/dev/null 2>&1; then
        sudo apt-get install -y nmap
    else
        echo "Nmap could not be installed. Is the package manager correct?"
        exit 1
    fi

    # Check again if nmap is now installed
    if [ $? -eq 0 ]; then
      echo "Nmap was successfully installed."
      exit 1
    fi
fi

# Conduct the ping sweep and save the output to a file.

target_ips="172.20.240.10 172.20.240.20 172.20.242.10 172.20.242.200 172.20.241.20 172.20.241.30 172.20.241.40 172.20.242.150"
echo "Conducting ping sweep on the following IP addresses: $target_ips"
nmap -p 1-1000 $target_ips -oG pingsweep.txt
