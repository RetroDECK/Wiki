# MAME - General Guide

<img src="../../../wiki_images/logos/mame-logo.png" width="180">

MAME is a multi-purpose emulation framework.

MAME’s purpose is to preserve decades of software history. As electronic technology continues to rush forward, MAME prevents this important "vintage" software from being lost and forgotten. 

---

### MAME Links:

[MAME - Webpage](https://www.mamedev.org/)

[MAME - Forum](https://forum.mamedev.org/)

[MAME - Wiki](https://wiki.mamedev.org/index.php?title=Main_Page)

[MAME - Documentation](https://docs.mamedev.org/)

---

## Where to put the games?

Games that you want to run with MAME should be put under the `retrodeck/roms/mame/` (recommended) or `retrodeck/roms/arcade/` directory.

## What file formats are supported?

```
.zip
.chd
```

## Does MAME require BIOS or Firmware?

Yes, it depends on the game.

You can do a detailed search over at:

[Arcadeitalia - Mame List](http://adb.arcadeitalia.net/lista_mame.php)

### Where to put the PSX BIOS?

Directly into the folder

`retrodeck/bios/`

For some ROMs it needs to be in the same folder as the roms 

`retrodeck/roms/mame/` 

It all depends on the game.

## MAME Standalone Folders

MAME Standalone comes with several folders for various assets and files.

### Configuration Folders

Where different types of configurations are stored

| Type | Folder                 |    Comment |
| :---:   | :---:               |      :---:     |
| ROMs folder |`retrodeck/roms/mame/` / `retrodeck/roms/arcade/`  |    |
| Saves diff |`retrodeck/saves/mame-sa/diff/` |    |
| Saves hiscore |`retrodeck/saves/mame-sa/hiscore/` |    |
| Saves nvram |`retrodeck/saves/mame-sa/nvram/` |    |
| CFG |`~/.var/app/net.retrodeck.retrodeck/config/mame/cfg` |  This is where the `default.cfg` is and also any custom game configs are saved.   |
| INI |`~/.var/app/net.retrodeck.retrodeck/config/mame/ini` |  This is where `ui.ini` and `mame.ini` files are located. But they should not be touched unless you know what you are doing.  |
| INP |`~/.var/app/net.retrodeck.retrodeck/config/mame/inp` |  |

### Data Folders

Where different types of validation data and plugins are stored

| Type | Folder                 |    Comment |
| :---:   | :---:               |      :---:     |
| Cheat |`~/.var/app/net.retrodeck.retrodeck/data/mame/cheat` |    |
| DATS |`~/.var/app/net.retrodeck.retrodeck/data/mame/dats` |    |
| Folders |`~/.var/app/net.retrodeck.retrodeck/data/mame/folders` |  |
| Hash |`~/.var/app/net.retrodeck.retrodeck/data/mame/hash` |  |
| Plugin-Data |`~/.var/app/net.retrodeck.retrodeck/data/mame/plugin-data`|  |
| Plugins |`~/.var/app/net.retrodeck.retrodeck/data/mame/plugins`|  |

### Asset Folders

Where different types of art assets and metadata are stored

| Type | Folder                 |    Comment |
| :---:   | :---:               |      :---:     |
| Artwork |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/artwork` |    |
| Artwork-preview |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/artwork-preview` |    |
| Bosses |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/bosses` |    |
| Cabinets | `~/.var/app/net.retrodeck.retrodeck/data/mame/assets/cabinets` |    |
| Comments |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/comments`|    |
| Covers |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/covers` |    |
| Cpanel |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/cpanel` |    |
| Crosshair |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/crosshair` |    |
| Ends |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/ends` |    |
| Flyers |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/flyers` |    |
| Fonts |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/fonts` |    |
| Game Over |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/gameover` |    |
| How-to |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/howto` |    |
| Language |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/language`|    |
| Logo |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/logo` |    |
| Marquees |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/marquees` |    |
| PCB |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/pcb`|    |
| Samples |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/samples`|    |
| Scores |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/scores` |    |
| Select |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/select` |    |
| Share |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/share` |    |
| Software |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/software`|    |
| Titles |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/titles`|    |
| UI |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/ui`|    |
| Versus |`~/.var/app/net.retrodeck.retrodeck/data/mame/assets/versus`|    |

## Maintaining ROM Sets

As MAME is updated so are the ROM Sets.

It is important to keep using the same ROM Set as the current version shipped with RetroDECK.

Read more on: [MAME - Maintaning ROM Sets](https://docs.mamedev.org/usingmame/aboutromsets.html)

## How-to enable cheats?

RetroDECK already ships the cheat file from [Pugsy's Cheats](https://www.mamecheat.co.uk/) as part of the cheat folder.

To enable cheats open MAME via the Configurator or open the interface when inside a MAME game.

In the MAME interface go to -> `General Settings` -> `Miscellaneous Options` -> `Cheats` and toggle it to `On` -> go back and click `Save Settings` and leave MAME.

When you launch a game open the `Quick Menu` and go to the `Cheat` menu to toggle cheats for that game.


## Applying effects such as Shaders and Scanlines

First read up on BGFX effects on [BGFX MAMEdev](https://docs.mamedev.org/advanced/bgfx.html)

1. Go to `~/.var/app/net.retrodeck.retrodeck/config/mame/ini`
2. Open the `mame.ini` with your text editor of choice.
3. Find `OSD VIDEO OPTIONS` and edit the value: `video` from `opengl` to `bgfx`.
4. Find `GFX POST-PROCESSING OPTIONS` and edit the value: `bgfx_screen_chains` fron `nothing` to `what ever value you want` from the BGFX link. Example value from MAME: `bgfx_screen_chains`: `crt-geom`,`pillarbox_left_horizontal`,`pillarbox_right_horizontal`.
