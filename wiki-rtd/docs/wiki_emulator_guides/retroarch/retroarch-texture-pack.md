# RetroArch - Texture Pack Guide

<img src="../../../wiki_images/logos/retroarch-logo.png" width="75">

## About Texture Packs

Each RetroArch core handles texture packs differently.

To simplify management, **RetroDECK** tries to organize all texture packs under the following directory for convenience:

`retrodeck/texture_packs/retroarch/<system>`

---

## RetroDECK - Texture Pack Locations

|  Core        | Texture Pack Locations                          | Source Directory                   | System      |
|------------------------|-----------------------------------------------------|----------------------------------------------------------|----------------------------|
| **Beetle PSX HW**      | `retrodeck/roms/psx/<game_filename>-texture-replacements/`    | The folder is next to the game itself               | PlayStation 1              |
| **Citra**              | `retrodeck/texture_packs/retroarch/Citra/textures`           | `retroarch/saves/Citra/load/textures`                  | Nintendo 3DS               |
| **Dolphin**            | `retrodeck/texture_packs/retroarch/Dolphin/Textures`         | `retroarch/saves/dolphin-emu/User/Load/Textures/`     | GameCube / Wii             |
| **Flycast**            | `retrodeck/texture_packs/retroarch/Flycast/textures`         | `system/dc/textures`                                   | Sega Dreamcast             |
| **Mesen**              | `retrodeck/exture_packs/retroarch/Mesen/HdPacks`            | `retroarch/system/HdPacks`                              | NES                        |
| **Mupen64Plus**        | **Cached textures:** <br> `retrodeck/texture_packs/retroarch/Mupen64Plus/cache`  <br><br> **Hires textures:** <br> `retrodeck/texture_packs/retroarch/Mupen64Plus/hires_texture`      | `retroarch/system/Mupen64plus/cache`  <br><br>   `retroarch/system/Mupen64plus/hires_texture`     | Nintendo 64    |
| **PPSSPP**             | `retrodeck/texture_packs/retroarch/PPSSPP/TEXTURES`          | `retroarch/saves/PPSSPP/PSP/TEXTURES`                  | PSP                        |



---

## Before You Begin

- **Extract the texture pack** from any `.zip` or other compressed archive. Texture packs must be fully extracted; do **not** use them while compressed.
- Ensure that **texture replacement is enabled in RetroArch for the specific core you intend to use**.  **Note:** Texture replacement settings can vary between cores. Refer to the relevant section of this guide for core-specific instructions.
- After placing the textures in the correct directory, launch the game normally through **ES-DE** and verify that the new textures load correctly in-game.

### Troubleshooting: Textures Not Showing

- Ensure that the **texture pack folder name matches the ROM name** and/or contains the  ` SERIAL`  / ` GAME_ID`  / ` TITLE_ID` . 
- All files must be **properly extracted** for RetroArch to recognize them.
- Some texture packs are designed for specific **game versions or regions**. Verify that the texture pack matches the **exact version** of the game you are using.
- Check for unnecessary subfolders. In most cases, textures should be located directly in the **root of the texture pack folder** rather than nested inside additional directories.

---

## Beetle PSX HW Core

**Important:**

- Works **only with Vulkan**.
- `<game_filename>` must exactly match the game file name.
- `<game_filename>-texture-replacements` must **not contain subfolders**.
- `<game_filename>-texture-replacements` must **not contain compressed files** all textures must be extracted.
- `Internal GPU Resolution` should be set higher than **1x (Native)**.
- `Supersampling` → `Downsample to Native Resolution` should be **Disabled** otherwise, differences may not be noticeable at low resolution.
- Custom textures may **not load when using a save state**. Triggering a scene change in-game may be necessary to refresh textures.

### Enable Texture Replacements

1. Launch **RetroArch** via RetroDECK’s ES-DE frontend.
2. Open the **Quick Menu → Options**.
3. `Load Texture Replacements` to **Enabled** .
4. Save the configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### Adding Texture Packs

