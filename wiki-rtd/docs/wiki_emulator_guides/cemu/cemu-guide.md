# CEMU - General Guide

<img src="../../../wiki_images/logos/cemu-logo.png" width="150">


### CEMU Links:

[CEMU Compatibility Guide](https://compat.cemu.info/)

[CEMU Wiki](https://wiki.cemu.info/wiki/Main_Page)

[CEMU Github](https://github.com/cemu-project/Cemu)

[CEMU Webpage](https://cemu.info/)


## Where to put the games
WiiU games should be put under the `retrodeck/roms/wiiu/` directory.

The supported file formats are: `.wua` and is the preferred method to use for Wii U games. But it also supports `.wud` `.wux` and `.rpx`.

## Where to put the keys.txt files
`~/.var/app/net.retrodeck.retrodeck/data/Cemu`

This will be changed in a later update to the BIOS folder.

## How to add games

(This needs to be rewritten)
Start Cemu and install the game, any updates as well as optional DLCs to the Cemu NAND. After the installation is completed, open the Title Manager from the Tools menu, select your game, right click and select Convert to compressed Wii U archive (`.wua`) and select your wiiu system directory as the target. You can modify the file name if you want to, or keep it at its default value. Press the Save button and the game will be automatically packaged as a `.wua` file.
Following this, just start ES-DE and the game should be shown as a single entry that can be launched using Cemu.

## Set up Online Play (2.0-72 WIP)

**NOTE: As of April 8th, 2024, the official Nintendo Network servers will be taken offline. Any means of connecting to those official servers will not be possible past this date. <br>Please proceed with these steps only with a Pretendo Network account for best results.**

> *As of Cemu Flatpak version 2.0-72 experimental, connection results are still mixed. Steps are applicable, just waiting on a more favorable release*

1. To create a Pretendo Network account, [follow this link] (https://pretendo.network/account/register) and then follow [these instructions](https://pretendo.network/docs/install/wiiu) to log in with your Pretendo Network account on a Wii U

    - Existing NNID are not usable on Pretendo Network, you must create a Pretendo account for Pretendo Network

2. Follow the [Cemu Online Play Guide](https://cemu.cfw.guide/online-play.html) to generate and dump the required user files for your Pretendo Account

**RetroDECK specific file locations:**

-  Wii U User Account’s `usr` and `sys` folders
    - Whatever `MLC Path` in `Options` -> `General settings` is configured to
    - by default it’s `<RetroDECK install location>/retrodeck/bios/Cemu`
  
- `otp.bin` and `seeprom.bin`
    - `~/.var/app/org.retrodeck.retrodeck/data/Cemu` 
