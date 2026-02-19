# Ryujinx - General Guide (Archive)

<img src="../../../wiki_images/logos/ryujinx-logo.svg" width="75">

Ryujinx was a Switch emulator. 

**Note: Archived Emulator**

As of RetroDECK `0.9.0b` Ryujinx was removed from RetroDECK.

## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .xci        | Nintendo Switch Cartridge Image |
| .nsp        | Nintendo Submission Package **(Recommended)** |
| .nca        | Nintendo Content Archive |
| .nso        | Nintendo Switch Executable |
| .nro        | Nintendo Switch Homebrew |


## Does Ryujinx require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

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


### How-to: Install the firmware

You can put the firmware inside the:

`~/retrodeck/bios/switch/firmware/`

Or you can put them anywhere as they need to be installed via:

`RetroDECK Configurator` ->  `Open Emulator` -> `Ryujinx` ->  `Tools` -> `Install Firmware` -> `Install from XCI or ZIP`

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Saves Folder |`retrodeck/saves/switch/ryujinx/` or `~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/bis/user/save/`|      Contains the `nand`, `sdcard` folders, suffers sometimes from symlink issues    |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/`         |   Contains most of Ryujinx internal folders|
| BIOS Folder | `retrodeck/bios/switch/` | Contains the `firmware`, `keys` folders  |
| Alternate Keys Folder | `~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/system/` |  |
| Mods  Folder | `~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/mods/` |  |


## How-to: Add Game Patches

From within Ryujinx `Right Click` on a game and select `Manage Title Updates` and then navigate to the update files you would like to install and press `Save`.


## How-to: Add DLC

From within Ryujinx `Right Click` on a game and select `Manage DLC` and then navigate to the update files you would like to install and press `Save`.


## How-to: Add Modss

From within Ryujinx `Right Click` on a game and select `Open Mods Directory` and put the mods you need in it's correct folder then go back to enable via the interface.

The current mapping for the mods directory is:

`~/.var/app/net.retrodeck.retrodeck/config/Ryujinx/mods/`

You can also manged the mods by `Right Click` on a game and select `Manage Mods`

## How-to: Move in-game saves from Yuzu to Ryujinx

Open both applications and  `Right Click` on a game and select:

- **Ryujinx:**`Open User Save Directory` 
- **Yuzu:** `Save Data Destination`

Then simply copy the files from one directory to the other.

