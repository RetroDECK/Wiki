# RetroArch - Texture Pack Guide

<img src="../../../wiki_images/logos/retroarch-logo.png" width="75">

## About Texture Packs

Some texture packs are designed for specific game versions or regions. Make sure the texture pack matches the exact version of the game you are using.

Each emulator core handles texture packs differently. 

To simplify management, RetroDECK tries to organize all texture packs under:

`retrodeck/texture_packs/retroarch/<system>` folder


---

## RetroDECK - Texture Pack Directory Mapping


|  Core        | texture_packs                          | Source Directory                   | Description      |
|------------------------|-----------------------------------------------------|----------------------------------------------------------|----------------------------|
| **Beetle PSX HW**      | `retrodeck/roms/psx/[game_filename]-texture-replacements/`    | -               | PlayStation 1              |
| **Citra**              | `retrodeck/texture_packs/retroarch/Citra/textures`           | `retroarch/saves/Citra/load/textures`                  | Nintendo 3DS               |
| **Dolphin**            | `retrodeck/texture_packs/retroarch/Dolphin/Textures`         | `retroarch/saves/dolphin-emu/User/Load/Textures/`     | GameCube / Wii             |
| **Flycast**            | `retrodeck/texture_packs/retroarch/Flycast/textures`         | `system/dc/textures`                                   | Sega Dreamcast             |
| **Mesen**              | `retrodeck/exture_packs/retroarch/Mesen/HdPacks`            | `retroarch/system/HdPacks`                              | NES                        |
| **Mupen64Plus**        | `retrodeck/texture_packs/retroarch/Mupen64Plus/cache`        | `retroarch/system/Mupen64plus/cache`                   | Nintendo 64 cached textures               |
| **Mupen64Plus**        | `retrodeck/texture_packs/retroarch/Mupen64Plus/hires_texture` | `retroarch/system/Mupen64plus/hires_texture`         | Nintendo 64 high-resolution texture                |
| **PPSSPP**             | `retrodeck/texture_packs/retroarch/PPSSPP/TEXTURES`          | `retroarch/saves/PPSSPP/PSP/TEXTURES`                  | PSP                        |

---

## Mesen

**Important:**
  
- **Extract the texture pack** from `.zip` or other compressed formats; do **not** leave them compressed.
- **Folder names must exactly match the ROM filename** (excluding the extension).  

### Enable HD Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options → Enable HD Packs** and set it to **On**.
3. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### Adding Texture Packs

1. Place extracted texture pack folders in: `retrodeck/exture_packs/retroarch/Mesen/HdPacks`     
2. The folder name must match the ROM filename (without the `.nes` extension).
3. Launch RetroDECK and start the game.  


### Example

For the game `ScaryCastle USA.nes` with the downloaded pack `ScaryCastle TexturePACK HD.zip`:

1. Extract the ZIP file.
2. Move the extracted folder into `texture_packs/retroarch/Mesen/HdPacks`.
3. Rename the folder to match the ROM exactly: `ScaryCastle USA`.
4. Launch RetroDECK and start the game.  

---

## Mupen64Plus-Next

**Important:**
  
- **Extract the texture pack** from `.zip` or other compressed formats; do **not** leave them compressed.
- **Folder names must exactly match the ROM filename** (excluding the extension).

### Enable HD Texture Packs

Open the **RetroArch Quick Menu**.

Go to **Core Options → GLideN64** and enable the following:

   - `Use High-Res Textures` → **On**
   - `Cache Textures` → **On**
   - `Use High-Res Full Alpha Channel` → **On**
   - `Use Hi-Res Storage` → **On**

Save the configuration for this game via **Core Options → Manage Core Options → Save Game Options**.

**Optional:**  

- `Use High-Res Texture Cache Compression` → **On**  *Compresses uncompressed HD textures into `.hts` files.*

### Adding Texture Packs

**Texture Types and Locations**

