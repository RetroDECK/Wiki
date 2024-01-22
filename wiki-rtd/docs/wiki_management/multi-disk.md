# Multidisk/file games: Directory interpreted as files

<img src="../../wiki_icons/pixelitos/application-x-iso.png" width="50">


You can put all the game files inside a sub-folder in order to keep you game list clean, these folder will be seen as the game itself from RetroDECK and not as an actual folder.

The folder needs to have the corresponding `.m3u` file and the folder needs to be renamed to the exact filename of the `.m3u`.

More info in the [ES-DE UserGuide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files).

**Example:**

In this case the folder will be viewed as a single game and it will launch `Dragon Fantasy VII.m3u` so you can easly swap the disks from RetroArch menu.

```
─── Dragon Fantasy VII.m3u   <--- Folder
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk3.chd <--- Game Disc
    └── Dragon Fantasy VII.m3u <--- The .m3u file
```


## How do I create a Multidisk Directory?

Let's use the `Dragon Fantasy VII` example as written above. It is a fake PlayStation 1 game.

### Step 1: Make a .m3u sub-folder
Make a new sub-folder inside the `roms/psx` directory (or what ever system you are creating for) where you move and store the `Dragon Fantasy VII` files with a `.m3u` file extension in the end.
The name of the folder will be `Dragon Fantasy VII.m3u` and the full file path will be:

`~/retrodeck/roms/psx/Dragon Fantasy VII.m3u`

And it should have the disc files inside of it:

```
─── Dragon Fantasy VII.m3u   <--- Folder
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    └── Dragon Fantasy VII - Disk3.chd <--- Game Disc
```

### Step 2: Make a .m3u file inside the folder.m3u
Following the example above, make an empty file inside the `Dragon Fantasy VII.m3u Folder` called the exact same thing as the folder name in this case: `Dragon Fantasy VII.m3u`. Now the full file path to the newly created .m3u file should be like this:

`~/retrodeck/roms/psx/Dragon Fantasy VII.m3u/Dragon Fantasy VII.m3u`

### Step 3: Populate the .m3u file

Open the `Dragon Fantasy VII.m3u` file with an text editor and write the filenames of all files contained in the folder, one per line.
When you are done, the structure  of the file should look something like this:

```
Dragon Fantasy VII - Disk1.chd
Dragon Fantasy VII - Disk2.chd
Dragon Fantasy VII - Disk3.chd
```

Note this also works with other files types like `.bin` `.iso` `.cue` `.bin` etc.. You just need to make sure that all the files in the folders are written inside the .m3u file.

### Step 4: Launch RetroDECK
The ES-DE interface that RetroDECK uses should now pick up on the game as one file and you can change disks inside RetroArch.
