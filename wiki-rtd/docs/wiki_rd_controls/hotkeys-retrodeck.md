# RetroDECK Hotkeys

## RetroDECK Controller Mapping

RetroDECK uses Steam Input for advanced controller mapping. More controllers will be added as Steam Input supports them.

### Customizing Controls

- Rebind buttons in RetroDECK's Steam Input Templates and emulators.
- Create your own profile, but updates to Steam or RetroDECK might break it.
- If broken, revert to Official Controller Profiles or reinstall from the RetroDECK Configurator.

---

## Prerequisites for Steam Input

### Add RetroDECK to Steam

Read more here: [How-to: Add RetroDECK to Steam](../wiki_management/add-to-steam/add-to-steam.md)

## Applying the Templates

1. Select RetroDECK in Steam.
2. Press `🎮` -> `🎮 Controller Settings` -> `Controller Layouts` -> `Templates`. 

**Steam Deck:** 

<img src="../../wiki_images/steam/steam-controller-icon.png" width="50">

**Linux Desktop:** 

<img src="../../wiki_images/steam/steam-controller-icon-bar.png" width="200">

On Linux Desktop, connect an external controller via cable, Bluetooth, or wireless for the `🎮` icon to show up.

<img src="../../wiki_images/steam/steam-templates.png" width="600">

---


## RetroDECK: Steam Input Templates & HotKey Button

What follows is a list with links of the currently supported Steam Input Templates.


| Controller         | Template Name |  Version      |   Original System   |   Controller Link |  HotKey Button (HKB) |  Comment  |
| :---               | :---:       | :---:         |     :---:           |  :---:            |    :---:  |    :---:  |
| Generic Standard   | `RetroDECK: Generic - Standard` | `v.1b` | Varies |[Generic Standard](../wiki_controllers/generic/generic-standard.md)|`Select` |  Majority of 3rd Party Controllers with a Standard Layout |
| Switch Pro         | `RetroDECK: Switch Pro`         | `v.1b` | Nintendo Switch | [Switch Pro](../wiki_controllers/nintendo/switch-pro.md)| `Minus` | |
| Steam Deck: Neptune| `RetroDECK: Steam Deck - Neptune`| `v.1.1b` | Steam Deck LCD/OLED |[Steam Deck - Neptune](../wiki_controllers/steam/steamdeck-neptune.md)  |`L4` `R4`  `Select` |  Has two radial menu systems |
| Steam Controller: Gordon | `RetroDECK: Steam Controller - Gordon` | `v.1b` | Steam Devices | [Steam Controller - Gordon](../wiki_controllers/steam/steam-controller-gordon.md)| `L4` `Select` |  |
| DualShock 3        | `RetroDECK: DualShock 3`        | `v.1b` | PlayStation 3 |[DualShock 3](../wiki_controllers/playstation/dualshock-3.md) |`Select` |  |
| DualShock 4        | `RetroDECK: DualShock 4`        | `v.1b` | PlayStation 4 |[DualShock 4](../wiki_controllers/playstation/dualshock-4.md)|`Select` |  |
| DualSense          | `RetroDECK: DualSense`          | `v.1b` | PlayStation 5 |[DualSense](../wiki_controllers/playstation/dualsense.md)|`Select` |  |
| DualSense Edge     | `RetroDECK: DualSense Edge`        | `v.1b` | PlayStation 5 | [DualSense Edge](../wiki_controllers/playstation/dualsense-edge.md)|`Select` |  |
| Xbox 360           | `RetroDECK: Xbox 360`           | `v.1b` | Xbox 360 | [Xbox 360 Controller](../wiki_controllers/xbox/xbox-360.md)| `Select`|  |
| Xbox Wireless      | `RetroDECK: Xbox Wireless`      | `v.1b` | Xbox One / S / X | [Xbox Wireless Controller](../wiki_controllers/xbox/xbox-wireless.md) | `Select` |  |
| Xbox Elite Wireless Series 1 / 2 | `RetroDECK: Xbox Wireless` | `v.1b` | Xbox S / X | [Xbox Elite Wireless Controller Series 1 / 2](../wiki_controllers/xbox/xbox-wireless-elite.md) |`Select` |  |

---

### The HotKey Button

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

## RetroDECK: Hotkey list

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




### Built-In Hotkeys - Game Mode

These hotkeys made by Valve can be used in Game Mode in all games.


| Function                 | Button / Combination |  Comment |
| :---                    | :---:               |     :---:     |
|  Joystick Mouse     |  `STEAM + Right Stick`         |               |
|  Joystick Mouse - Left Click    |  `STEAM + R3`         |               |
|  Touchpad Mouse                     |  `STEAM + Right Touchpad`         |               |
|  Touchpad Mouse - Left Click    |  `STEAM + Right Touchpad Click`         |               |
|  Screen Brightness - Increase     |  `STEAM + Left Stick Up`         |               |
|  Screen Brightness - Decrease     |  `STEAM + Left Stick Down`         |               |
|  Enter     |  `STEAM + D-pad Right`         |               |
|  Tab     |  `STEAM + D-pad Down`         |               |
|  Escape     |  `STEAM + D-pad Left`         |               |
|  Force Quit Application     |  `STEAM + B (long press)`         |               |
|  Keyboard - Show / Hide      |  `STEAM + X`         |               |
|  Magnifier Toggle      |  `STEAM + L1`         |               |
|  Take Screenshot      |  `STEAM + R1`         |               |
|  Left Mouse Click       |  `STEAM + R2`         |               |
|  Right Mouse Click       |  `STEAM + L2`         |               |
|  Game Recording - Start/Stop |   `STEAM + A`            |               |
|  Game Recording - Add timeline marker |   `STEAM + Y`            |              |
|  Game Recording - Make a clip |   `STEAM + D-pad Up`            |              |


### Built-In Hotkeys - Desktop Mode

These hotkeys made by Valve can be used in Desktop Mode.

| Function                 | Button / Combination |  Comment |
| :---                    | :---:               |     :---:     |
|  Joystick Mouse     |  `Right Stick`         |               |
| Touchpad as Mouse |     `Right Touchpad`        |               |
|  Left Mouse Click |   `R3` / `Right Touchpad Click` /  `R2`        |               |
|  Middle Mouse Click |   `Left Touchpad Click`         |               |
|  Right Mouse Click |   `L2`         |               |
|  Horizontal and Vertical Scrolling |   `Left Touchpad`         |               |
|  Left Ctrl |   `L1`         |               |
|  Left Alt |   `R1`         |               |
|  Space |   `Y`         |               |
|  Keyboard - Show / Hide  |   `X`         |               |
|  Escape  |   `B`   /  `Start`      |               |
|  Tab  |   `Select`      |               |
|  Enter  |   `A`         |               |
|  Left Shift  |   `L4`         |               |
|  Super Key   |   `L5`         |               |
|  Page Up  |   `R4`         |               |
|  Page Down  |   `R5`         |               |
|  Arrow Key - Up  |   `D-Pad Up` / `Left Stick Up`       |               |
|  Arrow Key - Down  |   `D-Pad Down` / `Left Stick Down`            |               |
|  Arrow Key - Left  |   `D-Pad Left` / `Left Stick Left`         |               |
|  Arrow Key - Right  |   `D-Pad Right` / `Left Stick Right`            |               |
|  Game Recording - Start/Stop |   `CTRL + F11`            |      Can be rebound, needs to be enabled         |
|  Game Recording - Add timeline marker |   `CTRL + F12`            |       Can be rebound, needs to be enabled       |
|  Game Recording - Take screenshot |   `F12`            |        Can be rebound, needs to be enabled       |

---
