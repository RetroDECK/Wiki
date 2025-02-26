# Duckstation - General Guide

<img src="../../../wiki_images/logos/duckstation-logo.png" width="150">

Duckstation is a Playstation 1 - PSX Emulator.

**Note: Legacy Emulator**

As of RetroDECK `0.9.0b` Duckstation have made licensing changes and is marked as Legacy. 

It will no longer receive any updates and is working as-is. 

---

### Duckstation Links:

[Duckstation - Webpage](https://www.duckstation.org/)

[Duckstation - Wiki](https://www.duckstation.org/wiki/)

[Duckstation - Game Compatibility](https://docs.google.com/spreadsheets/d/e/2PACX-1vRE0jjiK_aldpICoy5kVQlpk2f81Vo6P4p9vfg4d7YoTOoDlH4PQHoXjTD2F7SdN8SSBLoEAItaIqQo/pubhtml)

[Duckstation - Github](https://github.com/stenzek/duckstation)

---


## Where to put the games?

PSX games should be put under the `retrodeck/roms/psx/` directory.

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .bin + .cue | Binary disc image file with cue sheet |
| .img        | Disc image file |
| .iso        | Standard ISO disc image |
| .chd        | Compressed Hunks of Data **(Recommended)** |
| .mds        | Media Descriptor File |
| .pbp        | PlayStation Portable Update file |
| .ecm        | ECM compressed file |

## Does Duckstation require BIOS or Firmware?

Yes, there exists several PSX BIOS from different regions and hardware versions.

[PSX BIOS Guide on Github](https://github.com/LiquidSevens/psx-models-bios-guide)


### Where to put the PSX BIOS?

Directly into the folder

`retrodeck/bios/`

**Example:**

`retrodeck/bios/Scph1001.bin`

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/psx/` |                               |  
| Saves Folder |`retrodeck/saves/psx/duckstation/` |                               |  
| States Folder |`retrodeck/states/psx/duckstation/` |                               |  
| Texture Packs Folder |`retrodeck/texture_packs/Duckstation/` |       Corresponds to `duckstation/textures` folder                        | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/duckstation/`         |   `settings.xml`, `gameProfiles` folder, `controllerProfiles` folder|
| BIOS Folder | `retrodeck/bios/` | |

## Guide - Adding Texture Packs

The `~/retrodeck/texture_packs/duckstaiton/` represents the `/duckstation/textures/` folder in Duckstation.

**Note:** <br>
Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

**Note:**<br>
`TITLEID` is different for every game.

## Enable Custom Textures

- Open up Duckstation inside `RetroDECK Configurator` by pressing `Open Emulator` - `Duckstation`.
- Go to `Settings` -> `Advanced` -> `Tweaks/Hacks` <br>

`Enable VRAM Write Texture Replacement` and set it to `On`.<br>

`Preload Texture Replacements` and set it to `On`.<br>


## How do I add texture packs?

**Requirements:** Texture pack files <br>

**NOTE:** On the Steam Deck this could be easier to do in `Desktop Mode`.


### Texture folder directly

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/texture_packs/duckstation/`. The folders are all named by `TITLEID`.
3. Move textures into the right `~/retrodeck/texture_packs/duckstation/<TITLEID>` folder.