| Texture Type           | Folder to Place In                                                                 |
|------------------------|-----------------------------------------------------------------------------------|
| **Compressed (.hts)**  | `retrodeck/texture_packs/retroarch/Mupen64Plus/cache`                             |
| **Uncompressed (loose folders/files)** | `retrodeck/texture_packs/retroarch/Mupen64Plus/hires_texture`        |

---

## Beetle PSX HW

**Important:**

- In **ES-DE**, assign the game to use the **Beetle PSX HW** core.
- Works **only with Vulkan**.
- `[game_filename]` must exactly match the game file name.
- `[game_filename]-texture-replacements` must **not contain subfolders**.
- `[game_filename]-texture-replacements` must **not contain compressed files** all textures must be extracted.
- **Internal GPU Resolution** should be set higher than `1x (Native)`.
- **Supersampling → Downsample to Native Resolution** should be **disabled** otherwise, differences may not be noticeable at low resolution.
- Custom textures may **not load when using a save state**. Triggering a scene change in-game may be necessary to refresh textures.

### Enable Texture Replacements

1. Launch **RetroArch** via RetroDECK’s ES-DE frontend.
2. Open the **Quick Menu → Options**.
3. Enable `Load Texture Replacements`.
4. Save the configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### Adding Texture Packs

1. Extract your textures into a folder named: `[game_filename]-texture-replacements` next to your game in the `retrodeck/psx/<game>` directory.
2. `[game_filename]` must match the actual game file name.

**Example folder structure:**

`retrodeck/psx/Dragon Fantasy 7/DragonFantasy7-texture-replacements/`

or 

`retrodeck/psx/DragonFantasy7-texture-replacements/`

**Try to Launch the Game**

- Start the game normally via ES-DE.  
- The emulator will automatically load textures from the `[game_filename]-texture-replacements` folder.
- Check that the new textures are applied in-game.  
- If textures are missing, ensure the folder name matches the ROM and the files are correctly extracted.

---

## PPSSPP

**Important:**
  
- **Extract the texture pack** from `.zip` or other compressed formats; do **not** leave them compressed.
- `SERIAL` is different for every game. It's a unique code for each released game per region.

**Example:**

**SERIAL:** `ULUS-10080` corresponds to the NTSC-U release of `007-From Russia with Love`.

You can search various databases or wikis online to find the correct serial for the version of the game you have for example: 

- [psxdatacenter.com](https://psxdatacenter.com/). 
- Wikipedia

### Enable Texture Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options → Video** → `Texture Replacement` and set it to **On**.
3. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### How to Add Texture Packs

1. Navigate to `retrodeck/texture_packs/retroarch/PPSSPP/TEXTURES/`. The folders are named by `SERIAL`.
2. Paste the textures into the correct folder:  `retrodeck/texture_packs/retroarch/PPSSPP/TEXTURES/<SERIAL>`
3. If the textures match the game, they should load the next time you launch it.

---



## Flycast

**Important:**
  
- **Extract the texture pack** from `.zip` or other compressed formats; do **not** leave them compressed.
- `SERIAL` is different for every game. It's a unique code for each released game per region.

**Example:**

**SERIAL:** `T36802N` corresponds to the NTSC-U release of `Legacy of Kain: Soul Reaver`.

You can search various databases or wikis online to find the correct serial for the version of the game you have.

### Enable Texture Packs

1. Open the **RetroArch Quick Menu**.
2. Go to **Core Options → Emulation Hacks** → `Load Custom Textures` and set it to **On**.
3. Save this configuration for the game via **Core Options → Manage Core Options → Save Game Options**.

### How to Add Texture Packs

1. Navigate to `retrodeck/texture_packs/retroarch/Flycast/textures`. The folders are named by `SERIAL`.
2. Paste the textures into the correct folder:  `retrodeck/texture_packs/retroarch/Flycast/textures/<SERIAL>`
3. If the textures match the game, they should load the next time you launch it.

---