1. Extract your textures into a folder named: `<game_filename>-texture-replacements` next to your game in the `retrodeck/psx/<game>` or `retrodeck/psx/<game subfolder>/<game>` ddirectory.
2. `<game_filename>` must match the actual game file name.

### Example: Alundra

If the game is stored inside a subfolder:

`retrodeck/psx/Alundra/Alundra-texture-replacements/`

If the game file is placed directly in the main PSX directory: 

`retrodeck/psx/Alundra-texture-replacements/`

### Textures in .m3u files

If the game uses an `.m3u` structure, create the folder `<game_filename>-texture-replacements` and place it inside the same directory as the `.m3u` file and its disc images.

**Folder content:**

```
─── Dragon Fantasy VII.m3u   <--- Folder in retrodeck/roms/psx/
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk3.chd <--- Game Disc
    ├── Dragon Fantasy VII-texture-replacements/ <--- Texture Replacement folder
    └── Dragon Fantasy VII.m3u <--- The .m3u file
    
```

**.m3u file content**

```
Dragon Fantasy VII - Disk1.chd
Dragon Fantasy VII - Disk2.chd
Dragon Fantasy VII - Disk3.chd
Dragon Fantasy VII-texture-replacements/ 
```

**Read more about .m3u files:**

- [Multi Disk: Guide](../../wiki_management/multi-disk.md)

---


## Citra Core

**Important:**
  
- `TITLE_ID` is different for every game. It's a unique code for each released game per region.
- `TITLE_ID` must exactly match the ROM you are using.

**Example:**

**TITLE_ID`:** `00040000000DE200` corresponds to the NTSC-U release of `3D Shinobi III: Return of the Ninja Master`.

You can search various databases or wikis online to find the correct serial for the version of the game you have for example: 

- [3dsdb](https://3dsdb.com/)
- Wikipedia

### Enable Texture Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options**
3. `Enable Custom Textures` and set it to **On**.
4. `Resolution Scale` and set it to **4x** (or more).
5. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### How to Add Texture Packs

1. Navigate to `retrodeck/texture_packs/retroarch/Citra/textures`. The folders are named by `TITLE_ID`.
2. Paste the textures into the correct folder:  `retrodeck/texture_packs/retroarch/Citra/textures/<TITLE_ID>/<textures>`

### Example: 3D Shinobi III: Return of the Ninja Master

The full folder path will be:

`retrodeck/texture_packs/retroarch/Citra/textures/00040000000DE200/<textures>`

---

## Dolphin Core

**Important:**
  
- `GAME_ID` is different for every game. It's a unique code for each released game per region.
- `GAME_ID` must exactly match the ROM you are using.

**Example:**

**GAME_ID`:** `RPJE7U` corresponds to the NTSC-U release of `Arc Rise Fantasia`.

You can search various databases or wikis online to find the correct serial for the version of the game. Alternatively, by opening **Dolphin Standalone**, you can find it directly within the emulator:

1. Right-click the game.
2. Select **Properties**.
3. Navigate to the **Info** tab.
4. View the **Game ID**.

### Enable Texture Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options**
3. `Load Custom Texturess` and set it to **On**.
4. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.


### How to Add Texture Packs

1. Navigate to `retrodeck/texture_packs/retroarch/Dolphin/Textures`. The folders are named by `GAME_ID`.
2. Paste the textures into the correct folder:  `retrodeck/texture_packs/retroarch/Dolphin/Textures/<GAME_ID>/<textures>`

### Example: Arc Rise Fantasia

The full folder path will be:

`retrodeck/texture_packs/retroarch/Dolphin/Textures/RPJE7U/<textures>`

---

## Flycast Core
 
**Important:**
  
- `SERIAL` is different for every game. It's a unique code for each released game per region.
- `SERIAL` must exactly match the ROM you are using.

**Example:**

**SERIAL:** `T36802N` corresponds to the NTSC-U release of `Legacy of Kain: Soul Reaver`.

You can search various databases or wikis online to find the correct serial for the version of the game you have.

### Enable Texture Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options → Emulation Hacks**
3. `Load Custom Textures` and set it to **On**.
4. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### How to Add Texture Packs

