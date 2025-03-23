# Multidisk/File Games: Folders Interpreted as Files

<img src="../../wiki_icons/pixelitos/application-x-iso.png" width="75">

To keep your game list clean, you can put all the game files inside a sub-folder. This folder will be seen as the game itself in RetroDECK, not as an actual folder. The folder needs to have the corresponding `.m3u` file and be renamed to the exact filename of the `.m3u`.

For more information, you can check the: [ES-DE UserGuide: Folders as Files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files).

## Guide - How do I create a Multidisk Folder?

Let's use the fake PlayStation 1 game `Dragon Fantasy VII` as an example.

**Example:**

```
─── Dragon Fantasy VII.m3u   <--- Folder
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk3.chd <--- Game Disc
    └── Dragon Fantasy VII.m3u <--- The .m3u file
```
In this case the folder will be viewed as a single game and it will launch `Dragon Fantasy VII.m3u`.

### Step 1: Create a .m3u Sub-folder

Make a new sub-folder in `roms/psx` (or whichever system you are creating for) and move the `Dragon Fantasy VII` files there.
Name the folder `Dragon Fantasy VII.m3u`.

**Result:**

Path: `retrodeck/roms/psx/Dragon Fantasy VII.m3u`

Content: 

```
─── Dragon Fantasy VII.m3u   <--- Folder
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    └── Dragon Fantasy VII - Disk3.chd <--- Game Disc
```

### Step 2: Create a .m3u File in the Sub-folder

Create an empty file in the `Dragon Fantasy VII.m3u` folder with the same name as the folder: `Dragon Fantasy VII.m3u`.

**Result:**

`retrodeck/roms/psx/Dragon Fantasy VII.m3u/Dragon Fantasy VII.m3u`

### Step 3: Populate the .m3u File

Open the `Dragon Fantasy VII.m3u` file with a text editor and write the filenames of all files in the folder, one per line and save.

The file should have Unix line endings (LF), not Windows (CR+LF).

**Result:**

This shows the content of the`Dragon Fantasy VII.m3u` file:

```
Dragon Fantasy VII - Disk1.chd
Dragon Fantasy VII - Disk2.chd
Dragon Fantasy VII - Disk3.chd
```

### Step 4: Launch RetroDECK

The ES-DE interface that RetroDECK uses should now recognize the game as one file.
