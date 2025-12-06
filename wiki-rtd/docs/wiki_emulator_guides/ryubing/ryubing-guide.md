# Ryubing - General Guide

<img src="../../../wiki_images/logos/ryubing-logo.webp" width="100">

Ryubing is Switch emulator. 

---

## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

---

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .xci        | Nintendo Switch Cartridge Image |
| .nsp        | Nintendo Submission Package **(Recommended)** |
| .nca        | Nintendo Content Archive |
| .nso        | Nintendo Switch Executable |
| .nro        | Nintendo Switch Homebrew |

---

## Does Ryubing require BIOS or Firmware?

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

`~/.var/app/net.retrodeck.retrodeck/config/ryubing/system/`


### How-to: Install the firmware

You can put the firmware inside the:

`~/retrodeck/bios/switch/firmware/`

Or you can put them anywhere as they need to be installed via:

`RetroDECK Configurator` ->  `Open Emulator` -> `ryubing` ->  `Tools` -> `Install Firmware` -> `Install from XCI or ZIP`

---

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Saves Folder |`retrodeck/saves/switch/ryujinx/` or `~/.var/app/net.retrodeck.retrodeck/config/ryubing/bis/user/save/`|      Contains the `nand`, `sdcard` folders, suffers sometimes from symlink issues    |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/ryubing/`         |   Contains most of ryubing internal folders|
| BIOS Folder | `retrodeck/bios/switch/` | Contains the `firmware`, `keys` folders  |
| Alternate Keys Folder | `~/.var/app/net.retrodeck.retrodeck/config/ryubing/system/` |  |
| Mods  Folder | `~/.var/app/net.retrodeck.retrodeck/config/ryubing/mods/` |  |

---

## Adding Game Patches

From within ryubing `Right Click` on a game and select `Manage Title Updates` and then navigate to the update files you would like to install and press `Save`.

---

## Adding DLC

From within ryubing `Right Click` on a game and select `Manage DLC` and then navigate to the update files you would like to install and press `Save`.

---

## Adding Mods

From within ryubing `Right Click` on a game and select `Open Mods Directory` and put the mods you need in it's correct folder then go back to enable via the interface.

The current mapping for the mods directory is:

`~/.var/app/net.retrodeck.retrodeck/config/ryubing/mods/`

You can also manged the mods by `Right Click` on a game and select `Manage Mods`

---