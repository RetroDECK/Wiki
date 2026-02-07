# Guide: GameTank

<img src="../../../wiki_images/logos/gametankman-logo.png" width="150">

GameTankEmulator is a 8-bit GameTank Emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### GameTank Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| GameTank Github | [Link](https://github.com/clydeshaffer/GameTankEmulator) |
| GameTank Webpage | [Link](https://gametank.zone/) |
| GameTank Games | [Link](https://gametank.zone/games/) |


---

## Where to put the games

GameTank games should be put under the `retrodeck/roms/gametank/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description |
|-------------|-------------|
| .gtr        | GameTank rom file |

---

## Does GameTank require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/gametank/`                             |               |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

### Built-in Hotkeys

| Key(s)          | Action |
|-----------------|------------------------------------------------------------|
| **F**           | **Fast‑forward** - skips `SDL_Delay` between instruction batches. |
| **R**           | **Soft reset** - clears registers, jumps to the RESET vector; RAM stays unchanged. |
| **Shift + R**   | **Hard reset** - randomises memory and registers to emulate a cold boot. |
| **Esc**         | **Exit** - terminates the program. |
| **O**           | **Load ROM** - opens a file dialog to load a ROM at runtime (also shown when no ROM is supplied on launch). |
| **F9**          | **Profiling window** - displays profiling data (only works if the ROM implements debug hooks). |
| **F10**         | **System state window** - shows CPU status, video/graphics memory contents, and other diagnostics. |

---
