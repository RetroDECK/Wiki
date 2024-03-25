# CEMU - General Guide

<img src="../../../wiki_images/logos/cemu-logo.png" width="150">

WIP

## Where to put the games
WiiU games should be put under the `retrodeck/roms/wiiu/` directory.

## Where to put the keys.txt files
`~/.var/app/net.retrodeck.retrodeck/data/Cemu`

This will be changed in a later update to the BIOS folder.

## Set up Online Play (2.0-72 WIP)

**NOTE: As of April 8th, 2024, the official Nintendo Network servers will be taken offline. Any means of connecting to those official servers will not be possible past this date. <br>Please proceed with these steps only with a Pretendo Network account for best results.**

> *As of Cemu Flatpak version 2.0-72 experimental, connection results are still mixed. Steps are applicable, just waiting on a more favorable release*

1. To create a Pretendo Network account, [follow this link] (https://pretendo.network/account/register)

    - Existing NNID are not usable on Pretendo Network, you must create a Pretendo account for Pretendo Network

2. Follow the [Cemu Online Play Guide](https://cemu.cfw.guide/online-play.html) to generate and dump the required user files for your Pretendo Account

**RetroDECK specific file locations:**

-  Wii U User Account’s usr and sys folders
    - Whatever `MLC Path` in `Options` -> `General settings` is configured to
    - by default it’s `<RetroDECK install location>/retrodeck/bios/Cemu`
  
- `otp.bin` and `seeprom.bin`
    - `~/.var/app/org.retrodeck.retrodeck/data/Cemu` 

## ES-DE Guide

The .wua archive format is the preferred method to use for Wii U games, but the method of using unpacked games is also documented here for reference.
.wud and .wux files are supported as well, but these two formats are not discussed here as the .wua format is clearly the way to go in the future.

**Method 1, using .wua files**<br>
Start Cemu and install the game, any updates as well as optional DLCs to the Cemu NAND. After the installation is completed, open the Title Manager from the Tools menu, select your game, right click and select Convert to compressed Wii U archive (.wua) and select your wiiu system directory as the target. You can modify the file name if you want to, or keep it at its default value. Press the Save button and the game will be automatically packaged as a .wua file.
Following this, just start ES-DE and the game should be shown as a single entry that can be launched using Cemu.

**Method 2, unpacked games**<br>
Using this unpacked approach, the content of each game is divided into the three directories code, content and meta.
The first step is to prepare the target directory in the wiiu system directory, for this example we'll go for the game Super Mario 3D World. So simply create a directory with this name inside the wiiu folder. Assuming you have your Wii U games stored in the suggested RetroDECK ROM directory above and RetroDECK is installed on your micro SD card, it should look something like the following:

- `/run/media/<SD card name>/retrodeck/roms/wiiu/Super Mario 3D World`

The next step is done inside the Cemu user interface. You should install the game, any updates as well as optional DLCs to the Cemu NAND. After the installation is completed, right click on the game and choose Game directory. An Explorer window should now open showing the content of the game. Here's the game directory for our example:

- `/run/media/<SD card name>/retrodeck/usr/title/00050000/10145d00/code`
    - Go up one level and copy the code, content and meta directories and paste them into the `/run/media/<SD card name>/retrodeck/roms/wiiu/Super Mario 3D World` directory.

It should now look something like the following:

- `/run/media/<SD card name>/retrodeck/roms/wiiu/Super Mario 3D World/code`
- `/run/media/<SD card name>/retrodeck/roms/wiiu/Super Mario 3D World/content`
- `/run/media/<SD card name>/retrodeck/roms/wiiu/Super Mario 3D World/meta`

Starting ES-DE should now show the Super Mario 3D World entry for the Wii U system. The actual game file with the extension .rpx is stored inside the code directory, and does not normally match the name of the game. For this example it's named RedCarpet.rpx. When scraping the .rpx file you therefore need to refine the search and manually enter the game name. ES-DE fully supports scraping of directories, so you can scrape the Super Mario 3D World folder as well.
