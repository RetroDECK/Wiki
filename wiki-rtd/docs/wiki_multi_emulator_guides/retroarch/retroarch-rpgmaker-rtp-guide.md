# RPGMaker Cores - EasyRPG & mkxp-z Guide: RTP Files

## Overview

Two Libretro cores are available for running games built with RPG Maker engines. Each core supports a specific range of engine versions. Both cores require additional Runtime Package (RTP) files to be provided, functioning similarly to BIOS files in other emulation contexts.

---

## EasyRPG

**Supported Engines:**

| Engine |
|--------|
| RPG Maker 2000 | 
| RPG Maker 2003 |

For further details, refer to the [EasyRPG documentation on Libretro](https://docs.libretro.com/library/easyrpg/).

---

## mkxp-z

**Supported Engines:**

| Engine | 
|--------|
| RPG Maker XP | 
| RPG Maker VX | 
| RPG Maker VX Ace |

For further details, refer to the [mkxp-z documentation on Libretro](https://docs.libretro.com/library/mkxp-z/).

---

## BIOS: Runtime Packages (RTP)

Runtime Package (RTP) files contain the default assets (graphics, audio, fonts, etc.) that RPG Maker games reference at runtime. Many games distributed through [rpgmakerweb.com](https://www.rpgmakerweb.com/) depend on these files to function correctly. In the context of Libretro cores, RTP files serve a role analogous to "BIOS" files in traditional console emulation.

### Download Links

Download all RTP installers from the official source:

> **Official RTP Download Page:** [https://www.rpgmakerweb.com/run-time-package](https://www.rpgmakerweb.com/run-time-package)

Direct download links for each engine version:

| Engine | File Format | Download Link |
|--------|-------------|---------------|
| RPG Maker 2000 | `.exe` installer | [Download](https://dl.komodo.jp/rpgmakerweb/run-time-packages/rpg2000_rtp_installer.exe) |
| RPG Maker 2003 | `.zip` archive | [Download](https://dl.komodo.jp/rpgmakerweb/run-time-packages/rpg2003_rtp_installer.zip) |
| RPG Maker XP | `.exe` installer | [Download](https://dl.komodo.jp/rpgmakerweb/run-time-packages/xp_rtp104e.exe) |
| RPG Maker VX | `.zip` archive | [Download](https://dl.komodo.jp/rpgmakerweb/run-time-packages/vx_rtp102e.zip) |
| RPG Maker VX Ace | `.zip` archive | [Download](https://dl.komodo.jp/rpgmakerweb/run-time-packages/RPGVXAce_RTP.zip) |

---

## How-to: Add the RTP Files to RetroDECK

⚠️ **Important:** Folder names must match exactly, including capitalisation. Incorrect folder names will prevent the cores from locating the required assets.

Follow the steps below to extract the RTP files needed by the cores:

- **Download** the appropriate RTP file(s) from the links above.

- **Extract `.zip` archives** using a standard archive utility such as [7-Zip](https://www.7-zip.org/) or any equivalent tool to get to the `.exe` files inside them.

- **Extract `.exe` installers** by treating them as self-extracting archives. Right-click the `.exe` file and select **7-Zip → Open Archive** (or equivalent in your preferred tool) to access the contained files directly—installation of the RTP is not required. If the `.exe` extraction does not work with your tool, you can try [innoextract](https://constexpr.org/innoextract/).

- **Create a folder** for each RTP with the exact name specified below (case-sensitive, capital letters where indicated).

| RPG Maker Version | Folder Name | Files/Folders to Extract |
|--------------------|-------------|------------------|
| RPG Maker 2000 | `2000` | **All** files from the installer |
| RPG Maker 2003 | `2003` | **All** files from the installer |
| RPG Maker XP | `Standard` | `Audio/`, `Game.ico`, `Graphics/` |
| RPG Maker VX | `RPGVX` | `Audio/`, `Fonts/`, `Game.ico`, `Graphics/`, `RGSS200J.dll`, `RGSS202E.dll` |
| RPG Maker VX Ace | `RPGVXAce` | `Audio/`, `Fonts/`, `Game.ico`, `Graphics/` |

- **Move the specified files** from each extracted installer into its corresponding folder

### Move to the BIOS Folder

After extracting the RTP files, move the folders to their respective destinations.

#### EasyRPG Core Folders

| Folder Name | Destination Path |
|-------------|------------------|
| `2000` | `retrodeck/bios/rtp/2000` |
| `2003` | `retrodeck/bios/rtp/2003` |

#### mkxp-z Core Folders

| Folder Name | Destination Path |
|-------------|------------------|
| `Standard` | `retrodeck/bios/mkxp-z/RTP/Standard` |
| `RPGVX` | `retrodeck/bios/mkxp-z/RTP/RPGVX` |
| `RPGVXAce` | `retrodeck/bios/mkxp-z/RTP/RPGVXAce` |

---