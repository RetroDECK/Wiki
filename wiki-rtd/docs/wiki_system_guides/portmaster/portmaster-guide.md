# PortMaster - General Guide

<img src="../../../wiki_images/logos/portmaster-logo.png" width="150">

PortMaster is a simple GUI tool designed to facilitate the downloading and installation of game ports for Linux devices and is self contained.

One of the goals of PortMaster is to not install or upgrade any existing OS libraries for any ports. Any of the ports that need a particular non-standard library are maintained within the ports' folder and made available specifically to that port during execution. 

**Note:** 

That not all 800+ ports are available for the X86_64 system, but the list keeps growing all the time.


### PortMaster Links:

[PortMaster Webpage](https://portmaster.games/index.html)

[PortMaster Github](https://github.com/PortsMaster)

[PortMaster Gamelist](https://portmaster.games/games.html)

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

## How-to launch PortMaster?

You go into the PortMaster menu in ES-DE and Open `PortMaster`. 

## How-to update PortMaster?

PortMaster is self-contained and will auto-update by itself when launched. 

You can also manually update it by going to `Options` -> `Update PortMaster` and `Update Ports`

## How-to add games to RetroDECK

Open `PortMaster` -> `All Ports` and choose the port you want to install, some ports might require additional files.

### If the game requires additional files

Check the [PortMaster Games List](https://portmaster.games/games.html) for details of the specific files needed for that game.

The required files should be put inside the `retrodeck/PortMaster/ports/<gamefolder>`. 

## Will more games be added?

Yes, the PortMaster team is always updating the Ports list. As the application is updated more ports will be added all the time for `X86_64` systems.