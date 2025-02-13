# RetroDECK Hotkeys

## RetroDECK: Steam Input Templates

RetroDECK ships with the following Steam Input Templates:

- **Generic "Standard" Controllers:** `RetroDECK: Generic - Standard`
- **Switch Pro Controller:** `RetroDECK: Switch Pro`
- **DualShock 3 / Sixaxis:** `RetroDECK: Dualshock 3`
- **DualShock 4:** `RetroDECK: Dualshock 4`
- **DualSense / DualSense Edge:** `RetroDECK: DualSense`
- **Steam Controller (Gordon):** `RetroDECK: Steam Controller - Gordon`
- **Steam Deck (Neptune):** `RetroDECK: Steam Deck - Neptune FULL` (default) & `RetroDECK: Steam Deck - Neptune SIMPLE`
- **Xbox 360 Controller:** `RetroDECK: Xbox 360`
- **Xbox Wireless Controller/Elite Series:** `RetroDECK: Xbox Wireless`

## The HotKey Button

The global hotkeys are activated by pressing and holding the `HKB` (HotKey Button) and pressing the corresponding button together for the command you want to execute.

- **Steam Deck (Neptune):** the HKB can be either `L4`, `R4`, or `Select`, depending on what is closest for the button combo you are trying to press.
- **Steam Controller (Gordon):** the HKB can be either `L4` or `Select`.
- **PlayStation:** the `HKB` is `Select`.
- **Nintendo:** the `HKB` is `Minus`.
- **Xbox:** the `HKB` is `Select`.
- **Generic Controllers:**  Use the layout they are replicating PlayStation, Xbox or Nintendo.

**Example:**

To execute the `Pause / Resume` command:

- **Steam Deck (Neptune):** press and hold either `L4`, `R4`, or `Select` and press `A`. 
- **PlayStation:** press and hold `Select` and press `Cross`. 
- **Nintendo:** press and hold `Minus` and press `B`. 
- **Xbox:** press and hold `Select` and press `A`.

---

## Hotkey list

- **Function**: Shows what the hotkey does.
- **Icon**: Shows the icon of the corresponding function in the radial menus.
- **Controller Type Columns**: Shows the input you need to make to trigger the command for each controller type.
- **Command**: Shows what is being sent to the emulator.
- **System Support**: Shows what emulators support the command.
- **Comment**: Extra comments.

| Function                 | Icon | Xbox / Steam Deck | Nintendo | Playstation | Command      | System Support     |    Comment |
| :---                    | :---: | :---:               | :---:    | :---:       | :---:        | :---:              |  :---:     |
| Pause / Resume          | <img src="../../wiki_icons/binding_icons/RD-media-playback-pause.png" width="30"> | `HKB + A`           | `HKB + B` | `HKB + Cross` | `CTRL + P`   | `RetroArch` `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `MelonDS (Standalone)` `PCSX2 (Standalone)` `Yuzu (Legacy)` |            |
| Take Screenshot         | <img src="../../wiki_icons/binding_icons/RD-camera-photo.png" width="30"> | `HKB + B`           | `HKB + A` | `HKB + Circle` | `CTRL + X`   | `RetroArch` `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` `Yuzu (Legacy)` |            |
| Fullscreen Toggle       | <img src="../../wiki_icons/binding_icons/RD-zoom-fit-best.png" width="30"> | `HKB + X`           | `HKB + Y` | `HKB + Square` | `CTRL + ENTER` | `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `MelonDS (Standalone)` `PCSX2 (Standalone)` `Yuzu (Legacy)` `RPCS3` |            |
| Open Menu               | <img src="../../wiki_icons/binding_icons/RD-preferences-tweaks-shadows.png" width="30"> | `HKB + Y`           | `HKB + X` | `HKB + Triangle` | `CTRL + M`   | `RetroArch` `Duckstation (Standalone)` `PCSX2 (Standalone)` `Yuzu (Legacy)` `RPCS3` |            |
| Quit Emulator           | <img src="../../wiki_icons/binding_icons/RD-process-stop.png" width="30"> | `HKB + Start`       | `HKB + Start` | `HKB + Start` | `CTRL + Q`   | `RetroArch` `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` `Yuzu (Legacy)` |            |
| Previous State     |    <img src="../../wiki_icons/binding_icons/RD-go-previous.png" width="30">     | `HKB + D-Pad Left`  | `HKB + D-Pad Left` | `HKB + D-Pad Left` | `CTRL + J`   | `RetroArch` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` |            |
| Next State         |    <img src="../../wiki_icons/binding_icons/RD-go-next.png" width="30">     | `HKB + D-Pad Right` | `HKB + D-Pad Right` | `HKB + D-Pad Right` | `CTRL + K`   | `RetroArch` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` |            |
| Increase Emulation Speed |  <img src="../../wiki_icons/binding_icons/RD-zoom-in.png" width="30">      | `HKB + D-Pad Up`   | `HKB + D-Pad Up` | `HKB + D-Pad Up` | `CTRL + 1`   | `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` |            |
| Decrease Emulation Speed |   <img src="../../wiki_icons/binding_icons/RD-zoom-out.png" width="30">     | `HKB + D-Pad Down` | `HKB + D-Pad Down` | `HKB + D-Pad Down` | `CTRL + 2`   | `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` |            |
| Load State              | <img src="../../wiki_icons/binding_icons/RD-folder-blue-backup.png" width="30"> | `HKB + L1`          | `HKB + L1` | `HKB + L1` | `CTRL + A`   | `RetroArch` `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` |            |
| Save State              | <img src="../../wiki_icons/binding_icons/RD-document-save.png" width="30"> | `HKB + R1`          | `HKB + R1` | `HKB + R1` | `CTRL + S`   | `RetroArch` `Citra (Legacy)` `Dolphin/Primehack (Standalone)` `Duckstation (Standalone)` `PCSX2 (Standalone)` |            |
| Rewind                  |  <img src="../../wiki_icons/binding_icons/RD-view-refresh.png" width="30">     | `HKB + L2`          | `HKB + L2` | `HKB + L2` | `CTRL + -`   | `RetroArch` `Duckstation (Standalone)` |            |
| Fast Forward            |     <img src="../../wiki_icons/binding_icons/RD-org.xfce.session.png" width="30">   | `HKB + R2`          | `HKB + R2` | `HKB + R2` | `CTRL + +`   | `RetroArch` `Duckstation (Standalone)` `MelonDS (Standalone)` `PCSX2 (Standalone)` |            |

