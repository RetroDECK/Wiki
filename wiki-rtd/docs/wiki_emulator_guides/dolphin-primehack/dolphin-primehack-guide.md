# Dolphin / Primehack - General Guide

<img src="../../../wiki_images/logos/dolphin-logo.png" width="150">  <img src="../../../wiki_images/logos/primehack-logo.png" width="150">

Dolphin feature rich a GameCube and Wii Emulator.

Primehack is a fork of Dolphin intended just to give Metroid Prime Trilogy mouselook controls and other improvements.

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

No

## What other folders are used?

### Dolphin

This shows what folder corresponds to each folder in the standard Dolphin structure 

| Type | Folder                 | Flatpak Source |  Emulator Folder      |    Comment |
|  :---:   | :---:                   | :---:               | :---:           |      :---:     |
| ROMs Gamecube Folder |`retrodeck/roms/gc/` |                               |  
| ROMs Wii Folder |`retrodeck/roms/wii/` |                               |  
| GameCube Saves EU|`retrodeck/saves/gc/dolphin/EU/` |     `var/data/dolphin-emu/GC/EUR/`       |    `dolphin-emu/GC/EUR/`         |  |
| GameCube Saves US|`retrodeck/saves/gc/dolphin/US/`         |     `var/data/dolphin-emu/GC/USA/`       |    `dolphin-emu/GC/USA/`         |   |
| GameCube Saves JP| `retrodeck/saves/gc/dolphin/JP/`         |     `var/data/dolphin-emu/GC/JAP/`       |    `dolphin-emu/GC/JAP/`         |  |
| Wii Saves |`retrodeck/saves/wii/dolphin/`         |     `var/data/dolphin-emu/Wii/`       |    `dolphin-emu/Wii/`         |   |
| States |`retrodeck/states/dolphin/`         |     `var/data/dolphin-emu/StateSaves/`       |    `dolphin-emu/StateSaves/`         |   |
| Mods |`retrodeck/mods/Dolphin/`         |     `var/data/dolphin-emu/Load/GraphicMods`       |    `dolphin-emu/Load/GraphicMods/`         |   |
| Texture Packs |`retrodeck/mods/Dolphin/`         |     `var/data/dolphin-emu/Load/Textures/`       |    `dolphin-emu/Load/Textures/`         |   |
| Screenshots |`retrodeck/screenshots/`         |     `var/data/dolphin-emu/ScreenShots/`       |    `dolphin-emu/ScreenShots/`         |   |

### PrimeHack

This shows what folder corresponds to each folder in the standard PrimeHack structure 

| Type | Folder                 | Flatpak Source |  Emulator Folder      |    Comment |
|  :---:   | :---:                   | :---:               | :---:           |      :---:     |
| ROMs Gamecube Folder |`retrodeck/roms/gc/` |                               |  
| ROMs Wii Folder |`retrodeck/roms/wii/` |                               |  
| GameCube Saves EU|`retrodeck/saves/gc/primehack/EU/` |     `var/data/primehack/GC/EUR/`       |    `primehack/GC/EUR/`         |  |
| GameCube Saves US|`retrodeck/saves/gc/primehack/US/`         |     `var/data/primehack/GC/USA/`       |    `primehack/GC/USA/`         |   |
| GameCube Saves JP| `retrodeck/saves/gc/primehack/JP/`         |     `var/data/primehack/GC/JAP/`       |    `primehack/GC/JAP/`         |  |
| Wii Saves |`retrodeck/saves/wii/primehack/`         |     `var/data/primehack/Wii/`       |    `primehack/Wii/`         |   |
| States |`retrodeck/states/primehack/`         |     `var/data/primehack/StateSaves/`       |    `primehack/StateSaves/`         |   |
| Mods |`retrodeck/mods/Primehack/`         |     `var/data/primehack/Load/GraphicMods`       |    `primehack/Load/GraphicMods/`         |   |
| Texture Packs |`retrodeck/mods/Primehack/`         |     `var/data/primehack/Load/Textures/`       |    `primehack/Load/Textures/`         |   |
| Screenshots |`retrodeck/screenshots/`         |     `var/data/primehack/ScreenShots/`       |    `primehack/ScreenShots/`         |   |

## Where do I change the language of Dolphin / Primehack?

1. In the `Configurator` open either `Dolphin` or `Primehack`.
2. Navigate to `Options` -> `Configuration` -> `Interface` .
3. Select preferred language in the drop-down menu.
4. Close the Emulator, Configurator and return to RetroDECK.
