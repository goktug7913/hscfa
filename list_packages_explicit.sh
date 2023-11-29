#!/bin/bash
# List all explicitly installed packages, excluding base and base-devel
pacman -Qei | awk '/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }'