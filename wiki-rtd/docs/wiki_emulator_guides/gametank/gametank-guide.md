# Guide: GameTankEmulator

<img src="../../../wiki_images/logos/gametankman-logo.png" width="150" alt="Gametankman logo">

GameTankEmulator is a GameTank console emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### GameTank Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| GameTank Github | [Link](https://github.com/clydeshaffer/GameTankEmulator) |
| GameTank Webpage | [Link](https://gametank.zone/) |
| GameTank Games | [Link](https://gametank.zone/games/) |


---

## ⚠️ Bleeding-Edge Emulator ⚠️ 

This emulator is under rapid development and considered **bleeding edge**. It may be unstable, may not operate at maximum performance across all hardware configurations, may lack certain standard features available in other components, and may be incompatible with portions of the supported game library.

---

## Where to put the games

GameTank games should be put under the `retrodeck/roms/gametank/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| File Format | Description |
|-------------|-------------|
| .gtr        | GameTank rom file |

---

## Does GameTank require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/gametank/`                             |               |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

### Built-in Hotkeys

| **Shortcuts** | **Action** | **Comment** |
|:--|:--|:--|
| <kbd>Esc</kbd> | Exit | Terminates the program. |
| <kbd>F</kbd> | Fast-forward | Skips `SDL_Delay` between instruction batches. |
| <kbd>F9</kbd> | Profiling window | Displays profiling data (requires ROM debug hooks). |
| <kbd>F10</kbd> | System state window | Shows CPU status, video/graphics memory, and diagnostics. |
| <kbd>O</kbd> | Load ROM | Opens a file dialog at runtime; also shown on launch without a ROM. |
| <kbd>R</kbd> | Soft reset | Clears registers, jumps to RESET vector; RAM unchanged. |
| <kbd>Shift</kbd> + <kbd>R</kbd> | Hard reset | Randomises memory and registers to emulate a cold boot. |


---

## Troubleshooting

### Input schemes vary per game

Input schemes vary per game refer to individual game documentation for mappings.

### No Fullscreen

The emulator is experimental and there is no fullscreen.

---
