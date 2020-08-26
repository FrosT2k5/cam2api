#!/data/data/com.termux/files/usr/bin/sh
if [ `whoami` != "root" ]; then
	echo "You need to run this script with root access, enter su -c bash install.sh after rooting your phone"
	exit
else
	echo "You are rooted, Yay! the script can continue"
fi

BINDIR="${PREFIX}/bin"
CUD=`pwd`
whoi=`ls -la /data/data/com.termux/files/usr/bin/pkg | cut -b 14-20`
echo $whoi

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
	echo "Done\n"
	sleep 0.5

	echo "Setting up files"
	cp $CUD/files/gcamon $BINDIR/
	cp $CUD/files/gcamoff $BINDIR/
	sleep 0.5
	echo "Done\n"
	sleep 0.5

	echo "Setting up permissions"
	su -c chmod +x $BINDIR/gcamon
	su -c chmod +x $BINDIR/gcamoff
	su -c chown $whoi:$whoi $BINDIR/gcamon
	su -c chown $whoi:$whoi $BINDIR/gcamoff
	sleep 0.5
	echo "Done"
	sleep 0.5
	
	echo "You are now ready to use the gcamoff/gcamon script\n"
	echo "To enable cam2api, enter gcamon"
	echo "To disable cam2api, enter gcamoff\n"
	echo "No need to reboot between enabling and disabling cam2api using this scripts"
	echo "Script By Yash Patil\(FrosT\) Have fun :\)"

else
	echo "Unknown system, this script is meant to be used in termux"
	echo "exiting"
	exit
fi
