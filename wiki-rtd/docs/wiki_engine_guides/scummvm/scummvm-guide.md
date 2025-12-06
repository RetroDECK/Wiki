# ScummVM - General Guide

<img src="../../../wiki_images/logos/scummvm-logo.svg" width="100">

ScummVM is a engine which allows you to run certain classic graphical adventure and role-playing games.

**Note:** 

`ScummVM-SA` is not implemented in RetroDECK yet. But will be available in a future version, only the `ScummVM RetroArch Core` exists for now.

---

### ScummVM Links:

[ScummVM Guides](https://docs.scummvm.org/en/v2.7.1/)

[ScummVM Game Compatibility and ID List](https://www.scummvm.org/compatibility)

[ScummVM Wiki](https://wiki.scummvm.org/index.php?title=Main_Page)

[ScummVM Github](https://github.com/scummvm/scummvm)

[ScummVM Webpage](https://www.scummvm.org/)

[ScummVM Freeware Games](https://www.scummvm.org/games)

---

### Where to put the games?

ScummVM games should be put into the `retrodeck/roms/scummvm/` directory.

---

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .scummvm    | ScummVM game folder |

---


## Does ScummVM require BIOS or Firmware?

No

---

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/scummvm/` |                               |  

---

## Adding ScummVM Games to RetroDECK: Creating .scummvm files

This guide works for both the  `ScummVM-SA` and `ScummVM RetroArch Core`.

**Example:** 

In this example we got a game we want to add: `Beneath a Steel Sky`.

### Step 1: Add the game

Move the uncompressed game into the `retrodeck/roms/scummvm/` folder.

The result should be: `retrodeck/roms/scummvm/Beneath a Steel Sky/`

### Step 2: Rename the folder

Rename and add `.scummvm` at the end of the folder name.

Result:

`retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/`

### Step 3: Create the .scummvm file

- The `.scummvm` file starts as a empty textfile that needs to be created in the games folder.
- It should be named `<GameName>.scummvm`
- In our example the file will be called `Beneath a Steel Sky.scummvm` and should be created in `retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/`

The filename should have the same name as the folder.

The end result should look like:

`retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/Beneath a Steel Sky.scummvm`

### Step 4: Check the ScummVM ID of the game

<img src="../scummvm-sky.png">

Go into [ScummVM Game Compatibility and ID List](https://www.scummvm.org/compatibility)

Search for `Beneath a Steel Sky` make a note of the `ScummVM ID` in this case called: `sky`

### Step 5: Open the .scummvm file and add the ScummVM ID

Open up the empty `Beneath a Steel Sky.scummvm` file and just type in the `ScummVV ID` in the first row of the file and save in this example `sky`. 

Make sure you don't add any spaces or linebreaks and the file should just contain the word `sky`.

### Step 6: The game should now run

The game should now be able to launch in RetroDECK.

---