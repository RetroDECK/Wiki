# ScummVM - General Guide

<img src="../../../wiki_images/logos/scummvm-logo.svg" width="150">

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

---

### Where to put the games?

ScummVM games should be put into the `retrodeck/roms/scummvm/` directory.

## What file formats are supported?

```
.scummvm
```


### Does ScummVM require BIOS or Firmware?

No


## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/scummvm/` |                               |  

## How-to: Create .scummvm files that run in ES-DE

This guide works for both the  `ScummVM-SA` and `ScummVM RetroArch Core`.

**Example:** 

In this example we got a game we want to add: `Beneath a Steel Sky`

### Step 1: Add the game

Move the uncompressed game into the `retrodeck/roms/scummvm/` folder.

The result should be: `retrodeck/roms/scummvm/Beneath a Steel Sky/`

### Step 2: Check the ScummVM ID of the game

<img src="../../../wiki_images/emulators/scummvm/scummvm-sky.png">

Go into [ScummVM Game Compatibility and ID List](https://www.scummvm.org/compatibility)

Search for `Beneath a Steel Sky` make a note of the ScummVM ID in this case called: `sky`

### Step 3: Create the .scummvm file

- The `.scummvm` file starts as a empty textfile that needs to be created in each game you want to adds directory.
- It should be named `<ScummVM_ID>.scummvm`
- In our example the file will be called `sky.scummvm` and should be created in `retrodeck/roms/scummvm/Beneath a Steel Sky/`

The end result should look like:

`retrodeck/roms/scummvm/Beneath a Steel Sky/sky.scummvm`

### Step 4: Open the .scummvm file and add the ScummVM_ID

Open up the empty `sky.scummvm` file and just type in the `<ScummVM_ID>` in the first row of the file and save in this example `sky`. 

Make sure you don't add any spaces or linebreaks and the file should just contain the word `sky`.

### Step 5: The game should now run

The game should now be added to the ES-DE interface from the `retrodeck/roms/scummvm/Beneath a Steel Sky/sky.scummvm` file you just created and can be played after you reload RetroDECK from the Configurator or re-launch the application.
