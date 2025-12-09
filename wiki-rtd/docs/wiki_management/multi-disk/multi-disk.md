# Multidisk/File Games: Folders as Files

<img src="../../../wiki_icons/pixelitos/application-x-iso.png" width="75">

To keep your game list tidy, you can place all game files inside a **sub-folder**. RetroDECK will treat the folder as a single game, not as a regular folder. The folder must contain a `.m3u` file and be **named exactly** like the `.m3u`.

More info: [ES-DE UserGuide: Folders as Files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files)

### Information

- It is recommended to use **.chd** files, as they take up less disk space if the component supports it. You can use the built-in compressor tool in the RetroDECK Configurator to convert other formats.
- If you have **.bin / .cue** files, only include the **.cue** files in the `.m3u` playlist.

---

## Example: PlayStation 1 Game: Dragon Fantasy VII

Let's use the fake PlayStation 1 game `Dragon Fantasy VII` as an example.

**Example:**

```
─── Dragon Fantasy VII.m3u    <--- Folder in retrodeck/roms/psx/
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk3.chd <--- Game Disc
    └── Dragon Fantasy VII.m3u <--- The .m3u file
```

RetroDECK will see the folder as a **single game** and launch the `.m3u` file.

---

## Create a .m3u Sub-folder

1. Create a new folder in `roms/psx/`.
2. Move all game files into it.
3. Name the folder `Dragon Fantasy VII.m3u`.

**Folder Path:** `retrodeck/roms/psx/Dragon Fantasy VII.m3u`

**Folder Content:**

```
─── Dragon Fantasy VII.m3u   <--- Folder
    ├── Dragon Fantasy VII - Disk1.chd <--- Game Disc
    ├── Dragon Fantasy VII - Disk2.chd <--- Game Disc
    └── Dragon Fantasy VII - Disk3.chd <--- Game Disc
```

---

## Create the .m3u File

Inside the folder, create a file named **exactly** like the folder: `Dragon Fantasy VII.m3u`.

**File Path:**

`retrodeck/roms/psx/Dragon Fantasy VII.m3u/Dragon Fantasy VII.m3u`

---

## Populate the .m3u File

1. Open the `.m3u` file in a text editor.
2. List all disk filenames, one per line.
3. Save the file with **Unix (LF) line endings**.

**Example Content:*

This shows the content of the`Dragon Fantasy VII.m3u` file:

```
Dragon Fantasy VII - Disk1.chd
Dragon Fantasy VII - Disk2.chd
Dragon Fantasy VII - Disk3.chd
```

RetroDECK will now recognize the folder as **one game** and launch it correctly.

---
