# ScummVM - General Guide

<img src="../../../wiki_images/logos/scummvm-logo.svg" width="100">

ScummVM is a engine which allows you to run certain classic graphical adventure and role-playing games.

**Note:** 

`ScummVM-SA` is not implemented in RetroDECK yet. But will be available in a future version, only the `ScummVM RetroArch Core` exists for now.

---

### ScummVM Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| ScummVM - Freeware Games | [Link](https://www.scummvm.org/games) |
| ScummVM - Game Compatibility and ID List | [Link](https://www.scummvm.org/compatibility) |
| ScummVM - Github | [Link](https://github.com/scummvm/scummvm) |
| ScummVM - Guides | [Link](https://docs.scummvm.org/en/v2.7.1/) |
| ScummVM - Webpage | [Link](https://www.scummvm.org/) |
| ScummVM - Wiki | [Link](https://wiki.scummvm.org/index.php?title=Main_Page) |


---

### Where to put the games?

ScummVM games should be put into the `retrodeck/roms/scummvm/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .scummvm    | ScummVM game directory |

---


## Does ScummVM require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type | Directory                  | Comment |
|:----:|:---------------------------|:-------|
| ROMs | `retrodeck/roms/scummvm/`  |        |


---

## Adding ScummVM Games to RetroDECK: Creating `.scummvm` Files

This guide applies to both **ScummVM-SA** and the **ScummVM RetroArch Core**.

**Example**

The following example uses *Beneath a Steel Sky*.

---

### Step 1: Add the Game Files

Move the uncompressed game files into the ScummVM ROM directory:

`retrodeck/roms/scummvm/Beneath a Steel Sky/`


---

### Step 2: Rename the Game Directory

Rename the directory by adding `.scummvm` to its name:

`retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/`

---

### Step 3: Create the `.scummvm` File

1. Create an empty text file inside the game directory.
2. Name the file exactly the same as the directory, including the `.scummvm` extension.

Resulting path:

`retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/Beneath a Steel Sky.scummvm`

---

### Step 4: Determine the ScummVM ID

Look up the game's **ScummVM ID** or **ScummVM ID Key** in the [ScummVM - Gamelist](scummvm-gamelist.md).


---

### Step 5: Add the ScummVM Identifier

Open the `.scummvm` file and add **one** identifier on the **first line only**.

- Use **either** the **ScummVM ID** (recommended) **or** the **ScummVM ID Key**
- Do **not** add spaces, extra lines, or any other text

**Examples:**

ScummVM ID (recommended):

`sky:sky`
 
ScummVM ID Key:

`sky`

---

### Step 6: Launch the Game

The game should now be detected and launch correctly in RetroDECK.

---
