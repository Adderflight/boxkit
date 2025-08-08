#!/bin/bash

# export chromium browser
distrobox-export -a chromium-browser

# install proton mail
sudo dnf install -y /home/adderflight/syncthing/programs-appimages/packages/ProtonMail-desktop-beta.rpm

distrobox-export -a proton-mail

# export binaries
distrobox-export -b /usr/bin/nmap -ep /home/adderflight/.local/bin
distrobox-export -b /usr/bin/httrack -ep /home/adderflight/.local/bin

# install wine and export it
sudo dnf install -y wine

distrobox-export -b /usr/bin/wine -ep /home/adderflight/.local/bin
