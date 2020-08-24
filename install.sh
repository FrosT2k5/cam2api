#!/data/data/com.termux/files/usr/bin/sh
if [ `whoami` != "root" ]; then
	echo "You need to run this script with root access, enter su -c bash install.sh after rooting your phone"
	exit
else
	echo "You are rooted, Yay! the script can continue"
fi

BINDIR="${PREFIX}/bin"
CUD=`pwd`
if [ -e $BINDIR/termux-info ]; then
	OS=ANDROID
else
	OS=RANDOM
fi

if [ $OS = "ANDROID" ]; then
	echo "Installing the gcamon/gcamoff module now"
	echo "Getting root access now"
	su -c setprop camera.support 1
	sleep 1
	echo "Done"

	echo "Setting up files"
	mv $CUD/files/gcamon $BINDIR/
	mv $CUD/files/gcamoff $BINDIR/
	sleep 0.5
	echo "Done"

	echo "Setting up permissions"
	chmod +x $BINDIR/gcamon
	chmod +x $BINDIR/gcamoff
	sleep 0.5
	echo "Done"

	echo "You are now ready to use the gcamoff/gcamon script"
	echo "To enable cam2api, enter gcamon"
	echo "To disable cam2api, enter gcamoff"
	echo "No need to reboot between enabling and disabling cam2api using this scripts"
	echo "Script By Yash Patil\(FrosT\) Have fun :\)"

else
	echo "Unknown system, this script is meant to be used in termux"
	echo "exiting"
	exit
fi
