# Commander X16 Emulator: General Guide

<img src="../../../wiki_images/logos/commander-x16-logo.png" width="150" alt="Commander X16 logo">

Commander X16 Emulator is a Commander X16 computer emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Commander X16 Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Commander X16 Website | [Link](https://www.commanderx16.com/) |
| Commander X16 Github | [Link](https://github.com/x16community/x16-emulator) |
| Commander X16 Forum | [Link](https://cx16forum.com/) |

---

## Where to put the games

- Commander X16 game directories should be put under the `retrodeck/roms/commander-x16/system` directory.
- Commander X16 BASIC program files should be put under the `retrodeck/roms/commander-x16/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| File Format | Description |
|-------------|-------------|
| `.BAS`       | Commander-X16 BASIC program File |

---

## Does Commander X16 require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs (Game Folders)   | `retrodeck/roms/commander-x16/system`      |  Game Directories goes here             |
| ROMs (`.BAS` )   | `retrodeck/roms/commander-x16/`             |   `.BAS` files            |

---

## How-to: Play Commander X16 games in RetroDECK?

⚠️ Use only **UPPERCASE** names for both the game directory and the corresponding `.BAS` file. Lowercase or mixed-case names will prevent the game from launching correctly. ⚠️

In this guide we will use the game **TETRADS** as an example.

### Step 1: Prepare a Commander X16 Game

- Download the game archive.
- Extract the game into an directory under: `retrodeck/roms/commander-x16/system/<GAME_FOLDER>/`. **Example:** `retrodeck/roms/commander-x16/system/TETRADS/`.
- Locate the game's `.PRG` file in the `<GAME_FOLDER>`. **Example:** `retrodeck/roms/commander-x16/system/TETRADS/TETRADS.PRG`.
- Navigate to: `retrodeck/roms/commander-x16/`.
- Create a BASIC `.BAS` launcher named **exactly** after the game folder `GAME_FOLDER.BAS`. **Example:** `TETRADS.BAS` 

### Step 2: Edit the .BAS File

Open the `.BAS` file in a text editor and add the following BASIC:

```
DOS "CD:<GAME_FOLDER>"
LOAD "<GAME_FILE>.PRG" RUN
```

- Replace `<GAME_FOLDER>` with your games folder. **Example:** `DOS "CD:TETRADS"`
- Replace `<GAME_FILE.PRG>` with your games .PRG file. **Example:** `LOAD "TETRADS.PRG"`
- **Note:** If a game has multiple `.PRG` files only use the one that has the same name as the `<GAME_FOLDER>`.

**Full Example: `TETRADS.BAS`**

```
DOS "CD:TETRADS"
LOAD "TETRADS.PRG" RUN
```

- Save the file.
- Launch the game from RetroDECK in the Commander X16 menu in ES-DE.

---

## Commander X16 Controls: ⌨️ Keyboard & 🖱️ Mouse  

While the Commander X16 computer supports SNES-style controllers for standard gameplay, certain system functions and shortcuts require a keyboard and mouse for full compatibility.

### Game Keys

The following keyboard keys map to the corresponding SNES style controller buttons when playing games.

| Keyboard | SNES Button |
|----------|-------------|
| <kbd>X</kbd> or <kbd>Ctrl</kbd> | <kbd>A</kbd> |
| <kbd>Z</kbd> or <kbd>Alt</kbd> | <kbd>B</kbd> |
| <kbd>S</kbd> | <kbd>X</kbd> |
| <kbd>A</kbd> | <kbd>Y</kbd> |
| <kbd>D</kbd> | <kbd>L</kbd> |
| <kbd>C</kbd> | <kbd>R</kbd> |
| <kbd>Shift</kbd> | <kbd>SELECT</kbd> |
| <kbd>Enter</kbd> | <kbd>START</kbd> |
| <kbd>↑</kbd> | <kbd>HAT UP</kbd> |
| <kbd>↓</kbd> | <kbd>HAT DOWN</kbd> |
| <kbd>←</kbd> | <kbd>HAT LEFT</kbd> |
| <kbd>→</kbd> | <kbd>HAT RIGHT</kbd> |


### Runtime Shortcuts

The following keyboard shortcuts are available while the emulator is running.

| Shortcut | Function |
|----------|----------|
| <kbd>Ctrl</kbd> + <kbd>F</kbd> or <kbd>Ctrl</kbd> + <kbd>Enter</kbd> | Toggle fullscreen mode |
| <kbd>Ctrl</kbd> + <kbd>M</kbd> | Toggle mouse capture |
| <kbd>Ctrl</kbd> + <kbd>P</kbd> | Save a screenshot as a PNG file |
| <kbd>Ctrl</kbd> + <kbd>R</kbd> | Reset the virtual computer |
| <kbd>Ctrl</kbd> + <kbd>Backspace</kbd> | Send a non-maskable interrupt (NMI), equivalent to the **RESTORE** key |
| <kbd>Ctrl</kbd> + <kbd>S</kbd> | Save a system dump (configured with the `-dump` option) |
| <kbd>Ctrl</kbd> + <kbd>V</kbd> | Paste the clipboard by simulating keyboard input |
| <kbd>Ctrl</kbd> + <kbd>=</kbd> or <kbd>Ctrl</kbd> + <kbd>+</kbd> | Toggle warp mode |
| <kbd>Alt</kbd> + <kbd>F4</kbd> | Exit Application |


---
