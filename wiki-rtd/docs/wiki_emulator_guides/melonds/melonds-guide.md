# Guide: melonDS

<img src="../../../wiki_images/logos/melonds-logo.svg" width="75">

melonDS, a Nintendo DS emulator.

---

### melonDS Links:

[melonDS - Webpage](https://melonds.kuribo64.net/)

[melonDS - Forum](https://melonds.kuribo64.net/board/)

[melonDS - FAQ](https://melonds.kuribo64.net/faq.php)

[melonDS - Wiki](https://github.com/melonDS-emu/melonDS/wiki)

[melonDS - Github](https://github.com/melonDS-emu/melonDS)

---

## Where to put the games

NDS games should be put under the `retrodeck/roms/nds/` directory.


## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .nds        | Nintendo DS ROM file |
| .app        | Application file |

## Does MelonDS require BIOS or Firmware?

There exists several optional BIOS and FIrmware:

**Nintendo DS:** 
```
bios7.bin
bios9.bin
firmware.bin
```

**Nintendo DSI:** 
```
dsi_bios9.bin
dsi_bios7.bin
dsi_firmware.bin
dsi_nand.bin
```

### Where to put the BIOS and Firmware?

Directly into the folder

`retrodeck/bios/`

**Example:**

`retrodeck/bios/bios9.bin`

## Folder structure

| Type    | Folder                 |      Comment     | 
|  :---:  |  :---:                 |      :---:     |
| ROMs Folder |`retrodeck/roms/nds/` |                               |  
| Saves Folder |`retrodeck/saves/nds/melonds/` |                               |  
| States Folder |`retrodeck/states/nds/melonds/` |                               |
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/melonDS/`         |   `melonDS.ini`|
| BIOS Folder | `retrodeck/bios/` | |

## Change Language in games

**Requirements:** 

- Check if the game has multiple language support over at this link [GamesTDB: DS](https://www.gametdb.com/DS/Downloads).
- You need to have your bios ion the `retrodeck/bios/` folder.

**Instructions:**

1. Open `Configurator` -> `MelonDS`
2. Click `Config` -> `Emu settings` -> `DS-Mode` ->  Enable `Use external BIOS/firmware files`
3. Click `File` -> `Boot firmware` -> `DS icon` (bottom of the screen) -> `⚙️` -> `🌍` -> Set language.
