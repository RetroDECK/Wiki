# Nintendo Controllers

Nintendo Controllers are controllers made by the company Nintendo. Motion Controllers made by Nintendo are listed under the Motion Controllers entry on the wiki.

**Note some these inputs are part of the upcoming 0.8b update.**

## Switch Pro

<img src="../../wiki_images/controllers/switch-pro.png" width="250">

Official Controller for the Nintendo Switch

#### Steam Input support
Yes


#### Linux Kernel Support
Yes, since 5.16 - `hid-nintendo`

### What is the Official - Switch Pro RetroDECK profile called?

- Switch Pro: `RetroDECK: Switch Pro`

#### What is the Current Version Number of the profile?

WIP

#### Switch Pro - Global Hotkeys: Nintendo Button Combos

The global hotkeys are activated by pressing the `SELECT`  button and holding it while pressing the corresponding other button input.
What follows is a list of hotkeys:

`Function` Shows what the hotkey does. <br>
`Button / Combination` Shows the input you need to make to trigger the command. <br>
`Command` Shows what is being sent to the emulator. <br>
`Emulator Support` Shows what emulators support the command. <br>
`Comment` Just extra comments. <br>


| Function                 | Button / Combination|  Command      | Emulator Support     |    Comment |
| :---                    | :---:               | :---:                 |       :---:          |  :---:     |
| Pause / Resume          |   `SELECT + B`          |   `CTRL + P`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`             |            |
| Take Screenshot         |   `SELECT + A`          |   `CTRL + X`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`   `Yuzu`           |            |
| Fullscreen Toggle      |   `SELECT + Y`          |   `CTRL + ENTER`      | `Citra` `Dolphin/Primehack` `Duckstation` `MelonDS` `PCSX2`  `Yuzu`             |            |
| Open Menu               |  `SELECT + X`         |   `CTRL + M`          | `RetroArch` `Duckstation` `PCSX2`  `Yuzu`                        |
| Quit Emulator           |  `SELECT + Start`       |   `CTRL + Q`          |`RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`   `Yuzu`                                   |            | |
| Previous State Slot     |  `SELECT + D-Pad Left`  |   `CTRL + J`          | `RetroArch` `Dolphin/Primehack` `Duckstation` `PCSX2`|                    |            |
| Next State Slot         |  `SELECT + D-Pad Right` |   `CTRL + K`          | `RetroArch` `Dolphin/Primehack` `Duckstation` `PCSX2`|
| Increase Emulation Speed     |  `SELECT + D-Pad Up`  |   `CTRL + 1`          | `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`|                    |            |
| Decrease Emulation Speed         |  `SELECT + D-Pad Down` |   `CTRL + 2`          | `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`|                       |            |
| Load State              |  `SELECT + L1`          |   `CTRL + A`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`                          |            |
| Save State              |  `SELECT + R1`          |   `CTRL + S`          | `RetroArch` `Citra` `Dolphin/Primehack` `Duckstation` `PCSX2`                        |            |
| Rewind                  |  `SELECT + L2`          |   `CTRL + -`          | `RetroArch` `Duckstation`                     |            |
| Fast forward            |  `SELECT + R2`          |   `CTRL + +`          |  `RetroArch` `Duckstation` `MelonDS` `PCSX2`                                  |            |
| Swap Screens    |  `SELECT + Left Joystick - Up`     |   `CTRL + TAB`        |     `Citra` `MelonDS`  `Cemu`           |
| Escape                  |  `SELECT + Left Joystick - Down`          |   `ESC`               |     `PPSSPP` `Computer emulators` `Solarus` `IkemenGO` |
| Enter                  |  `SELECT + Left Joystick - Right`          |   `Enter`               |     `Computer emulators` `OpenBOR` |


#### Right Joystick as Mouse

By holding `SELECT` and moving the right joystick you can use it as a mouse for various systems that uses mouse input.

| Function                 | Button / Combination| Command      | Comment     |
| :---                    | :---:               | :---:                 |       :---:          |
| Joystick as Mouse        |  `SELECT + Right Stick`           |            |   Movement  |
| Right Click        |  `SELECT + L3`          |   `Right Click`               |     |
| Left Click        |  `SELECT + R3`           |   `Left Click`            |     |

#### RetroArch: Additional Hotkeys

These hotkeys also work for RetroArch and are built in.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Open Menu               |  `L3 + R3`               |      `RetroArch`     |            |

#### Arcade Systems: Additional Hotkeys

This hotkey work for RetroArch, MAME, FBNEO and other arcade systems.

| Function                 | Button / Combination     | Emulator Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Insert Credit           |  `SELECT`                |     `RetroArch`  `MAME` `FBNeo`     |            |

## Joy-Cons

<img src="../../wiki_images/controllers/joy-con.png" width="250">

Official Controllers for the Nintendo Switch

#### Steam Input support
Yes

#### Linux Kernel Support
Yes, since 5.16 - `hid-nintendo`

### What is the Official - Switch Pro RetroDECK profile called?

- Switch Pro: `RetroDECK: Switch Joycons`

Note that this will be released at a later date and work has not started on it yet.

## Wii U GamePad

<img src="../../wiki_images/controllers/wii-u-gamepad.png" width="250">

Official Controller for the Wii U

#### Steam Input support
No

#### Linux Kernel Support
No

### Related projects:

A list of projects and drivers that try to make the Wii U controller work on Linux.

[libdrc](https://github.com/rolandoislas/libdrc)

There has been efforts of adding by the libdrc team of add their `hid-wiiu-drc` to the Linux Kernel. <br>
The effort seams to have stopped tho.

[linux-wiiu](https://gitlab.com/linux-wiiu/linux-wiiu)

Is a Linux distro that can be used on the Wii U machine. This seams to have a working `hid-wiiu-drc`
But the efforts to add it to the kernel seams to have been stalled.

[hid-wiiu-drc in linux-wiiu](https://gitlab.com/linux-wiiu/linux-wiiu/-/blob/rewrite-4.19/drivers/hid/hid-wiiu-drc.c)



## GameCube Controller Adapter for Wii U

#### Steam Input support
Yes and no the connected controllers are counted as Generic Controllers

#### Linux Kernel Support
Acts as a normal usb hub

### How to connect?

In most cases you just need to connect it via USB and put the device in PC mode on the switch.

Sometimes the udev rule is missing and you will need to add it:

1. Open a terminal window
2. Type  `sudo echo 'SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="0337", MODE="0666"' | sudo tee -a /etc/udev/rules.d/51-gcadapter.rules > /dev/null`
3. Type  `sudo udevadm control --reload-rules`
4. Sometimes you will need to take out and reinsert the USB connector after you have reloaded the rules.

<img src="../../wiki_images/controllers/wiiu-gcpad-adapter.png" width="250">

### What is the Official - Switch Pro RetroDECK profile called?

- Switch Pro: `RetroDECK: Generic GameCube`

Note that this will be released at a later date and work has not started on it yet.
