# OpenBOR - General Guide

<img src="../../../wiki_images/logos/openbor-logo.svg" width="100">

Open Beats of Rage (`OpenBOR`) is a beat 'em up game engine.

---

### OpenBOR Links:

- [OpenBOR Github](https://github.com/DCurrent/openbor)  
- [OpenBOR Wiki](https://github.com/DCurrent/openbor/wiki)  
- [Chronocrash Community](https://www.chronocrash.com/)  
- [Chronocrash Wiki](https://chronocrash.com/obor/wiki/)  
- [Chronocrash Forum](https://www.chronocrash.com/forum/)  

---

## Where to put the games

OpenBOR games should be put under the `retrodeck/roms/openbor/` directory.

## Does OpenBOR Require BIOS or Firmware?

No, OpenBOR games are self-contained.

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| `.openbor`  | OpenBOR folder format |
| `.bor`      | OpenBOR folder format |

### Information:

- `.bor` and `.openbor` are uncompressed game folders. 
- Each game is self-contained; there is no global settings file.

## Folder structure

| Type       | Folder                     | Comment |
|:---------:|:---------------------------|:-------|
| ROMs      | `retrodeck/roms/openbor/`  | Root folder for all OpenBOR games |


### Example folder structure for Folder game

> **Important:** `.bor` or `.openbor` games require a text file inside the game folder named exactly like the folder:
> `Heroes of Phandalin.bor` → `Heroes of Phandalin.bor` (text file).
> `Heroes of Phandalin.openbor` → `Heroes of Phandalin.openbor` (text file).


```
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/ <-- Folder has the same name as the file
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Logs/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Paks/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Saves/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/ScreenShots/
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Heroes of Phandalin.bor <-- Textfile
```

---

## How to Add a Game

1. Extract the game into a new folder under `retrodeck/roms/openbor/` if it is compressed. 
2. Rename the game folder according to its format:
   - `.bor` → `<GameName>.bor`.
   - `.openbor` → `<GameName>.openbor`.
3. For `.bor` or `.openbor` games:
   - Ensure a text file with the same name as the folder exists inside the folder.
   - The textfile does not need to contain any data.
   - You can either `.bor` or `.openbor`, it does not matter. RetroDECK supports both.
   - End result should be: `<GameName>.bor/<GameName>.bor` or `<GameName>.openbor/<GameName>.openbor`.

The game should now be detected by RetroDECK.

### Example on Renaming


```
Folder: Heroes of Phandalin.bor
Text file inside folder: Heroes of Phandalin.bor
```


```
~/retrodeck/roms/openbor/Heroes of Phandalin.bor/Heroes of Phandalin.bor
```


```
Folder: Heroes of Phandalin.openbor
Text file inside folder: Heroes of Phandalin.openbor
```


```
~/retrodeck/roms/openbor/Heroes of Phandalin.openbor/Heroes of Phandalin.openbor
```

