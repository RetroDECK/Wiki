# RetroDECK: Games Compressor 

<img src="../../../wiki_icons/pixelitos/compress-blue.png" width="75">

## The RetroDECK Compression Tool

<img src="../classic-configurator-compress.png" width="800">

The RetroDECK Compression Tool allows you to compress game files into `.chd`, `.zip`, or `.rvz` formats. Compressed files are saved alongside the original games in your ROM directories, with the option to delete the originals automatically.

---

### Information

- RetroDECK will **skip games that have already been compressed** in the selected format.
- If a game has no compatible compression formats, it will be skipped.
- For `.cue` files, associated `.bin` files must exist for CHD compression to succeed.
- Logs will indicate progress, warnings, and errors throughout the compression process.
- Compression may take a long time depending on the number of games, file sizes, and your hardware.

---

### Supported Compression Formats

| Format | Description | Supported Systems / Notes |
|--------|------------|---------------------------|
| **CHD** | Compresses ISO, CUE, or GDI disk images. Best for PS2, PSP, and similar systems. | CUE/BIN validation required for certain systems. |
| **ZIP** | Standard archive compression. Ideal for ROMs with individual files. | Only specific systems and file extensions are supported. |
| **RVZ** | Dolphin-compatible compressed GameCube/Wii images. | `.iso` or `.gcm` files only. |


----

### Using the RetroDECK Compression Tool

1. Open **RetroDECK Configurator**.
2. Navigate to **Data Management Tools** → **Compress Games**.
3. Choose one of the following options:

- **Compress a Single Game**: Select one game file to compress.  
- **Compress All Compatible Games**: RetroDECK will scan all ROM folders and compress all compatible files automatically.

---

## Compressing from CLI

If you for some reason don't want to use the GUI CLI is also an option.

###  Single Game

Launch the CLI with `flatpak run net.retrodeck.net --compress-one <full_path_to_game>`.

Confirm whether you want the original file removed after compression.

Press Enter to start compression:

- RetroDECK validates compatibility of the game.
- Compresses the game if possible.
- Compress compatible files while respecting system CPU limits for parallel processing.

###  All Games

Launch the CLI with `flatpak run net.retrodeck.net --compress-all <format>`, where `<format>` can be `chd`, `zip`, `rvz`, or `all`.

Confirm whether you want the original files removed after compression.

 Press Enter to start compression.
 
- Scan ROM directories for compatible games.
- Validate each file.
- Compress compatible files while respecting system CPU limits for parallel processing.
   
---
   

