# OpenBOR - General Guide

<img src="../../../wiki_images/logos//openbor-logo.svg" width="150">

Open Beats of Rage or `OpenBOR` is a beat 'em up game engine.

**NOTE THIS IS NOT IMPLEMENTED YET**

---

### OpenBOR Links:

[OpenBOR Github](https://github.com/DCurrent/openbor)

[OpenBOR Wiki](https://github.com/DCurrent/openbor/wiki)

[Chronocrash Community](https://www.chronocrash.com/)

[Chronocrash Wiki](https://chronocrash.com/obor/wiki/)

[Chronocrash Forum](https://www.chronocrash.com/forum/)

---

## Where to put the games

OpenBOR games should be put under the  directory.

## Does OpenBOR require BIOS or Firmware?
No

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .AppImage   | Linux application package |
| .openbor    | RetroDECK Open Beats of Rage folder |

### Information

- The games need to be uncompressed to a folder.
- Each game is its own self-contained game, and no overarching settings exist.

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/openbor/` |                               |  


### Example folder structure of a OpenBOR game

A fake fan game called `Heroes of Phandalin`

```
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/Logs/
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/Paks/
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/Saves/
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/ScreenShots/
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/Heroes of Phandalin.AppImage
```

## OpenBOR How-to add a game

- Extract the game if it is compressed into a new folder under `roms/openbor/`.
- Rename the folder so it is called `<gamename>.AppImage` in the end of it.
- Open the game folder and see if the `OpenBOR-Linux-x64-<versionnumber>.AppImage` file is there in the root of the folder.
- If the file is there rename it to `<gamename>.AppImage`.

The game should now be detected and runnable from RetroDECK.

### Example on renaming:

If the game is called Heroes of Phandalin rename the `OpenBOR-Linux-x64-<versionnumber>.AppImage` file & the games folder to `Heroes of Phandalin.AppImage`

```
~/retrodeck/roms/openbor/Heroes of Phandalin.AppImage/Heroes of Phandalin.AppImage
```

The `Heroes of Phandalin.AppImage` file exists within the `Heroes of Phandalin.AppImage` folder.

### OpenBOR.AppImage is missing:

If the `OpenBOR-Linux-x64-<versionnumber>.AppImage` is missing from the games folder you will need to download it from [OpenBOR Github](https://github.com/DCurrent/openbor) releases page and add it to the game folder.

Copy the file the games folder and rename it as stated above then make it executable.

**NOTE: On compatibly** <br>
Some games might only be compatible with certain version of OpenBOR. Try the latest version first and if that does not work check the games folder for clues on what version it was made for and download the correct .AppImage version from [OpenBOR Github](https://github.com/DCurrent/openbor) releases page.

#### Make the file executable

**Using the terminal:**

```
chmod +x OpenBOR-Linux-x64-<versionnumber>.AppImage
```

**Using the Systems GUI**

This example is from KDE:

Right Click on `OpenBOR-Linux-x64-<versionnumber>.AppImage` -> Properties -> Permissions -> Check the `Is executable` checkbox.
