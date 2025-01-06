# PortMaster - General Guide

<img src="../../../wiki_images/logos/portmaster-logo.png" width="150">

PortMaster is a simple GUI tool designed to facilitate the downloading and installation of game ports for Linux devices and is self contained.

One of the goals of PortMaster is to not install or upgrade any existing OS libraries for any ports. Any of the ports that need a particular non-standard library are maintained within the ports' folder and made available specifically to that port during execution. 

**Note:** 

That not all 800+ ports are available for the X86_64 system, but the list keeps growing all the time.


### PortMaster Links:

[PortMaster Github](https://github.com/PortsMaster)

[PortMaster Gamelist](https://portmaster.games/games.html)

[PortMaster Webpage](https://portmaster.games/index.html)

[PortMaster FAQ](https://portmaster.games/faq.html)

### Does PortMaster require BIOS / Firmware / Other files?

PortMaster does not require BIOS or Firmware but depending on the game you might need to supply the official game files from purchased titles to get them to run.

Check the [PortMaster Games List](https://portmaster.games/games.html) for details.

## Where are the files located?

There are two main directories:

`retrodeck/PortMaster/ports/` 

This contains the game files, savefiles and directories. This is also where you add any required game files.

`retrodeck/roms/portmaster/` 

This contains the auto generated launch scripts for ES-DE as `.sh` files. 

## How to use PortMaster?

You go into the PortMaster menu in ES-DE and Open `PortMaster`. 

The application will auto update to the latest version and from there a library of ports will be shown. 

You go to a port and press the download button and it will downloaded and added to the ES-DE interface under the PortMaster menu.





