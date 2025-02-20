# Dolphin / Primehack - General Guide

<img src="../../../wiki_images/logos/dolphin-logo.png" width="150">  <img src="../../../wiki_images/logos/primehack-logo.png" width="150">

Dolphin feature rich a GameCube and Wii Emulator.

Primehack is a fork of Dolphin intended just to give Metroid Prime Trilogy mouselook controls and other improvements.

---


### Dolphin Links:

[Dolphin - Webpage](https://dolphin-emu.org/)

[Dolphin - Wiki](https://wiki.dolphin-emu.org/index.php?title=Main_Page)

[Dolphin - Game Compatibility](https://dolphin-emu.org/compat/)

[Dolphin - Performance Guide](https://dolphin-emu.org/docs/guides/performance-guide/)

[Dolphin - Github](https://github.com/dolphin-emu/dolphin)


### Primehack Links

[Primehack - Wiki](https://github.com/shiiion/dolphin/wiki/)

[Primehack - FAQ](https://github.com/shiiion/dolphin/wiki/Frequently-Asked-Questions)

[Primehack - Github](https://github.com/shiiion/dolphin)

---


## Where to put the games?

**Gamecube:**

Should be put under the `retrodeck/roms/gc/` directory.

**Wii:**

Should be put under the `retrodeck/roms/wii/` directory.

## What file formats does Dolphin / Primehack support?

```
.ciso
.dff
.dol
.elf
.gcm
.gcz
.iso
.json
.m3u
.rvz
.tgc
.wad
.wbfs
.wia
.7z
.zip
```

**NOTE:**

`.wbfs` and `.wad` are the original format supported by the Wii console.

## Does Dolphin require BIOS or Firmware?

Optional `IPL.bin` for GameCube boot intros.

### Where to put the GameCube BIOS?

Dolphin looks for the `IPL.bin` in the save folders. Put each region's `IPL.bin` in the corresponding saves folder.

| Type               | Folder                              | Flatpak Source                  | Emulator Folder                | Comment |
|:------------------:|:-----------------------------------:|:-------------------------------:|:------------------------------:|:-------:|
| GameCube Saves EU  | `retrodeck/saves/gc/dolphin/EU/`    | `var/data/dolphin-emu/GC/EUR/`  | `dolphin-emu/GC/EUR/`          |         |
| GameCube Saves US  | `retrodeck/saves/gc/dolphin/US/`    | `var/data/dolphin-emu/GC/USA/`  | `dolphin-emu/GC/USA/`          |         |
| GameCube Saves JP  | `retrodeck/saves/gc/dolphin/JP/`    | `var/data/dolphin-emu/GC/JAP/`  | `dolphin-emu/GC/JAP/`          |         |


## Folder structure

### Dolphin

This shows what folder corresponds to each folder in the standard Dolphin structure 

| Type               | Folder                              | Flatpak Source                  | Emulator Folder                | Comment |
|:------------------:|:-----------------------------------:|:-------------------------------:|:------------------------------:|:-------:|
| GameCube Saves EU  | `retrodeck/saves/gc/dolphin/EU/`    | `var/data/dolphin-emu/GC/EUR/`  | `dolphin-emu/GC/EUR/`          |         |
| GameCube Saves JP  | `retrodeck/saves/gc/dolphin/JP/`    | `var/data/dolphin-emu/GC/JAP/`  | `dolphin-emu/GC/JAP/`          |         |
| GameCube Saves US  | `retrodeck/saves/gc/dolphin/US/`    | `var/data/dolphin-emu/GC/USA/`  | `dolphin-emu/GC/USA/`          |         |
| Mods               | `retrodeck/mods/Dolphin/`           | `var/data/dolphin-emu/Load/GraphicMods` | `dolphin-emu/Load/GraphicMods/` |         |
| ROMs Gamecube Folder | `retrodeck/roms/gc/`              |                                 |                                |         |
| ROMs Wii Folder    | `retrodeck/roms/wii/`               |                                 |                                |         |
| Screenshots        | `retrodeck/screenshots/`            | `var/data/dolphin-emu/ScreenShots/` | `dolphin-emu/ScreenShots/`     |         |
| States             | `retrodeck/states/dolphin/`         | `var/data/dolphin-emu/StateSaves/` | `dolphin-emu/StateSaves/`      |         |
| Texture Packs      | `retrodeck/mods/Dolphin/`           | `var/data/dolphin-emu/Load/Textures/` | `dolphin-emu/Load/Textures/`   |         |
| Wii Saves          | `retrodeck/saves/wii/dolphin/`      | `var/data/dolphin-emu/Wii/`     | `dolphin-emu/Wii/`             |         |

### PrimeHack

This shows what folder corresponds to each folder in the standard PrimeHack structure 


| Type               | Folder                              | Flatpak Source                  | Emulator Folder                | Comment |
|:------------------:|:-----------------------------------:|:-------------------------------:|:------------------------------:|:-------:|
| GameCube Saves EU  | `retrodeck/saves/gc/primehack/EU/`  | `var/data/primehack/GC/EUR/`    | `primehack/GC/EUR/`            |         |
| GameCube Saves JP  | `retrodeck/saves/gc/primehack/JP/`  | `var/data/primehack/GC/JAP/`    | `primehack/GC/JAP/`            |         |
| GameCube Saves US  | `retrodeck/saves/gc/primehack/US/`  | `var/data/primehack/GC/USA/`    | `primehack/GC/USA/`            |         |
| Mods               | `retrodeck/mods/Primehack/`         | `var/data/primehack/Load/GraphicMods` | `primehack/Load/GraphicMods/` |         |
| ROMs Gamecube Folder | `retrodeck/roms/gc/`              |                                 |                                |         |
| ROMs Wii Folder    | `retrodeck/roms/wii/`               |                                 |                                |         |
| Screenshots        | `retrodeck/screenshots/`            | `var/data/primehack/ScreenShots/` | `primehack/ScreenShots/`       |         |
| States             | `retrodeck/states/primehack/`       | `var/data/primehack/StateSaves/` | `primehack/StateSaves/`        |         |
| Texture Packs      | `retrodeck/mods/Primehack/`         | `var/data/primehack/Load/Textures/` | `primehack/Load/Textures/`     |         |
| Wii Saves          | `retrodeck/saves/wii/primehack/`    | `var/data/primehack/Wii/`       | `primehack/Wii/`               |         |

## Where do I change the language of Dolphin / Primehack?

1. In the `Configurator` open either `Dolphin` or `Primehack`.
2. Navigate to `Options` -> `Configuration` -> `Interface` .
3. Select preferred language in the drop-down menu.
4. Close the Emulator, Configurator and return to RetroDECK.

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



## How-to: Use a Real Wii Remote with Dolphin / Primehack?

To get a Wii Remote working on Dolphin / Primehack and Linux read more here in this in-depth guide:

[Wii Remote - Guide](../../wiki_controllers/nintendo/wii-remote.md)

## How-to: Add Mods

The `~/retrodeck/mods/dolphin/` / `~/retrodeck/mods/primehack/` that represents the `/load/GraphicMods` folder.


**Note:** 

Some texture packs could made for a specific version or region of a game. 

Make sure you have the right game and textures for it.

`GAME_ID` is different for every game.

### Enable Mods

1. Open up Dolphin or Primehack inside `RetroDECK Configurator` by pressing `Open Emulator` - `Dolphin` / `Primehack`.
2. Press `Options` -> `Graphic Settings`.
3. `Enable Graphics Mods` and set it to `On`.

### Add the mods

1. Extract any mod files from compressed `.zip` or any other format into folders.
2. Go into mods folders, they contain folders that are all named by `GAME_ID`.
3. Move the mods into the right folder: 

**Dolphin:** `~/retrodeck/mods/dolphin/<GAME_ID>`

**Primehack:** `~/retrodeck/mods/primehack/<GAME_ID>`

If all is correct the mods should be loaded on next game launch.

## How-to: Add Texture Packs?

Primehack is based on Dolphin so the method is the same.

The `~/retrodeck/texture_packs/dolphin/` & `~/retrodeck/texture_packs/primehack/` represents the `/load/Textures` folder.

Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

`GAME_ID` is different for every game.

## Enable Custom Textures

1. Open up Dolphin or Primehack inside `RetroDECK Configurator` by pressing `Open Emulator` - `Dolphin` / `Primehack`.
2. Press `Options` -> `Graphic Settings`
3. `Load Custom Textures` & `Prefetch Custom Textures`  and set them to `On`.


### Add the textures

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into texture pack folders, they contain folders that are all named by `GAME_ID`.
3. Move the textures into the right folder: 

**Dolphin:** `~/retrodeck/texture_packs/dolphin/<GAME_ID>`

**Primehack:** `~/retrodeck/texture_packs/primehack/<GAME_ID>` <br>

If all is correct the textures should be loaded on next game launch.

## How-to: Enable GameCube Boot Main Menu

**Prerequisite:** Place the GameCube `IPL.bin` BIOS in the save folders (see above).

1. Open Dolphin or Primehack in `RetroDECK Configurator` by selecting `Open Emulator` -> `Dolphin` / `Primehack`.
2. Go to `Options` -> `Configuration` -> `GameCube` and uncheck `Skip Main Menu`.
