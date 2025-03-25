# Launching Desktop Games & Apps with RetroDECK

This experiment was initiated by the user* and **Daeymon**. Then later expanded upon by the RetroDECK Team. The goal was to explore the possibility of autobooting into RetroDECK when the Steam Decks Game Mode is launched.

**Note:** RetroDECK was never intended to be used in this manner, so things like inputs may work as expected.

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

### Extra Warning



## Prerequisites

### Add RetroDECK to Steam

You need to add RetroDECK to Steam.


## W.I.P

I figured out how to get gaming mode to launch directly into RetroDeck on the Steam Deck.

Firstly RetroDeck needs to be added as a Non-Steam game so its launchable manually from gaming mode. Get the ID of that non-steam game (creating a desktop shortcut from Steam in desktop mode is an easy way to get this). For me the ID was 14508945201516511232, but that will be assigned when the non-steam game is created so will be unique to each user.

Using desktop mode, go to the "/home/deck" file location and create a folder called "devkit-game".

Inside that folder, create a file called "devkit-steam" and put the following text inside the file, but remember to use your own ID for RetroDeck:

#!/bin/bash
steam "$@" steam://rungameid/14508945201516511232

Gaming mode will now boot into RetroDeck immediately. If the rungameid is invalid or becomes invalid, this will not brick the Steam Deck. Gaming mode will load as normal but with an immediate popup moaning that the game it has attempted to load does not exist.

Messing with the rest of the command line could indeed brick the Steam Deck, since Gamescope will no longer launch SteamOS on boot. If there was a way to force the device to boot into desktop mode, a brick like this would be fixable, but I'm currently unaware of a way to force boot into desktop mode.

I'm now actively using this, so combining this with being able launch Steam games #596, RetroDeck is now my primary interface on my Steam Deck. Very happy. Anyways, hope this share helps.
