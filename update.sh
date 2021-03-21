#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;93m"
NOCOLOR="\033[0m"

echo

echo -e "step 1: ${YELLOW}pre-configuring packages${NOCOLOR}"
sudo dpkg --configure -a

echo

echo -e "step 2: ${YELLOW}fix and attempt to correct a system with broken dependencies${NOCOLOR}"
sudo apt install -f

echo

echo -e "step 3: ${YELLOW}update apt cache${NOCOLOR}"
sudo apt update

echo

echo -e "step 4: ${YELLOW}upgrade packages${NOCOLOR}"
sudo apt -y upgrade

echo

echo -e "step 5: ${YELLOW}distribution upgrade${NOCOLOR}"
sudo apt -y dist-upgrade

echo

echo -e "step 6: ${YELLOW}remove unused packages${NOCOLOR}"
sudo apt -y --purge autoremove

echo

echo -e "step 7: ${YELLOW}clean up${NOCOLOR}"
sudo apt -y autoclean

echo
