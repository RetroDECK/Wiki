# PPSSPP - General Guide

<img src="../../../wiki_images/logos/ppsspp-logo.png" width="75">

A PSP emulator that can also upscale textures to make them sharper, and you can enable post-processing shaders to adjust color and brightness the way you like, and other effects. 

---

### PPSSPP Links:

[PPSSPP - Webpage](https://www.ppsspp.org/)

[PPSSPP - Docs](https://www.ppsspp.org/docs/)

[PPSSPP - Getting Started Guide](https://www.ppsspp.org/docs/getting-started/)

[PPSSPP - Blog](https://www.ppsspp.org/blog/)

[PPSSPP - FAQ](https://www.ppsspp.org/docs/faq/)

[PPSSPP - Game Compatibility](https://report.ppsspp.org/games)

[PPSSPP - Github](https://github.com/hrydgard/ppsspp)

---

## Where to put the games?

PSP games should be put under the `retrodeck/roms/psp/` directory.

## What file formats are supported?


| File Format | Description |
|-------------|-------------|
| .elf        | Executable and Linkable Format |
| .cso        | Compressed ISO image file |
| .iso        | Standard ISO disc image |
| .pbp        | PlayStation Portable Update file |
| .prx        | PlayStation Portable executable file |
| .chd        | Compressed Hunks of Data |

## Does PPSSPP require BIOS or Firmware?

No

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/psp/` |                               |  
| Saves Folder |`retrodeck/saves/PSP/PPSSPP-SA/` |                               |  
| States Folder |`retrodeck/states//PSP/PPSSPP-SA/` |                               |  
| Texture Packs Folder |`retrodeck/texture_packs/ppsspp/` |       Corresponds to `PSP/TEXTURES/` folder                        | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/ppsspp/PSP/`         |  |

## How to add Texture Packs?

The `~/retrodeck/texture_packs/ppsspp/` represents the `/PSP/TEXTURES/` folder in PPSSPP.

**Note:** <br>
Some texture packs could made for a specific version or region of the game. Make sure you have the right rom and textures for it.

**Note:**<br>
`TITLEID` is different for every game.


### Enable Custom Textures

1. Open up PPSSPP inside `RetroDECK Configurator` by pressing `Open Emulator` - `PPSSPP`.
2. Press `Settings` -> `Tools` -> `Developer Tools` -> `Replace Textures` and set it to `On`.

### How do I add texture packs?

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/texture_packs/ppsspp/`. The folders are all named by `TITLEID`.
3. Paste the textures into right folder `~/retrodeck/texture_packs/ppsspp/<TITLEID>`
4. If the textures match the game they should be loaded on next time you launch the game.
