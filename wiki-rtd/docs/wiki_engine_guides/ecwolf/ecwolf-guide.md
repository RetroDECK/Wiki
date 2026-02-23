# Guide: ECWolf

<img src="../../../wiki_images/logos/ecwolf-logo.webp" width="150">

ECWolf is a Wolfenstein 3D game engine.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### ECWolf Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| ECWolf Webpage | [Link](https://maniacsvault.net/ecwolf/) |
| ECWolf GitHub | [Link](https://github.com/ECWolfEngine/ECWolf) |


---

## Where to put the games

ECWolf game files must be placed in the `retrodeck/roms/wolf/<sub_directory.wolf>` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .wl6       | Full version Wolfenstein 3D data file |
| .wl1       | Shareware version Wolfenstein 3D data file |
| .sod       | Spear of Destiny game data file |
| .sd2       | Spear of Destiny Mission Pack 2 - Return to Danger game data file |
| .sd3       | Spear of Destiny Mission Pack 3 - Ultimate Challenge game data file |
| .n3d       | Super 3D Noah's Ark game data file |



---

## Does ECWolf require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

However, you do need copies of the official game data.

---

## Directory Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type | Directory | Comment |
|:----:|:--------------------------------------|:-----------------------------------------------|
| ROMs | `retrodeck/roms/quake/wolf` | |

--- 

## ECWolf Required Game Data Files

Below are the original game data files required by **ECWolf**.

- Wolfenstein 3D (Shareware)
- Wolfenstein 3D (Full)
- Spear of Destiny 
- Spear of Destiny - Mission Pack 2 - Return to Danger
- Spear of Destiny - Mission Pack 3 - Ultimate Challenge
- Super 3D Noah’s Ark

These files must be copied from your legally obtained game installation.

---

###  Wolfenstein 3D - Shareware Version (.WL1)

| File Name        | Description | Comments |
|------------------|------------|----------|
| audiohed.wl1     | Audio header file that indexes sound data | |
| audiot.wl1       | Contains digitized sound effects and AdLib audio data | |
| config.wl1       | Stores game configuration settings | |
| gamemaps.wl1     | Contains Episode 1 level map data (shareware episode) |  |
| maphead.wl1      | Map header information for level lookup | |
| vgadict.wl1      | VGA graphics dictionary for decompression | |
| vgagraph.wl1     | Compressed graphics data (sprites, UI, textures) | |
| vgahead.wl1      | Header for VGA graphics data | |
| vswap.wl1        | Main asset container (sprites, walls, sounds) | |

---

### Wolfenstein 3D - Full Version (.WL6)

| File Name        | Description | Comments |
|------------------|------------|----------|
| audiohed.wl6     | Audio header file that indexes sound data | |
| audiot.wl6       | Contains digitized sound effects and AdLib audio data | |
| config.wl6       | Stores game configuration settings | |
| gamemaps.wl6     | Contains all level map data | |
| maphead.wl6      | Map header information for level lookup | |
| vgadict.wl6      | VGA graphics dictionary for decompression | |
| vgagraph.wl6     | Compressed graphics data (sprites, UI, textures) | |
| vgahead.wl6      | Header for VGA graphics data | |
| vswap.wl6        | Main asset container (sprites, walls, sounds) | |

---

### Spear of Destiny  (.SOD)

| File Name        | Description | Comments |
|------------------|------------|----------|
| audiohed.sod     | Audio header file that indexes sound data | |
| audiot.sod       | Contains digitized sound effects and AdLib audio data | |
| config.sod       | Stores game configuration settings | |
| gamemaps.sod     | Contains all level map data | |
| maphead.sod      | Map header information for level lookup | |
| vgadict.sod      | VGA graphics dictionary for decompression | |
| vgagraph.sod     | Compressed graphics data (sprites, UI, textures) | |
| vgahead.sod      | Header for VGA graphics data | |
| vswap.sod        | Main asset container (sprites, walls, sounds) | |

**Optional Mission Packs**

| File Name        | Description | Comments |
|------------------|------------|----------|
| gamemaps.sd2     | Level data for Mission Pack 2 - Return to Danger | |
| gamemaps.sd3     | Level data for Mission Pack 3 - Ultimate Challenge | |

---

### Super 3D Noah’s Ark (.N3D)

| File Name        | Description | Comments |
|------------------|------------|----------|
| audiohed.n3d     | Audio header file that indexes sound data | |
| audiot.n3d       | Contains digitized sound effects and music data | |
| gamemaps.n3d     | Contains all level map data | |
| maphead.n3d      | Map header information for level lookup | |
| vgadict.n3d      | VGA graphics dictionary for decompression | |
| vgagraph.n3d     | Compressed graphics data (sprites, UI, textures) | |
| vgahead.n3d      | Header for VGA graphics data | |
| vswap.n3d        | Main asset container (sprites, walls, sounds) | |

---

## Where to buy the games?

Below is a combined table containing purchase links.

| Game / Bundle | Steam Link | GOG Link | itch.io Link | Comments |
|---------------|------------|----------|--------------|---------|
| Wolfenstein 3D | [Steam](https://store.steampowered.com/app/2270/Wolfenstein_3D/) | [GOG](https://www.gog.com/en/game/wolfenstein_3d) |  | No version today includes the Spear of Destiny mission packs 2 and 3. |
| Super 3-D Noah's Ark | [Steam](https://store.steampowered.com/app/371180/Super_3D_Noahs_Ark/) | [GOG](https://www.gog.com/en/game/super_3d_noahs_ark) |(Recommended) [itch.io](https://wisdomtree.itch.io/s3dna) | 100% of itch.io purchases go to ECWolf directly and Steam key included |

---

## How-to: Get game from your bought copy of Wolfenstein 3D?

### Where are the game files? - Steam

1. Open **Steam**
2. Right-click the game in your Library
3. Select **Manage → Browse Local Files**
4. The file manager will open directly to the installation directory

**Wolfenstein 3D**

| Platform | Game / Folder | Example Path | Notes |
|----------|---------------|--------------|-------|
| Steam (Native) | Wolfenstein 3D | `~/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/` | Main installation directory |
| Steam (Native) | Wolfenstein 3D / original SOD levels | `~/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/m1/` | Contains only original SOD levels (no extra missions) |
| Steam (Flatpak) | Wolfenstein 3D | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/` | Flatpak sandbox path |
| Steam (Flatpak) | Wolfenstein 3D / original SOD levels | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/m1/` | Contains only original SOD levels (no extra missions) |

**Spear of Destiny**

**Note:** This has been delisted on Steam.

| Platform | Game | Example Path | Notes |
|----------|------|--------------|-------|
| Steam (Native) | Spear of Destiny | `~/.local/share/Steam/steamapps/common/Spear of Destiny/base/` | Full version including extra missions (.sd2, .sd3) |
| Steam (Flatpak) | Spear of Destiny | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Spear of Destiny/base/` | Full version including extra missions (.sd2, .sd3) |

---

### Where Are the Game Files? — GOG (Linux)

**Wolfenstein 3D**

| Platform / Method | Game / Folder | Example Path | Notes |
|------------------|---------------|--------------|-------|
| GOG (Native install) | Wolfenstein 3D | `~/GOG Games/Wolfenstein 3D/` | Default installer “GOG Games” folder |
| GOG (Native install) | Wolfenstein 3D / original SOD levels | `~/GOG Games/Wolfenstein 3D/base/m1/` | Contains original SOD levels (no extra missions) |
| GOG (Native install) | Super 3-D Noah’s Ark | `~/GOG Games/Super 3-D Noah’s Ark/` | Full game folder |

**Spear of Destiny**

**Note:** This has been delisted on GOG.

| Platform / Method | Game / Folder | Example Path | Notes |
|------------------|---------------|--------------|-------|
| GOG (Native install) | Spear of Destiny | `~/GOG Games/Spear of Destiny/` | Full version including extra missions (.sd2, .sd3) |


---

