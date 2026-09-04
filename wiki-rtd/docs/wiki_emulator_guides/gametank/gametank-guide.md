# Guide: GameTankEmulator

<img src="../../../wiki_images/logos/gametankman-logo.png" width="150" alt="Gametankman logo">

GameTankEmulator is a emulator for the GameTank.

The GameTank is an open-source 8-bit retro console that can be built and is programmed by its community.

Inspired by fantasy consoles such as the Pico-8 and TIC-80.

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

## ⚠️ Bleeding-Edge Component ⚠️ 

**Warning:** This component is under rapid development and may be unstable.

- Performance may vary across hardware configurations.
- Some standard features available in other components may not yet be supported.
- Controllers or other input devices may require manual configuration.
- Compatibility may vary across the supported game library.
- Functionality, performance and compatibility may change as development progresses.

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
| <kbd>F10</kbd> | System state window | Shows CPU status, video/graphics memory and diagnostics. |
| <kbd>F11</kbd> | Fullscreen | Go to fullscreen mode **does not always work** |
| <kbd>O</kbd> | Load ROM | Opens a file dialog at runtime; also shown on launch without a ROM. |
| <kbd>R</kbd> | Soft reset | Clears registers, jumps to RESET vector; RAM unchanged. |
| <kbd>Shift</kbd> + <kbd>R</kbd> | Hard reset | Randomises memory and registers to emulate a cold boot. |


---

## Troubleshooting

### Input schemes vary per game

Input schemes vary per game refer to individual game documentation for mappings.

### Limited Fullscreen

The emulator is experimental and fullscreen does not always work as it should.

---
