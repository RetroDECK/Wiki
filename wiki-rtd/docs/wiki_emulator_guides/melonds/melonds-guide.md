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

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description |
|-------------|-------------|
| .app        | Nintendo DS application file |
| .bin        | Binary file |
| .nds        | Nintendo DS ROM file **(Recommended)**|

---

## Does MelonDS require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

MelonDS can run without BIOS or firmware files, but including them improves accuracy and compatibility. 

The following files are **optional:**

### Nintendo DS

| File Name       | Description |
|-----------------|-------------|
| `bios7.bin`     | ARM7 BIOS, required for some homebrew and commercial games. |
| `bios9.bin`     | ARM9 BIOS, essential for proper game execution. |
| `firmware.bin`  | System firmware, improves compatibility and system calls. |

### Nintendo DSi

| File Name        | Description |
|-----------------|-------------|
| `dsi_bios7.bin`  | ARM7 BIOS for DSi, required for accurate execution. |
| `dsi_bios9.bin`  | ARM9 BIOS for DSi, required for accurate execution. |
| `dsi_firmware.bin` | DSi system firmware for enhanced compatibility. |
| `dsi_nand.bin`   | DSi NAND dump, required for certain system-level operations and online functionality. |


### Where to put the BIOS and Firmware?

Directly into the folder

`retrodeck/bios/`

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |      Comment     | 
|  :---:  |  :---:                 |      :---:     |
| ROMs Folder |`retrodeck/roms/nds/` |                               |  
| Saves Folder |`retrodeck/saves/nds/melonds/` |                               |  
| States Folder |`retrodeck/states/nds/melonds/` |                               |
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/melonDS/`         |   `melonDS.ini`|
| BIOS Folder | `retrodeck/bios/` | |

---

## Configuring Language Settings

**Requirements:** 

- Check if the game has multiple language support over at this link [GamesTDB: DS](https://www.gametdb.com/DS/Downloads).
- You need to have your bios ion the `retrodeck/bios/` folder.

**Instructions:**

1. Open `Configurator` -> `MelonDS`
2. Click `Config` -> `Emu settings` -> `DS-Mode` ->  Enable `Use external BIOS/firmware files`
3. Click `File` -> `Boot firmware` -> `DS icon` (bottom of the screen) -> `⚙️` -> `🌍` -> Set language.

---
