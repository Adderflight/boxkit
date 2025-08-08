#!/bin/bash

# RUN THIS FIRST

# remove chromium browser export
distrobox-export -a chromium-browser -d

# remove proton mail export
distrobox-export -a proton-mail -d

# remove binaries exports
distrobox-export -b /usr/bin/nmap -d
distrobox-export -b /usr/bin/httrack -d
distrobox-export -b /usr/bin/wine -d
