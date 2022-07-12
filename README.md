# Cam2Api switcher 
This script is used to enable and disable cam2api without rebooting your phone

Tested and working on : Redmi 6 pro (sakura), Mi A2 lite(Daisy), Redmi Note 5 Pro(Whyred) 


Inspired from TogoFire's Hal3/Hal1 switch . Check him out here - [TogoFire](https://github.com/TogoFire) 

# Installation 

Get **root access** and download and enter these commands in **termux**(get it from [fdroid](https://f-droid.org/en/packages/com.termux) or [playstore](https://play.google.com/store/apps/details?id=com.termux)[(deprecated)](https://github.com/termux/termux-app#google-playstore-deprecated)

**Quick Installation**

```
curl -L www.frost2k5.me/cam2api/ | tee cam2api.sh && bash cam2api.sh
```

Run the above command, it should install cam2api switcher. In case it doesn't, install manually via commands given below:

```
pkg update && pkg install git
```

```
git clone https://github.com/FrosT2k5/cam2api.git
```

```
cd cam2api
```

```
su -c bash install.sh
```

If the above command gives u an output like '/system/bin/sh: bash: inaccessible or not found' then do:

```
su -c sh install.sh
```

#  Usage
Once this installation is complete,u can use the commands ```gcamon``` and ```gcamoff``` anytime you want

To enable cam2api, just open termux and type
```
gcamon
```

To disable cam2api, just open termux and type
```
gcamoff
```

# Issues

Found an error or got a problem? Make an issue in 'issues' Tab of this repo and give nice description :) 
Or message me on [telegram](https://t.me/SuperCosmicBeing)

Made with ❤️ by FrosT2k5
