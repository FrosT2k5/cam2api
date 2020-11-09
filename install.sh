#!/bin/bash

# Colors
RED="\033[1;31m" # For errors / warnings
GREEN="\033[1;32m" # For info
YELLOW="\033[1;33m" # For info
BLUE="\033[1;36m" # For info again XD
NC="\033[0m" # reset color


if [ `whoami` != "root" ]; then
	echo -e "${RED}You need to run this script with root access, enter su -c bash install.sh after rooting your phone${NC}"
	exit
else
	echo -e "${GREEN}You are rooted, Yay! the script can continue${NC}"
	sleep 0.5
fi

BINDIR="${PREFIX}/bin"
CUD=`pwd`
whoi=`ls -la $BINDIR/termux-info | cut -b 14-20`

if [ -e $BINDIR/termux-info ]; then
	OS=ANDROID
else
	OS=RANDOM
fi

if [ $OS = "ANDROID" ]; then
	echo -e "${GREEN}Installing the gcamon/gcamoff module now${NC}"
	echo -e "${YELLOW}Getting root access now${NC}"
	su -c setprop camera.support 1
	sleep 1
	echo -e "${BLUE}Done${NC}"
	sleep 0.5

	echo -e "${YELLOW}Setting up files${NC}"
	cp $CUD/files/gcamon $BINDIR/
	cp $CUD/files/gcamoff $BINDIR/
	sleep 0.5
	echo -e "${BLUE}Done${NC}"
	sleep 0.5

	echo -e "${YELLOW}Setting up permissions${NC}"
	su -c chmod +x $BINDIR/gcamon
	su -c chmod +x $BINDIR/gcamoff
	su -c chown $whoi:$whoi $BINDIR/gcamon
	su -c chown $whoi:$whoi $BINDIR/gcamoff
	sleep 0.5
	echo -e "${BLUE}Done${NC}"
	sleep 0.5
	
	echo -e "${GREEN}You are now ready to use the gcamoff/gcamon script${NC}\n"
	echo -e "${YELLOW}To enable cam2api, enter gcamon${NC}"
	echo -e "${YELLOW}To disable cam2api, enter gcamoff\n"
	echo -e "${BLUE}No need to reboot between enabling and disabling cam2api using this scripts${NC}"
	echo -e "${BLUE}Script By Yash Patil(FrosT) Have fun :)${NC}"

else
	echo -e "${RED}Unknown system, this script is meant to be used in termux${NC}"
	echo -e "${RED}exiting${NC}"
	exit
fi
