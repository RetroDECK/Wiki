# Visual Pinball X - General Guide

<img src="../../../wiki_images/logos/vpinballx-logo.png" width="150" alt="Vpinballx logo">

Visual Pinball X (vpx) is an virtual pinball (vpinball) engine that simulates pinball tables.



### Visual Pinball X

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| VPForums.org  | [Link](https://www.vpforums.org/) |
| VPUniverse | [Link](https://vpuniverse.com/) |
| Internet Pinball Machine Database (IPDB) | [Link](https://www.ipdb.org/) |
| Visual Pinball X - GitHub | [Link](https://github.com/vpinball/vpinball/) |



---


## Where to put the games?

Visual Pinball X games should be put under the `retrodeck/roms/vpinball/` directory.

---

## Does Visual Pinball X require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No.

However, each table may require its **own set of additional files and dependencies** alongside the game file.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .vpx    | Visual Pinball X table file |
| .vpt    | Visual Pinball table file |


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type | Directory                 | Comment |
|:----:|:-------------------------|:-------|
| ROMs | `retrodeck/roms/vpinball/` |        |

---

## Visual Pinball X: Controls

### Keyboard

| Key | Action |
|---|---|
| <kbd>Left Shift</kbd> | Left flipper |
| <kbd>Right Shift</kbd> | Right flipper |
| <kbd>Enter</kbd> | Plunger / launch ball |
| <kbd>1</kbd> | Start game |
| <kbd>5</kbd> | Insert coin |
| <kbd>Left Ctrl</kbd> | Left MagnaSave |
| <kbd>Right Ctrl</kbd> | Right MagnaSave |
| <kbd>Z</kbd> | Nudge left |
| <kbd>Space</kbd> | Nudge forward |
| <kbd>/</kbd> | Nudge right |
| <kbd>T</kbd> | Mechanical tilt |
| <kbd>Esc</kbd> | Menu / pause |
| <kbd>Q</kbd> | Quit |
| <kbd>F11</kbd> | Performance statistics |

### Gamepad

| Gamepad | Action |
|---|---|
| <kbd>L1</kbd> | Left flipper |
| <kbd>R1</kbd> | Right flipper |
| <kbd>L2</kbd> | Left MagnaSave |
| <kbd>R2</kbd> | Right MagnaSave |
| <kbd>R3</kbd> | Quit / Exit VPX |
| <kbd>↑</kbd> D-pad | Center nudge / tilt |
| <kbd>←</kbd> D-pad | Nudge left |
| <kbd>→</kbd> D-pad | Nudge right |
| <kbd>↓</kbd> D-pad | Plunger / launch ball |
| <kbd>Select</kbd> | Insert coin |
| <kbd>Start</kbd> | Start game |
| <kbd>X</kbd> | FPS display |
| <kbd>Y</kbd> | Cancel |
| <kbd>Guide</kbd> | Lockbar |

## How-to: Play Pinball games in RetroDECK

⚠️ **Advanced configuration required:** Visual Pinball X is a complex simulation engine. Each table may have unique hardware requirements, dependencies and configuration needs. There is no universal checklist and silver bullet (ball) that covers every table. For table-specific guidance, consult the community resources linked above. ⚠️ 

**Example:** Funhouse (Williams 1990)

```
retrodeck/roms/vpinball/Funhouse (Williams 1990)
├── pinmame/
├── Funhouse (Williams 1990).directb2s
├── Funhouse (Williams 1990).ini
├── Funhouse (Williams 1990).vbs
└── Funhouse (Williams 1990).vpx <--- the .vpx Game File
```

### Guide: Folder as File

To ensure ES-DE detects the table correctly, rename the folder using the same extension as the game file:

- `.vpx` for VPX games
- `.vpt` for VPT games

The folder extension must **exactly match** the extension and name of the game file inside the folder.

**Example:**

`retrodeck/roms/vpinball/Funhouse (Williams 1990).vpx`

```
retrodeck/roms/vpinball/Funhouse (Williams 1990).vpx <--- the Folder
├── pinmame/
├── Funhouse (Williams 1990).directb2s
├── Funhouse (Williams 1990).ini
├── Funhouse (Williams 1990).vbs
└── Funhouse (Williams 1990).vpx <--- Folder matches the .vpx Game File
```

Once renamed, ES-DE detects the folder as a single game entry, which can then be launched through RetroDECK.

---