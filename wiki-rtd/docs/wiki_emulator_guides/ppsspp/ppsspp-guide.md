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

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description |
|-------------|-------------|
| .elf        | Executable and Linkable Format |
| .cso        | Compressed ISO image file |
| .iso        | Standard ISO disc image |
| .pbp        | PlayStation Portable Update file |
| .prx        | PlayStation Portable executable file |
| .chd        | Compressed Hunks of Data  **(Recommended)**|

---

## Does PPSSPP require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/psp/` |                               |  
| Saves Folder |`retrodeck/saves/PSP/PPSSPP-SA/` |                               |  
| States Folder |`retrodeck/states//PSP/PPSSPP-SA/` |                               |  
| Texture Packs Folder |`retrodeck/texture_packs/ppsspp-sa/` |       Corresponds to `PSP/TEXTURES/` folder                        | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/ppsspp-sa/PSP/`         |  |

---

## Adding Texture Packs

The `~/retrodeck/texture_packs/ppsspp-sa/` folder represents the `/PSP/TEXTURES/` folder in PPSSPP.

**Note:**  
Some texture packs may be made for a specific version or region of the game. Make sure you have the correct ROM and textures for it.

`SERIAL` is different for every game. It's a unique code for each released game per region.

**Example:**

**SERIAL:** `ULUS-10080` corresponds to the NTSC-U release of `007-From Russia with Love`.

You can search various databases or wikis online to find the correct serial for the version of the game you have for example: 

- [psxdatacenter.com](https://psxdatacenter.com/). 
- Wikipedia

### Enable Custom Textures

1. Open PPSSPP inside **RetroDECK Configurator** by pressing `Open Emulator` → `PPSSPP`.
2. Go to `Settings` → `Tools` → `Developer Tools` → `Replace Textures` and set it to `On`.

### How to Add Texture Packs

1. Extract the texture pack files from compressed `.zip` or other formats into folders.
2. Navigate to `retrodeck/texture_packs/ppsspp-sa/`. The folders are named by `SERIAL`.
3. Paste the textures into the correct folder:  `retrodeck/texture_packs/ppsspp-sa/<SERIAL>`
4. If the textures match the game, they should load the next time you launch it.


---