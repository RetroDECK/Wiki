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

ECWolf game files must be placed in the `retrodeck/roms/wolf` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .pak | Wolfenstein PAK file |


---

## Does ECWolf require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

However, you do need copies of the official game data.

--- 

## Where to buy the games?

Below is a combined table containing purchase links.

If purchased through itch.io, all proceeds go to ECWolf and you still get a Steam key!

| Game / Bundle| Steam Link| GOG Link | itch.io Link |
|--------------------------|-------------------------------------------------------------------------|------------------------------------------------------------------------|------------------------------------------------------------------------|
| Wolfenstein 3D | [Steam](https://store.steampowered.com/app/2270/Wolfenstein_3D/)| [GOG](https://www.gog.com/en/game/wolfenstein_3d) |  |
| Super 3-D Noah's Ark | [Steam](https://store.steampowered.com/app/371180/Super_3D_Noahs_Ark/)| [GOG](https://www.gog.com/en/game/super_3d_noahs_ark)| [Itch.io](https://wisdomtree.itch.io/s3dna)  |

---

## ECWolf Required Game Data Files

Below are the original game data files required by **ECWolf** to run:

- Wolfenstein 3D
- Spear of Destiny 
- Spear of Destiny - Mission Pack 2 - Return to Danger
- Spear of Destiny - Mission Pack 3 - Ultimate Challenge
- Super 3D Noah’s Ark

These files must be copied from your legally obtained game installation.

### Wolfenstein 3D (Full Version (.WL6)

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

### Spear of Destiny (Full Version (.SOD)

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
| gamemaps.sd2     | Level data for Mission Pack 2 (Return to Danger) | |
| gamemaps.sd3     | Level data for Mission Pack 3 (Ultimate Challenge) | |

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

## How-to: Get PAKs from your bought copy of Wolfenstein



### Where are the PAK files? - Steam

**Find the location by:**

- Right-click **Wolfenstein** in your Steam library and select: **Manage → Browse Local Files**.

Or by browsing to:

- **Steam:** `~/.local/share/Steam/steamapps/common/Wolfenstein/id1/` 

- **Steam Flatpak:** `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Wolfenstein/id1/`

---

## Directory Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type | Directory | Comment |
|:----:|:--------------------------------------|:-----------------------------------------------|
| ROMs | `retrodeck/roms/quake/wolf` | |

---
