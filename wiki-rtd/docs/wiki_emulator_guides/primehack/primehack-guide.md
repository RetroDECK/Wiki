# PrimeHack - General Guide

 <img src="../../../wiki_images/logos/primehack-logo.png" width="75">

PrimeHack is a fork of Dolphin intended just to give Metroid Prime Trilogy mouselook controls and other improvements.

---

## Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

### PrimeHack 

| Resource | Link |
|----------|------|
| PrimeHack - Wiki | [Link](https://github.com/shiiion/dolphin/wiki/) |
| PrimeHack - FAQ | [Link](https://github.com/shiiion/dolphin/wiki/Frequently-Asked-Questions) |
| PrimeHack - Github | [Link](https://github.com/shiiion/dolphin) |


---


## Where to put the games?


Should be put under the `retrodeck/roms/PrimeHack/` directory.

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .ciso       | Compressed ISO image file |
| .dff        | Digital Forensics File |
| .dol        | GameCube executable file |
| .elf        | Executable and Linkable Format |
| .gcm        | GameCube disc image file |
| .gcz        | Compressed GameCube disc image |
| .iso        | Standard ISO disc image |
| .json       | JavaScript Object Notation file |
| .m3u        | Playlist file |
| .rvz        | Compressed GameCube/Wii disc image **(Recommended)** |
| .tgc        | GameCube disc image format |
| .wad        | WiiWare and Virtual Console game file |
| .wbfs       | Wii Backup File System image |
| .wia        | Compressed Wii disc image |
| .7z         | Compressed archive file |
| .zip        | Compressed archive file |

**NOTE:**

`.wbfs` and `.wad` are the original format supported by the Wii console.

## Does PrimeHack require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

 File Name | Required For | Description |
|-----------|--------------|-------------|
| `IPL.bin` | GameCube boot animation (optional) | Contains the GameCube system BIOS used to display the original startup intro and system menu before launching a game. |


### Where to put the GameCube BIOS?

PrimeHack looks for the `IPL.bin` in the save folders. Put each region's `IPL.bin` in the corresponding saves folder.

| Type               | Directory                             | Comment              |
|:------------------:|:-------------------------------------|:-------------------|
| GameCube Saves EU   | `retrodeck/saves/gc/primehack/EU/`    | primehack/GC/EUR/ |
| GameCube Saves JP   | `retrodeck/saves/gc/primehack/JP/`    | primehack/GC/JAP/ |
| GameCube Saves US   | `retrodeck/saves/gc/primehack/US/`    | primehack/GC/USA/ |


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

---

### PrimeHack

This shows what folder corresponds to each folder in the standard PrimeHack structure 


| Type               | Directory                             | Comment                        |
|:------------------:|:-------------------------------------|:-------------------------------|
| Dump               | `retrodeck/storage/primehack/Dump/`   | primehack/Dump               |
| GameCube Saves EU   | `retrodeck/saves/gc/primehack/EU/`    | primehack/GC/EUR/            |
| GameCube Saves JP   | `retrodeck/saves/gc/primehack/JP/`    | primehack/GC/JAP/            |
| GameCube Saves US   | `retrodeck/saves/gc/primehack/US/`    | primehack/GC/USA/            |
| Mods               | `retrodeck/mods/primehack/`           | primehack/Load/GraphicMods/  |
| ROMs PrimeHack     | `retrodeck/roms/primehack/`              |                                |
| Screenshots        | `retrodeck/screenshots/primehack/`   | primehack/ScreenShots/       |
| Shaders            | `retrodeck/shaders/primehack/`       | primehack/Shaders            |
| States             | `retrodeck/states/primehack/`        | primehack/StateSaves/        |
| Texture Packs      | `retrodeck/texture_packs/primehack/` | primehack/Load/Textures/     |
| Wii Saves          | `retrodeck/saves/wii/primehack/`     | primehack/Wii/               |


---

## How-to: Change the language of PrimeHack

1. In the `Configurator` open either or `PrimeHack`.
2. Navigate to `Options` → `Configuration` → `Interface` .
3. Select preferred language in the drop-down menu.
4. Close the Emulator, Configurator and return to RetroDECK.


---

## How-to: Enable GameCube Boot Main Menu

**Prerequisite:** Place the GameCube `IPL.bin` BIOS in the save folders (see above).

1. Open PrimeHack in `RetroDECK Configurator` by selecting `Open Emulator` → `PrimeHack`.
2. Go to `Options` → `Configuration` → `GameCube` and uncheck `Skip Main Menu`.

---

## How-to: Enable Wii System Menu

1. Open PrimeHack in `RetroDECK Configurator` by selecting `Open Emulator` → `PrimeHack`.
2. Go to `Tools` → `Perform Online System Update` → Select the Region you want for the System Menu and install it.
3. You can open the System Menu by going to:  `Tools` → `Load Wii System Menu`.

---

## Adding Mods

The`~/retrodeck/mods/primehack/` that represents the `/load/GraphicMods` folder.


**Note:** 

Some texture packs could made for a specific version or region of a game. 

Make sure you have the right game and textures for it.

`GAME_ID` is different for every game.

### Enable Mods

1. Open up PrimeHack inside `RetroDECK Configurator` by pressing `Open Emulator` - `PrimeHack`.
2. Press `Options` → `Graphic Settings`.
3. `Enable Graphics Mods` and set it to `On`.

### Adding the mods

1. Extract any mod files from compressed `.zip` or any other format into folders.
2. Go into mods folders, they contain folders that are all named by `GAME_ID`.
3. Move the mods into the right folder: 

**PrimeHack:** `~/retrodeck/mods/PrimeHack/<GAME_ID>`

If all is correct the mods should be loaded on next game launch.

---

## Adding Texture Packs

The `~/retrodeck/texture_packs/primehack/` represents the `/load/Textures` folder.

Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

`GAME_ID` is different for every game.

### Enable Custom Textures

1. Open up PrimeHack inside `RetroDECK Configurator` by pressing `Open Emulator` - `PrimeHack`.
2. Press `Options` → `Graphic Settings`
3. `Load Custom Textures` & `Prefetch Custom Textures`  and set them to `On`.


### Adding the textures

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into texture pack folders, they contain folders that are all named by `GAME_ID`.
3. Move the textures into the right folder: 

**PrimeHack:** `~/retrodeck/texture_packs/primehack/<GAME_ID>` <br>

If all is correct the textures should be loaded on next game launch.

---

## Gamecube Controls

The controls here are described as an Xbox Layout style controller.

| Action          | Button       | Comment |
|:---------------:|:------------:|:-------:|
| A               | `A`          |         |
| B               | `B`          |         |
| X               | `X`          |         |
| Y               | `Y`          |         |
| Z               | `R2 or L2`   |         |
| START           | `START`      |         |
| Control Stick   | `Left Stick` |         |
| C Stick         | `Right Stick`|         |
| D-Pad Up        | `D-Pad Up`   |         |
| D-Pad Down      | `D-Pad Down` |         |
| D-Pad Left      | `D-Pad Left` |         |
| D-Pad Right     | `D-Pad Right`|         |

---

## Wii Controls for Controllers

The controls here are described as an Xbox Layout style controller.

There are hotkeys in the Radial Menus to change the Wii Mote from Upright / Sidways.

| Action            | Button                | Comment |
|:-----------------:|:---------------------:|:-------:|
| 1                 | `Y`                   |         |
| 2                 | `X`                   |         |
| A                 | `A` or `Left Mouse Click` |         |
| B                 | `B`                   |         |
| C                 | `R1`                  |         |
| D-Pad Down        | `D-Pad Down`          |         |
| D-Pad Left        | `D-Pad Left`          |         |
| D-Pad Right       | `D-Pad Right`         |         |
| D-Pad Up          | `D-Pad Up`            |         |
| Home              | `R3`                  |         |
| +                 | `Start`               |         |
| -                 | `Select`              |         |
| Shake Nunchuck    | `L1 + L2`             |         |
| Shake Wii Mote    | `L1`                  |         |
| Z                 | `L2`                  |         |

### Wii Motion - Pointer Emulation  


- Mouse movement is the general way to to get the pointer emulation.
- `Left Mouse Click`  that correspons to a press of the `A` button (as that one is the one mostly used for Wii games that are based around pointing as the primary button).
- [RetroDECK Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md) features several ways to enable `Joystick as Mouse` Emulation. 
- You could also use a mouse / touchpad. 


### Wii Motion - Tilt Emulation

Tilt emulation is made possible by holding the `L2` button and moving the `Right Joystick`.

| Action          | Button                    | Comment |
|:---------------:|:-------------------------:|:-------:|
| Tilt Down       | `L2 + Right Joystick Down`|         |
| Tilt Left       | `L2 + Right Joystick Left`|         |
| Tilt Right      | `L2 + Right Joystick Right`|        |
| Tilt Up         | `L2 + Right Joystick Up`  |         |

---

