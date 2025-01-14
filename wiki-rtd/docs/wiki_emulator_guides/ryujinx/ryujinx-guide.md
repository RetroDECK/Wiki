# Ryujinx - General Guide

<img src="../../../wiki_images/logos/ryujinx-logo.svg" width="150">

**Note: Legacy Emulator**

Ryujinx have stopped it's development and is marked as Legacy as of RetroDECK 0.9.0b. It will no longer receive any updates or support more and is working as-is. 


## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

## What file formats are supported?

```
.xci
.nsp
.nca
.nso
.nro
```


## Does Ryujinx require BIOS or Firmware?

Yes, `prod.keys` `title.keys` and `.nca` files.

**Notice: Do not mix and match versions firmware and keys**

The installed firmware must have have the same version at your keys and .nca files, you can't mix and match as that can lead to crashes and black screens!

You need to make sure that the keys and firmware are from the same version.

Generally do not install the firmware from games. Instead provide your own firmware and keys from your own device.

### Where to put the firmware files?

Needs the key files `prod.keys`, `title.keys` and the firmware files in the following directories:

**Keys:** `~/retrodeck/bios/switch/keys`

**Firmware:** `~/retrodeck/bios/switch/registered`

The directory tree should look like this example:
```
retrodeck/bios/switch
├── keys
│   ├── prod.keys
│   └── title.keys
└── registered
    └── XXX amount of .nca files goes here
```

### How-to - Install the firmware

Ryujinx also requires the firmware to be installed via `RetroDECK Configurator` ->  `Open Emulator` -> `Ryujinx` ->  `Tools` -> `Install Firmware` -> `Install from XCI or ZIP`

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Saves Folder |`retrodeck/saves/switch/ryujinx/` |      Contains the `nand`, `sdcard` folders                       |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/`         |   Contains most of Ryujinx internal folders|
| BIOS Folder | `retrodeck/bios/switch/` | Contains the `firmware`, `keys` folders  |
| Mods  Folder | `~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/mods/` |  |


## Guide - Adding game patches

From within Ryujinx `Right Click` on a game and select `Manage Title Updates` and then navigate to the update files you would like to install and press `Save`.


## Guide - Adding DLC

From within Ryujinx `Right Click` on a game and select `Manage DLC` and then navigate to the update files you would like to install and press `Save`.


## Guide - Adding mods

From within Ryujinx `Right Click` on a game and select `Open Mods Folder` and put the mods you need in it's correct folder then go back to enable via the interface.

The current mapping for the mods folder is:

`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/mods/`