---

## Additional Hotkeys - Emulators

### RetroArch: Additional Hotkeys

These hotkeys also work for RetroArch and are built in.

| Function                 | Button / Combination     | System Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Open Menu               |  `L3 + R3`               |      `RetroArch`     |            |

### Arcade Systems: Additional Hotkeys

This hotkey work for RetroArch, MAME, FBNEO and other arcade systems.

| Function                 | Button / Combination     | System Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Insert Credit           |  `SELECT`               |     `RetroArch`  `MAME (Standalone)` `FBNeo`     |            |

---

## Additional Hotkeys - Controllers

### Simple Radial Menu 

All Controllers can open the [RetroDECK: Radial Menu - Simple](radial-simple.md).

| Function                 |   Command |    Comment |
| :---                    | :---:               | :---:   |
| Simple Radial Menu             | `HKB + Left Joystick`      |    Press `L3` to activate radial button.   |

### Right Joystick as Temporary Mouse

By holding `SELECT` and moving the `Right Joystick` you can use it as a mouse for various systems that uses mouse input.

| Function                 | Button / Combination| Command      | Comment     |
| :---                    | :---:               | :---:                 |       :---:          |
| Joystick as Mouse        |  `SELECT + Right Stick`           |            |   Movement  |
| Right Click        |  `SELECT + L3`          |   `Right Click`               |     |
| Left Click        |  `SELECT + R3`           |   `Left Click`            |     |

---

## Additional Hotkeys - Steam Deck (Neptune)


| Function                 |   Command |    Comment |
| :---                    | :---:               | :---:   |
| Radial Menu             | `Left Touchpad`     |    Press `Left Touchpad` to activate radial button.   |

The radial menu system is located on the `Left Touchpad` on the Steam Deck with layout depending on what template you choose.

The only difference being the complexity of the built-in radial menus and the amount of options at your disposal on the `Left Touchpad`.

RetroDECK ships with two different templates for the Steam Deck:


### Full Radial Menu

This is the a deeper radial menu shipped as default.

**Template:** `RetroDECK: Steam Deck - Neptune FULL`

Read more here: [RetroDECK: Steam Deck - Neptune FULL](radial-steamdeck-full.md)


### Simple Radial Menu

This is the same radial menu as the external controllers.

**Template:** `RetroDECK: Steam Deck - Neptune SIMPLE`

Read more here: [RetroDECK: Radial Menu - Simple](radial-simple.md)

---

## Additional Hotkeys - Dualshock 4 / DualSense

The touchpads acts as a mouse and can be used to navigate mouse based inputs.

| Function                 | Button / Combination     | System Support     |    Comment |
| :---                    | :---:                    |       :---:          |  :---:     |
| Full Touchpad          |             |      |         The entire touchpad acts a mouse   |
| Right Touchpad Click         |  `Left Mouse Click`                |      |         |
| Left Touchpad Click         |  `Right Mouse Click`                |      |         |

---

## Additional Hotkeys - Steam Controller (Gordon) 

By pressing `R4` you can switch the right touchpad between semi-permanent `Right Joystick Mode` or `Mouse Mode`.

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


By holding `HKB` and moving the `Right Touchpad` you can use it as a mouse for various systems that uses mouse input.

| Function                 | Button / Combination| Command      | Comment     |
| :---                    | :---:               | :---:                 |       :---:          |
| Touchpad as Mouse        |  `HKB + Right Touchpad`           |            |     |
| Right Click        |  `HKB + L3`          |   `Right Click`               |     |
| Left Click        |  `HKB + R3`           |   `Left Click`            |     |
