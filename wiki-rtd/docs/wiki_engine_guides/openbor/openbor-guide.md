# OpenBOR - General Guide

<img src="../../../wiki_images/logos/openbor-logo.svg" width="100">

Open Beats of Rage (`OpenBOR`) is a beat 'em up game engine.


### Information:

- `.bor` / `.openbor` are uncompressed game folders. 
- Each game is self-contained; there is no global settings file.

---

### OpenBOR Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

- [OpenBOR Github](https://github.com/DCurrent/openbor)  
- [OpenBOR Wiki](https://github.com/DCurrent/openbor/wiki)  
- [Chronocrash Community](https://www.chronocrash.com/)  
- [Chronocrash Wiki](https://chronocrash.com/obor/wiki/)  
- [Chronocrash Forum](https://www.chronocrash.com/forum/)  

---

## Where to put the games

OpenBOR games should be put under the `retrodeck/roms/openbor/` directory.

---

## Does OpenBOR require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No, OpenBOR games are self-contained.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| `.openbor`  | OpenBOR folder format |
| `.bor`      | OpenBOR folder format |

> **Note:** `.openbor` and `.bor` are functionally identical.

Some handhelds, retro platforms, and emulation solutions use `.bor`, while others use `.openbor`. 

To simplify file transfers and ensure compatibility with RetroDECK, both file extensions are supported.

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type       | Folder                     | Comment |
|:---------:|:---------------------------|:-------|
| ROMs Folder     | `retrodeck/roms/openbor/`  | Root folder for all OpenBOR games |

### Example folder structure for a game

**Important:** `.bor` / `.openbor` require a text file inside the game folder named exactly like the folder:

- `Heroes of Phandalin.bor` → `Heroes of Phandalin.bor` (text file).
- `Heroes of Phandalin.openbor` → `Heroes of Phandalin.openbor` (text file).

```
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/ <-- Folder has the same name as the file
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Logs/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Paks/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Saves/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/ScreenShots/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Heroes of Phandalin.bor <-- Textfile
```

---

## Adding OpenBOR Games to RetroDECK

Extract the game into a new folder under `retrodeck/roms/openbor/` if it is compressed. 

Rename the game folder according to its format:

   - `.bor` → `<GameName>.bor` / `.openbor` → `<GameName>.openbor`.
   - Ensure a text file with the same name as the folder exists inside the folder.
   - The textfile does not need to contain any data.
   - End result should be: `<GameName>.bor/<GameName>.bor` / `<GameName>.openbor/<GameName>.openbor`.

The game should now be detected by RetroDECK.

### Example on Renaming

**Folder:** Heroes of Phandalin.bor / Heroes of Phandalin.openbor

**Text file inside folder:** Heroes of Phandalin.bor / Heroes of Phandalin.openbor

**End result:**

- `~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Heroes of Phandalin.bor` 
- `~/retrodeck/roms/openbor/Heroes of Phandalin.openbor/Heroes of Phandalin.openbor`

---

