# Duckstation - General Guide

<img src="../../../wiki_images/logos/duckstation-logo.png" width="100">

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

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .bin + .cue | Binary disc image file with cue sheet |
| .img        | Disc image file |
| .iso        | Standard ISO disc image |
| .chd        | Compressed Hunks of Data **(Recommended)** |
| .mds        | Media Descriptor File |
| .pbp        | PlayStation Portable Update file |
| .ecm        | ECM compressed file |

---

## Does Duckstation require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">


Yes, there exists several PSX BIOS from different regions and hardware versions.

You need at least one.

[PSX BIOS Guide on Github](https://github.com/LiquidSevens/psx-models-bios-guide)

Here is a few:

| Region | BIOS File Name | Description |
|--------|----------------|-------------|
| **Japan (NTSC-J)** | `scph1000.bin` | First retail PSX BIOS featuring early hardware behavior. |
| **Japan (NTSC-J)** | `scph5500.bin` | Stable mid-generation Japanese BIOS revision. |
| **Japan (NTSC-J)** | `scph7000.bin` | Later Japanese BIOS, same revision as SCPH-5500. |
| **USA (NTSC-U)** | `scph1001.bin` | Most common and highly compatible North American BIOS. |
| **USA (NTSC-U)** | `scph5501.bin` | Later, more accurate BIOS for NTSC-U systems. |
| **USA (NTSC-U)** | `scph7001.bin` | Updated revision similar to SCPH-5501. |
| **Europe (PAL-E)** | `scph5502.bin` | Standard BIOS used for most PAL titles. |
| **Europe (PAL-E)** | `scph7002.bin` | Later PAL revision with improved compatibility. |
| **PS One (Slim Model)** | `scph101.bin` | BIOS for the compact PS One hardware revision. |


### Where to put the PSX BIOS?

Directly into the folder

`retrodeck/bios/`

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/psx/` |                               |  
| Saves Folder |`retrodeck/saves/psx/duckstation/` |                               |  
| States Folder |`retrodeck/states/psx/duckstation/` |                               |  
| Texture Packs Folder |`retrodeck/texture_packs/Duckstation/` |       Corresponds to `duckstation/textures` folder                        | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/duckstation/`         |   `settings.xml`, `gameProfiles` folder, `controllerProfiles` folder|
| BIOS Folder | `retrodeck/bios/` | |

---

## Adding Texture Packs

The `~/retrodeck/texture_packs/duckstaiton/` represents the `/duckstation/textures/` folder in Duckstation.

**Note:** <br>
Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

**Note:**<br>
`TITLEID` is different for every game.

---

## Adding texture packs

- Open up Duckstation inside `RetroDECK Configurator` by pressing `Open Emulator` - `Duckstation`.
- Go to `Settings` -> `Advanced` -> `Tweaks/Hacks` <br>

`Enable VRAM Write Texture Replacement` and set it to `On`.<br>

`Preload Texture Replacements` and set it to `On`.<br>

### Texture folder

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/texture_packs/duckstation/`. The folders are all named by `TITLEID`.
3. Move textures into the right `~/retrodeck/texture_packs/duckstation/<TITLEID>` folder.

---


