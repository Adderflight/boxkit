#!/bin/bash

# export chromium browser
distrobox-export -a chromium-browser

# export binaries
distrobox-export -b /usr/bin/nmap -ep /home/adderflight/.local/bin
distrobox-export -b /usr/bin/httrack -ep /home/adderflight/.local/bin

# install wine and export it
sudo dnf install -y wine

distrobox-export -b /usr/bin/wine -ep /home/adderflight/.local/bin
