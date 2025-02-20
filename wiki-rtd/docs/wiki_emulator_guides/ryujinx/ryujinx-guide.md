# Ryujinx - General Guide

<img src="../../../wiki_images/logos/ryujinx-logo.svg" width="150">

Ryujinx was a Switch emulator. 

**Note: Legacy Emulator**

As of RetroDECK `0.9.0b` Ryujinx is marked as Legacy and has stopped it's development.

## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .xci        | Nintendo Switch Cartridge Image |
| .nsp        | Nintendo Submission Package |
| .nca        | Nintendo Content Archive |
| .nso        | Nintendo Switch Executable |
| .nro        | Nintendo Switch Homebrew |


## Does Ryujinx require BIOS or Firmware?

Yes, `prod.keys` `title.keys` and `.nca` files.

**Notice: Do not mix and match versions firmware and keys**

The installed firmware must have have the same version at your keys and .nca files, you can't mix and match as that can lead to crashes and black screens!

You need to make sure that the keys and firmware are from the same version.

Generally do not install the firmware from games. Instead provide your own firmware and keys from your own device.

### Where to put the key files?

Needs the key files `prod.keys`, `title.keys`.

**Keys:** 

`~/retrodeck/bios/switch/keys`

or 

`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/system/`


### How-to - Install the firmware

You can put the firmware inside the:

`~/retrodeck/bios/switch/firmware/`

Or you can put them anywhere as they need to be installed via:

`RetroDECK Configurator` ->  `Open Emulator` -> `Ryujinx` ->  `Tools` -> `Install Firmware` -> `Install from XCI or ZIP`

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Saves Folder |`retrodeck/saves/switch/ryujinx/` |      Contains the `nand`, `sdcard` folders                       |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/`         |   Contains most of Ryujinx internal folders|
| BIOS Folder | `retrodeck/bios/switch/` | Contains the `firmware`, `keys` folders  |
| Alternate Keys Folder | `~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/system/` |  |
| Mods  Folder | `~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/mods/` |  |


## Guide - Adding game patches

From within Ryujinx `Right Click` on a game and select `Manage Title Updates` and then navigate to the update files you would like to install and press `Save`.


## Guide - Adding DLC

From within Ryujinx `Right Click` on a game and select `Manage DLC` and then navigate to the update files you would like to install and press `Save`.


## Guide - Adding mods

From within Ryujinx `Right Click` on a game and select `Open Mods Folder` and put the mods you need in it's correct folder then go back to enable via the interface.

The current mapping for the mods folder is:

`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/mods/`


