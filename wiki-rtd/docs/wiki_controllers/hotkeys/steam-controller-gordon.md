# Steam Controller - Gordon

<img src="../../../wiki_images/controllers/steam-controller-gordon.png" width="250">

The first Steam Controller with the nickname Gordon.

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 4.18 - `hid-steam`

### Udev rules

```
# Valve USB devices
SUBSYSTEM=="usb", ATTRS{idVendor}=="28de", MODE="0666"

# Steam Controller udev write access
KERNEL=="uinput", SUBSYSTEM=="misc", MODE="0660", GROUP="input", OPTIONS+="static_node=uinput"

# Valve HID devices over USB hidraw
KERNEL=="hidraw*", ATTRS{idVendor}=="28de", MODE="0666"

# Valve HID devices over bluetooth hidraw
KERNEL=="hidraw*", KERNELS=="*28DE:*", MODE="0666"
```

## What is the Official - Steam Controller: Gordon RetroDECK profile called?

- Steam Controller - Gordon: `RetroDECK: Steam Controller - Gordon`

### The hotkey button
The global hotkeys are activated by pressing and holding the `HKB` aka the `HotKey Button` and pressing the corresponing button togheter for the command you want to do.
For the Steam Controller Gordon the `HotKey Button` is both `SELECT` and `L4`, you can press either depending on what you feel is more confortable.

### Global Hotkeys: Steam Controller Gordon Button Combos

`Function` Shows what the hotkey does. <br>
`Button / Combination` Shows the input you need to make to trigger the command. <br>
`Command` Shows what is being sent to the emulator. <br>
`Emulator Support` Shows what emulators support the command. <br>
`Comment` Just extra comments. <br>


| Function                 | Button / Combination|  Command      | Emulator Support     |    Comment |
| :---                    | :---:               | :---:                 |       :---:          |  :---:     |
| Pause / Resume          |   `HKB + A`          |   `CTRL + P`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`             |            |
| Take Screenshot         |   `HKB + B`          |   `CTRL + X`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`   `Yuzu`           |            |
| Fullscreen Toggle      |   `HKB + X`          |   `CTRL + ENTER`      | `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`             |            |
| Open Menu               |  `HKB + Y`         |   `CTRL + M`          | `RetroArch` `Duckstation` `PCSX2`  `Yuzu`                        |
| Quit Emulator           |  `HKB + Start`       |   `CTRL + Q`          |`RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`   `Yuzu`                                   |            | |
| Previous State Slot     |  `HKB + D-Pad Left`  |   `CTRL + J`          | `RetroArch` `Dolphin/Primehack` `Duckstation` `PCSX2`|                    |            |
| Next State Slot         |  `HKB + D-Pad Right` |   `CTRL + K`          | `RetroArch` `Dolphin/Primehack` `Duckstation` `PCSX2`|
| Increase Emulation Speed     |  `HKB + D-Pad Up`  |   `CTRL + 1`          | `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`|                    |            |
| Decrease Emulation Speed         |  `HKB + D-Pad Down` |   `CTRL + 2`          | `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`|                       |            |
| Load State              |  `HKB + L1`          |   `CTRL + A`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`                          |            |
| Save State              |  `HKB + R1`          |   `CTRL + S`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`                        |            |
| Rewind                  |  `HKB + L2`          |   `CTRL + -`          | `RetroArch` `Duckstation`                     |            |
| Fast forward            |  `HKB + R2`          |   `CTRL + +`          |  `RetroArch` `Duckstation` `MelonDS` `PCSX2`                                  |            |
| Simple Radial Menu      |  `HKB + Left Joystick`    |                                                                                                   |            |       Opens the Radial Menu  |

### Simple Radial Menu

The Simple Radial Menu is activated by holding `SELECT` and by moving the `Left Joystick`, then by pressing `L3` allows you press the selected radial button.

Read more at the:

[Standard Controller: Simple Radial Menu](../radial-menus/controller-simple-radial.md) to see all the available commands.


### Right Touchpad as Temporary Mouse

By holding `HKB` and moving the `Right Touchpad` you can use it as a mouse for various systems that uses mouse input.

| Function                 | Button / Combination| Command      | Comment     |
| :---                    | :---:               | :---:                 |       :---:          |
| Touchpad as Mouse        |  `HKB + Right Touchpad`           |            |     |
| Right Click        |  `HKB + L3`          |   `Right Click`               |     |
| Left Click        |  `HKB + R3`           |   `Left Click`            |     |


### Right Touchpad: Joystick Mode / Mouse Mode Switch

By pressing `R4` and you can switch the right between semi-permanent Joystick Mode or Mouse Mode.<br>
This function is useful for games that the primary input is a mouse as you don't need to hold either of `SELECT` or `L4`.<br>

**Example usecases:**

- `ScummVM` for point and click games.
- `Dolphin` for `Wiimote` movement.
- Lightgun games.
- `PC-Systems` type games.


**NOTE:** That going into the global hotkeys mode above by pressing `SELECT` or `L4` will switch the Right Touchpad to Joystick Mode again.


| Function                 | Button / Combination| Command      | Comment     |
| :---                    | :---:               | :---:                 |       :---:          |
| Touchpad as Mouse  / Joystick Switch      |  `R4`         |            |     |
| Left Click - Mouse Mode       |  `R3`           |   `Left Click`            |     |

### RetroArch: Additional Hotkeys

These hotkeys also work for RetroArch and are built in.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Open Menu               |  `L3 + R3`               |      `RetroArch`     |            |

### Arcade Systems: Additional Hotkeys

This hotkey work for RetroArch, MAME, FBNEO and other arcade systems.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Insert Credit           |  `HKB`                |     `RetroArch`  `MAME` `FBNeo`     |            |

