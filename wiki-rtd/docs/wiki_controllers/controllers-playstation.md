# PlayStation Controllers

PlayStation Controllers are controllers made by the company Sony. Motion Controllers made by Sony are listed under the Motion Controllers entry on the wiki.

**Note these inputs are part of the upcoming 0.8b update.**

## PlayStation 3 - Dualshock 3 / Sixaxis

<img src="../../wiki_images/controllers/ps3-dualshock3.png" width="250">

#### Steam Input support
Yes

#### Linux Kernel Support
Yes, 2.17  `hid-sony`

## PlayStation 4 - Dualshock 4

<img src="../../wiki_images/controllers/ps4-dualshock4.png" width="250">

#### Steam Input support
Yes

#### Linux Kernel Support
Yes, 3.15  `hid-sony`, replaced in 6.2 by `hid-playstation`

## PlayStation 5 - DualSense

<img src="../../wiki_images/controllers/ps5-dualsense.png" width="250">

#### Steam Input support
Yes

#### Linux Kernel Support
Yes, since 5.14 - `hid-playstation`

## PlayStation 5 - DualSense Edge

<img src="../../wiki_images/controllers/ps5-dualsense-edge.png" width="250">

#### Steam Input support
Yes

#### Linux Kernel Support
Yes, since 6.2 - `hid-playstation`

## What are the Official profiles called?

- Dualshock 3 / Sixaxis: `RetroDECK: Dualshock 3`
- Dualshock 4: `RetroDECK: Dualshock 4`
- DualSense: `RetroDECK: DualSense`

### What is the Current Version Number of the profiles?

WIP

## Global Hotkeys: PlayStation Button Combos

The global hotkeys are activated by pressing the `SELECT`  button and holding it while pressing the corresponding other button input.
What follows is a list of hotkeys:

`Function` Shows what the hotkey does. <br>
`Button / Combination` Shows the input you need to make to trigger the command. <br>
`Command` Shows what is being sent to the emulator. <br>
`Emulator Support` Shows what emulators support the command. <br>
`Comment` Just extra comments. <br>


| Function                 | Button / Combination|  Command      | Emulator Support     |    Comment |
| :---                    | :---:               | :---:                 |       :---:          |  :---:     |
| Pause / Resume          |   `SELECT + Cross`          |   `CTRL + P`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`             |            |
| Take Screenshot         |   `SELECT + Circle`          |   `CTRL + X`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`   `Yuzu`           |            |
| Fullscreen Toggle      |   `SELECT + Square`          |   `CTRL + ENTER`      | `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`             |            |
| Open Menu               |  `SELECT + Triangle`         |   `CTRL + M`          | `RetroArch` `Duckstation` `PCSX2`  `Yuzu`                        |
| Quit Emulator           |  `SELECT + Start`       |   `CTRL + Q`          |`RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`   `Yuzu`                                   |            | |
| Previous State Slot     |  `SELECT + D-Pad Left`  |   `CTRL + J`          | `RetroArch` `Dolphin/Primehack` `Duckstation` `PCSX2`|                    |            |
| Next State Slot         |  `SELECT + D-Pad Right` |   `CTRL + K`          | `RetroArch` `Dolphin/Primehack` `Duckstation` `PCSX2`|
| Increase Emulation Speed     |  `SELECT + D-Pad Up`  |   `CTRL + 1`          | `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`|                    |            |
| Decrease Emulation Speed         |  `SELECT + D-Pad Down` |   `CTRL + 2`          | `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`|                       |            |
| Load State              |  `SELECT + L1`          |   `CTRL + A`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`                          |            |
| Save State              |  `SELECT + R1`          |   `CTRL + S`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`                        |            |
| Rewind                  |  `SELECT + L2`          |   `CTRL + -`          | `RetroArch` `Duckstation`                     |            |
| Fast forward            |  `SELECT + R2`          |   `CTRL + +`          |  `RetroArch` `Duckstation` `MelonDS` `PCSX2`                                  |            |
| Global Radial Menu      |  `SELECT + Left Joystick`     |         |       Opens the Radial Menu      |

### Global Radial Menu

The Global Radial Menu is activated by holding `SELECT` and by moving the `Left Joystick`, then by pressing `L3` allows you press the selected radial button.

Radial Button |	Keyboard Command|  Emulator Support     |    Comment |
| :---                    | :---:               | :---:                 |       :---:          |
| Space          |   `Space`          |   `PC-Systems`  |   |
| Escape          |   `Escape`          |  `PPSSPP` `PC-Systems`  |  On PPPSPP it opens the Menu |
| Enter          |   `Enter`          |  `OpenBOR` `PC-Systems`  |   |
| F1          |   `F1`          |  `PC-Systems`  |   |
| F5          |   `F5`          |  `PC-Systems`  |   |
| F10          |   `F10`          |  `PC-Systems`  |   |
| Wii Sync Button          |   `ALT + W`          |  `Dolphin/Primehack`  |   |
| Swap Dual-Screens          |   `CTRL + TAB`          |  `RetroArch` `Citra` `MelonDS` `Cemu`|   |
| Change Dual-Screen Layout          |   `CTRL + L`          |  `Citra` |   |
| Widescreen / Aspect Ratio        |   `CTRL + W`          |  `Dolphin/Primehack` `Duckstation` `PCSX2`	 |   |
| Fullscreen Toggle      |   `CTRL + ENTER`          |  `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`          |        |
| Change Disc / Next Disc        |   `CTRL + D`          |  `RetroArch` `Dolphin/Primehack` `Duckstation`|   |


### Right Joystick as Mouse

By holding `SELECT` and moving the `Right Joystick` you can use it as a mouse for various systems that uses mouse input.

| Function                 | Button / Combination| Command      | Comment     |
| :---                    | :---:               | :---:                 |       :---:          |
| Joystick as Mouse        |  `SELECT + Right Stick`           |            |   Movement  |
| Right Click        |  `SELECT + L3`          |   `Right Click`               |     |
| Left Click        |  `SELECT + R3`           |   `Left Click`            |     |

### RetroArch: Additional Hotkeys

These hotkeys also work for RetroArch and are built in.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Open Menu               |  `L3 + R3`               |      `RetroArch`     |            |

### Arcade Systems: Additional Hotkeys

This hotkey work for RetroArch, MAME, FBNEO and other arcade systems.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Insert Credit           |  `SELECT`                |     `RetroArch`  `MAME` `FBNeo`     |            |

### PS4 Dualshock 4 and PS5 DualSense: Additional Hotkeys

The touchpads acts as a mouse and can be used to navigate mouse based inputs.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Full Touchpad          |             |      |         The entire touchpad acts a mouse   |
| Right Touchpad Click         |  `Left Mouse Click`                |      |         |
| Center Touchpad Click         |  `Center Mouse Click`                |      |         |
| Left Touchpad Click         |  `Right Mouse Click`                |      |         |
