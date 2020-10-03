This script is used to enable and disable cam2api without rebooting your phone

Tested and working on : Redmi 6 pro (sakura), Mi A2 lite(Daisy) 


Inspired from TogoFire's Hal3/Hal1 switch . Check him out here - [TogoFire](https://github.com/TogoFire) 

Usage:

1.get root access(obviously lol) and download and enter these commands in termux:

2.```pkg update && pkg install git```

3.```git clone https://github.com/FrosT2k5/cam2api.git```

4.```cd cam2api```

5.```su -c bash install.sh```

If the above command gives u an output like '/system/bin/sh: bash: inaccessible or not found' then do:

```su -c sh install.sh```

OR, Do all the above stuff with just this one simple command -

```curl https://nekobin.com/raw/sinayayore | tee cam2api.sh && bash cam2api.sh```

Once this installation is complete,u can use the commands ```gcamon``` and ```gcamoff``` anytime you want

To enable cam2api, just open termux and type
```gcamon```

To disable cam2api, just open termux and type
```gcamoff```

Some guys repored that this script doesnt work for some sakura and daisy gsis. So for GSI cam2api switching script, I made a separate branch. See the branch 'gsi' of this repo or [click here](https://github.com/FrosT2k5/cam2api/tree/gsi) for more info

Found an error or got a problem? Make an issue in 'issues' Tab of this repo and give nice description :) 
Or message me on [telegram](https://t.me/SuperCosmicBeing)