1. Navigate to `retrodeck/texture_packs/retroarch/Flycast/textures`. The folders are named by `SERIAL`.
2. Paste the textures into the correct folder:  `retrodeck/texture_packs/retroarch/Flycast/textures/<SERIAL>/<textures>`


### Example: Legacy of Kain: Soul Reaver

The full folder path will be:

`retrodeck/texture_packs/retroarch/Flycast/textures/T36802N/<textures>`

---

## Mupen64Plus-Next Core

- **Folder names must exactly match the ROM filename** (excluding the extension).

### Enable HD Texture Packs

Open the **RetroArch Quick Menu**.

Go to **Core Options → GLideN64** and enable the following:

   - `Use High-Res Textures`→ **On**
   - `Cache Textures` → **On**
   - `Use High-Res Full Alpha Channel` → **On**
   - `Use Hi-Res Storage` → **On**

Save the configuration for this game via **Core Options → Manage Core Options → Save Game Options**.

**Optional:**

- Use High-Res Texture Cache Compression → **On**  *Compresses uncompressed HD textures into `.hts` files.*

### Adding Texture Packs

**Texture Types and Locations**

| Texture Type           | Folder to Place In                                                                 |
|------------------------|-----------------------------------------------------------------------------------|
| **Compressed (.hts)**  | `retrodeck/texture_packs/retroarch/Mupen64Plus/cache`                             |
| **Uncompressed (loose folders/files)** | `retrodeck/texture_packs/retroarch/Mupen64Plus/hires_textures`        |

### Example: Space Station Silicon Valley

For the game `Space Station Silicon Valley (USA).n64` with the downloaded pack `Space Station Silicon Valley TexturePACK HD.zip`:

Place the extracted folder in the following **renamed directory** depending on the type of textures you have:

- `retrodeck/texture_packs/retroarch/Mupen64Plus/cache/Space Station Silicon Valley (USA)/<textures>`
- `retrodeck/texture_packs/retroarch/Mupen64Plus/hires_textures/Space Station Silicon Valley (USA)/<textures>`

---

## Mesen Core

**Important:**
  
- **Folder names must exactly match the ROM filename** (excluding the extension).

### Enable HD Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options**
3. `Enable HD Packs` and set it to **On**.
4. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### Adding Texture Packs

1. Place extracted texture pack folders in: `retrodeck/exture_packs/retroarch/Mesen/HdPacks/<ROM filename>/<textures>`.
2. The folder name must match the ROM filename (without the `.nes` extension).

### Example: Dr. Jekyll and Mr. Hyde 

For the game `Dr. Jekyll and Mr. Hyde (USA).nes` with the downloaded pack `Dr. Jekyll and Mr. Hyde TexturePACK HD.zip`:

Place the extracted folder in the following **renamed directory**:

`texture_packs/retroarch/Mesen/HdPacks/Dr. Jekyll and Mr. Hyde (USA)/<textures>`

---

## PPSSPP Core

**Important:**
  
- `SERIAL` is different for every game. It's a unique code for each released game per region.
- `SERIAL` must exactly match the ROM you are using.

**Example:**

**SERIAL:** `ULUS-10080` corresponds to the NTSC-U release of `007-From Russia with Love`.

You can search various databases or wikis online to find the correct serial for the version of the game you have for example: 

- [psxdatacenter.com](https://psxdatacenter.com/). 
- Wikipedia

### Enable Texture Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options → Video**
3. `Texture Replacement` and set it to **On**.
4. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### How to Add Texture Packs

1. Navigate to `retrodeck/texture_packs/retroarch/PPSSPP/TEXTURES/`. The folders are named by `SERIAL`.
2. Paste the textures into the correct folder:  `retrodeck/texture_packs/retroarch/PPSSPP/TEXTURES/<SERIAL>/<textures>`


### Example: 007-From Russia with Love

The full folder path will be:

`retrodeck/texture_packs/retroarch/Flycast/textures/ULUS-10080/<textures>`

---
