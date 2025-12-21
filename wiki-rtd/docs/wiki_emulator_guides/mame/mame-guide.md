# MAME - General Guide

<img src="../../../wiki_images/logos/mame-logo.png" width="200">

MAME is a multi-purpose emulation framework.

MAME’s purpose is to preserve decades of software history. As electronic technology continues to rush forward, MAME prevents this important "vintage" software from being lost and forgotten. 

---

### MAME Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| MAME - Documentation | [Link](https://docs.mamedev.org/) |
| MAME - Forum | [Link](https://forum.mamedev.org/) |
| MAME - Webpage | [Link](https://www.mamedev.org/) |
| MAME - Wiki | [Link](https://wiki.mamedev.org/index.php?title=Main_Page) |


---

## Where to put the games?

Games that you want to run with MAME should be put under the `retrodeck/roms/mame/` (recommended) or `retrodeck/roms/arcade/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .zip        | Compressed archive file |
| .chd        | Compressed Hunks of Data |

---

## Does MAME require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, it depends on the game.

You can do a detailed search over at:

- [Arcadeitalia - Mame List](http://adb.arcadeitalia.net/lista_mame.php)

### Where to put the PSX BIOS?

Directly into the folder

`retrodeck/bios/`

For some ROMs it needs to be in the same folder as the roms 

`retrodeck/roms/mame/` 

It all depends on the game.

---

## MAME Folders

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

MAME comes with several folders for various assets and files.

| Type        | Folder                                          | Comment                                                                                                                            |
|-------------|-------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| Cheat       | retrodeck/cheats/mame                           |                                                                                                                                   |
| CFG         | ~/.var/app/net.retrodeck.retrodeck/config/mame/cfg | This is where the `default.cfg` is and also any custom game configs are saved.                                                    |
| INI         | ~/.var/app/net.retrodeck.retrodeck/config/mame/ini | This is where `ui.ini` and `mame.ini` files are located. But they should not be touched unless you know what you are doing.          |
| INP         | ~/.var/app/net.retrodeck.retrodeck/config/mame/inp |                                                                                                                                   |
| Plugin-Data | retrodeck/mods/mame/plugin-data                 |                                                                                                                                   |
| Plugins     | retrodeck/mods/mame/plugins                     |                                                                                                                                   |
| ROMs        | retrodeck/roms/mame/ / retrodeck/roms/arcade/    |                                                                                                                                   |
| Saves diff  | retrodeck/saves/mame-sa/diff/                   |                                                                                                                                   |
| Saves hiscore| retrodeck/saves/mame-sa/hiscore/               |                                                                                                                                   |
| Saves nvram | retrodeck/saves/mame-sa/nvram/                  |                                                                                                                                   |
| States      | retrodeck/states/mame-sa                        |                                                                                                                                   |

---

### Storage Folders

Where different types of assets and metadata are stored

| Type          | Folder                                         | Comment |
|---------------|-----------------------------------------------|---------|
| Artwork       | retrodeck/storage/mame/artwork                |         |
| Artwork‑preview| retrodeck/storage/mame/artwork-preview       |         |
| Bosses        | retrodeck/storage/mame/bosses                 |         |
| Cabinets      | retrodeck/storage/mame/cabinets               |         |
| Comments      | retrodeck/storage/mame/comments               |         |
| Covers        | retrodeck/storage/mame/covers                 |         |
| Cpanel        | retrodeck/storage/mame/cpanel                 |         |
| Crosshair     | retrodeck/storage/mame/crosshair              |         |
| DATS          | retrodeck/storage/mame/dats                   |         |
| Ends          | retrodeck/storage/mame/ends                   |         |
| Hash          | retrodeck/storage/mame/hash                   |         |
| Flyers        | retrodeck/storage/mame/flyers                 |         |
| Fonts         | retrodeck/storage/mame/fonts                  |         |
| Folders       | retrodeck/storage/mame/mame/folders           |         |
| Game Over     | retrodeck/storage/mame/gameover               |         |
| How‑to        | retrodeck/storage/mame/howto                  |         |
| Language      | retrodeck/storage/mame/language               |         |
| Logo          | retrodeck/storage/mame/logo                   |         |
| Marquees      | retrodeck/storage/mame/marquees               |         |
| PCB           | retrodeck/storage/mame/pcb                    |         |
| Samples       | retrodeck/storage/mame/samples                |         |
| Scores        | retrodeck/storage/mame/scores                 |         |
| Select        | retrodeck/storage/mame/select                 |         |
| Share         | retrodeck/storage/mame/share                  |         |
| Software      | retrodeck/storage/mame/software               |         |
| Titles        | retrodeck/storage/mame/titles                 |         |
| UI            | retrodeck/storage/mame/ui                     |         |
| Versus        | retrodeck/storage/mame/versus                 |         |

---

## Maintaining ROM Sets

As MAME updates, so do the ROM Sets. It's important to use the same ROM Set as the current version shipped with RetroDECK.

Read more on: [MAME - Maintaning ROM Sets](https://docs.mamedev.org/usingmame/aboutromsets.html)

---

## Enable Cheats

RetroDECK already includes the cheat file from [Pugsy's Cheats](https://www.mamecheat.co.uk/) in the cheat folder.

To enable cheats:

1. Open MAME via the Configurator or while in a MAME game.
2. In the MAME interface, go to `General Settings` -> `Miscellaneous Options` -> `Cheats` and toggle it to On.
3. Go back, click `Save Settings`, and exit MAME.

When you launch a game, open the `Quick Menu` and go to the `Cheat Menu` to toggle cheats for that game.

---

## Applying effects such as Shaders and Scanlines

First read up on BGFX effects on [BGFX MAMEdev](https://docs.mamedev.org/advanced/bgfx.html)

1. Go to `~/.var/app/net.retrodeck.retrodeck/config/mame/ini`
2. Open the `mame.ini` with your text editor of choice.
3. Find `OSD VIDEO OPTIONS` and edit the value: `video` from `opengl` to `bgfx`.
4. Find `GFX POST-PROCESSING OPTIONS` and edit the value: `bgfx_screen_chains` from `nothing` to `<yourchoice>` from the BGFX link. Example value from MAME: `bgfx_screen_chains`: `crt-geom`,`pillarbox_left_horizontal`,`pillarbox_right_horizontal`.
   
---
