# RetroDECK Hotkeys

<img src="../../wiki_icons/pixelitos/antimicrox.png" width="50">

## RetroDECK Controller Mapping

RetroDECK uses **Steam Input** for advanced controller mapping. More controllers will be supported as Steam Input expands.

---

### Customizing Controls

- Rebind buttons in RetroDECK's Steam Input templates and supported components.  
- Create custom profiles, but note that updates to Steam or RetroDECK may break them.  
- If a profile becomes broken, revert to **Official Controller Profiles** or reinstall using the **RetroDECK Configurator**.

---

## Prerequisites for Steam Input

### Add RetroDECK to Steam

Via the RetroDECK Configurator

---

## Applying the Templates

1. Select **RetroDECK** in Steam.  
2. Navigate to: `🎮` → `🎮 Controller Settings` → **Controller Layouts** → **Templates**.

**Steam Deck:**  

<img src="../../wiki_images/steam/steam-controller-icon.png" width="50">

**Linux Desktop:**  

<img src="../../wiki_images/steam/steam-controller-icon-bar.png" width="200">


---


## RetroDECK: Steam Input Templates & HotKey Button

Below is a list of the currently supported Steam Input Templates with links to their controller guides.

| Controller | Template Name | Version | Original System | Controller Link | HotKey Button (HKB) | Comment |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: |
| Generic Standard | `RetroDECK: Generic - Standard` | v.1b | Varies | [Generic Standard](../wiki_controllers/generic/generic-standard.md) | `Select` | Majority of 3rd party controllers with a standard layout |
| Switch Pro | `RetroDECK: Switch Pro` | v.1b | Nintendo Switch | [Switch Pro](../wiki_controllers/nintendo/switch-pro.md) | `Minus` |  |
| Steam Deck: Neptune | `RetroDECK: Steam Deck - Neptune` | v.1.1b | Steam Deck LCD/OLED | [Steam Deck - Neptune](../wiki_controllers/steam/steamdeck-neptune.md) | `L4` `R4` `Select` | Has two radial menu systems |
| Steam Controller: Gordon | `RetroDECK: Steam Controller - Gordon` | v.1b | Steam Devices | [Steam Controller - Gordon](../wiki_controllers/steam/steam-controller-gordon.md) | `L4` `Select` |  |
| DualShock 3 | `RetroDECK: DualShock 3` | v.1b | PlayStation 3 | [DualShock 3](../wiki_controllers/playstation/dualshock-3.md) | `Select` |  |
| DualShock 4 | `RetroDECK: DualShock 4` | v.1b | PlayStation 4 | [DualShock 4](../wiki_controllers/playstation/dualshock-4.md) | `Select` |  |
| DualSense | `RetroDECK: DualSense` | v.1b | PlayStation 5 | [DualSense](../wiki_controllers/playstation/dualsense.md) | `Select` |  |
| DualSense Edge | `RetroDECK: DualSense Edge` | v.1b | PlayStation 5 | [DualSense Edge](../wiki_controllers/playstation/dualsense-edge.md) | `Select` |  |
| Xbox 360 | `RetroDECK: Xbox 360` | v.1b | Xbox 360 | [Xbox 360 Controller](../wiki_controllers/xbox/xbox-360.md) | `Select` |  |
| Xbox Wireless | `RetroDECK: Xbox Wireless` | v.1b | Xbox One / S / X | [Xbox Wireless Controller](../wiki_controllers/xbox/xbox-wireless.md) | `Select` |  |
| Xbox Elite Wireless Series 1 / 2 | `RetroDECK: Xbox Wireless` | v.1b | Xbox S / X | [Xbox Elite Wireless Controller Series 1 / 2](../wiki_controllers/xbox/xbox-wireless-elite.md) | `Select` |  |


---

### The HotKey Button

Global hotkeys are activated by **pressing and holding the HotKey Button (HKB)** and then pressing the corresponding button for the command you want to execute.

- **Steam Deck (Neptune):** HKB can be `L4`, `R4`, or `Select`, depending on the button combination.  
- **Steam Controller (Gordon):** HKB can be `L4` or `Select`.  
- **PlayStation Controllers:** HKB is `Select`.  
- **Nintendo Controllers:** HKB is `Minus`.  
- **Xbox Controllers:** HKB is `Select`.  
- **Generic Controllers:** Use the HKB according to the layout they replicate (PlayStation, Xbox, or Nintendo).

**Example: Execute the `Pause / Resume` command**

- **Steam Deck (Neptune):** Hold `L4`, `R4`, or `Select` and press `A`.  
- **PlayStation:** Hold `Select` and press `Cross`.  
- **Nintendo:** Hold `Minus` and press `B`.  
- **Xbox:** Hold `Select` and press `A`.


---

## RetroDECK: Hotkey List

- **Function**: Description of the hotkey's action.  
- **Icon**: Visual representation of the corresponding function in radial menus.  
- **Controller Type Columns**: Input combination needed to trigger the command for each controller type.  
- **Command**: The key combination sent to the component.  
- **System Support**: Components that recognize the command.  
- **Comment**: Additional notes.

| Function                 | Icon | Xbox / Steam Deck | Nintendo | PlayStation | Command      | System Support     | Comment |
| :---                     | :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| Pause / Resume            | <img src="../../wiki_icons/binding_icons/RD-media-playback-pause.png" width="30"> | `HKB + A` | `HKB + B` | `HKB + Cross` | `CTRL + P` | `RetroArch`, `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `MelonDS (Standalone)`, `PCSX2 (Standalone)`, `Yuzu (Legacy)` |  |
| Take Screenshot           | <img src="../../wiki_icons/binding_icons/RD-camera-photo.png" width="30"> | `HKB + B` | `HKB + A` | `HKB + Circle` | `CTRL + X` | `RetroArch`, `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)`, `Yuzu (Legacy)` |  |
| Fullscreen Toggle         | <img src="../../wiki_icons/binding_icons/RD-zoom-fit-best.png" width="30"> | `HKB + X` | `HKB + Y` | `HKB + Square` | `CTRL + ENTER` | `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `MelonDS (Standalone)`, `PCSX2 (Standalone)`, `Yuzu (Legacy)`, `RPCS3` |  |
| Open Menu                 | <img src="../../wiki_icons/binding_icons/RD-preferences-tweaks-shadows.png" width="30"> | `HKB + Y` | `HKB + X` | `HKB + Triangle` | `CTRL + M` | `RetroArch`, `Duckstation (Standalone)`, `PCSX2 (Standalone)`, `Yuzu (Legacy)`, `RPCS3` |  |
| Quit Component             | <img src="../../wiki_icons/binding_icons/RD-process-stop.png" width="30"> | `HKB + Start` | `HKB + Start` | `HKB + Start` | `CTRL + Q` | `RetroArch`, `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)`, `Yuzu (Legacy)` |  |
| Previous State            | <img src="../../wiki_icons/binding_icons/RD-go-previous.png" width="30"> | `HKB + D-Pad Left` | `HKB + D-Pad Left` | `HKB + D-Pad Left` | `CTRL + J` | `RetroArch`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)` |  |
| Next State                | <img src="../../wiki_icons/binding_icons/RD-go-next.png" width="30"> | `HKB + D-Pad Right` | `HKB + D-Pad Right` | `HKB + D-Pad Right` | `CTRL + K` | `RetroArch`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)` |  |
| Increase Emulation Speed  | <img src="../../wiki_icons/binding_icons/RD-zoom-in.png" width="30"> | `HKB + D-Pad Up` | `HKB + D-Pad Up` | `HKB + D-Pad Up` | `CTRL + 1` | `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)` |  |
| Decrease Emulation Speed  | <img src="../../wiki_icons/binding_icons/RD-zoom-out.png" width="30"> | `HKB + D-Pad Down` | `HKB + D-Pad Down` | `HKB + D-Pad Down` | `CTRL + 2` | `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)` |  |
| Load State                | <img src="../../wiki_icons/binding_icons/RD-folder-blue-backup.png" width="30"> | `HKB + L1` | `HKB + L1` | `HKB + L1` | `CTRL + A` | `RetroArch`, `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)` |  |
| Save State                | <img src="../../wiki_icons/binding_icons/RD-document-save.png" width="30"> | `HKB + R1` | `HKB + R1` | `HKB + R1` | `CTRL + S` | `RetroArch`, `Citra (Legacy)`, `Dolphin/Primehack (Standalone)`, `Duckstation (Standalone)`, `PCSX2 (Standalone)` |  |
| Rewind                    | <img src="../../wiki_icons/binding_icons/RD-view-refresh.png" width="30"> | `HKB + L2` | `HKB + L2` | `HKB + L2` | `CTRL + -` | `RetroArch`, `Duckstation (Standalone)` |  |
| Fast Forward              | <img src="../../wiki_icons/binding_icons/RD-org.xfce.session.png" width="30"> | `HKB + R2` | `HKB + R2` | `HKB + R2` | `CTRL + +` | `RetroArch`, `Duckstation (Standalone)`, `MelonDS (Standalone)`, `PCSX2 (Standalone)` |  |

---


## Additional Hotkeys - Components

### RetroArch: Additional Hotkeys

These hotkeys are built into RetroArch and function across supported cores.

| Function       | Button / Combination | System Support | Comment |
| :---           | :---:               | :---:          | :---:   |
| Open Menu      | `L3 + R3`           | RetroArch      |         |

### Arcade Systems: Additional Hotkeys

These hotkeys work for RetroArch, MAME, and other arcade systems.

| Function       | Button / Combination | System Support | Comment |
| :---           | :---:               | :---:          | :---:   |
| Insert Credit  | `SELECT`            | RetroArch, MAME (Standalone) |         |

---

## Additional Hotkeys - Controllers

### Simple Radial Menu

All controllers can open the [RetroDECK: Radial Menu - Simple](radial-simple.md).

| Function            | Command                     | Comment                       |
| :---                | :---:                        | :---:                         |
| Simple Radial Menu  | `HKB + Left Joystick`        | Press `L3` to activate radial button. |

### Right Joystick as Temporary Mouse

By holding `SELECT` and moving the `Right Joystick`, you can use it as a mouse for systems that support mouse input.

| Function            | Button / Combination        | Command           | Comment                      |
| :---                | :---:                        | :---:             | :---:                        |
| Joystick as Mouse   | `SELECT + Right Stick`       | Movement          |                              |
| Right Click         | `SELECT + L3`                | `Right Click`     |                              |
| Left Click          | `SELECT + R3`                | `Left Click`      |                              |



---

## Additional Hotkeys - DualShock 4 / DualSense

The touchpads on DualShock 4 and DualSense controllers act as a mouse, allowing you to navigate mouse-based inputs.

| Function                | Button / Combination      | System Support | Comment                                      |
| :---                    | :---:                     | :---:          | :---:                                        |
| Full Touchpad           | -                         | -              | The entire touchpad acts as a mouse.        |
| Right Touchpad Click    | `Left Mouse Click`        | -              |                                            |
| Left Touchpad Click     | `Right Mouse Click`       | -              |                                            |

---

## Additional Hotkeys - Steam Controller (Gordon)

By pressing `R4`, you can toggle the right touchpad between two modes: **Right Joystick Mode** and **Mouse Mode**. This is useful for games that primarily use the mouse as input, as you don't need to hold `SELECT` or `L4` for mouse functionality.

**Example Use Cases:**
- **ScummVM** for point-and-click games.
- **Dolphin** for Wiimote movement.
- Lightgun games.
- PC-type games.

**Note:** Entering the global hotkeys mode by pressing `SELECT` or `L4` will switch the right touchpad back to **Joystick Mode**.

| Function                        | Button / Combination | Command        | Comment                                     |
| :---                            | :---:                | :---:          | :---:                                       |
| Touchpad Mode Switch            | `R4`                 | -              | Switch between **Joystick Mode** and **Mouse Mode**. |
| Left Click (Mouse Mode)         | `R3`                 | `Left Click`   | In **Mouse Mode**.                         |

By holding `HKB` and moving the **Right Touchpad**, you can use it as a mouse for systems that support mouse input.

| Function                | Button / Combination       | Command        | Comment                                     |
| :---                    | :---:                      | :---:          | :---:                                       |
| Touchpad as Mouse       | `HKB + Right Touchpad`     | -              |                                            |
| Right Click             | `HKB + L3`                 | `Right Click`  |                                            |
| Left Click              | `HKB + R3`                 | `Left Click`   |                                            |

---

## Additional Hotkeys - Steam Deck (Neptune)

| Function        | Command              | Comment                                                     |
| :---            | :---:                | :---:                                                       |
| Radial Menu     | `Left Touchpad`      | Press `Left Touchpad` to activate the radial menu.           |

The radial menu system is located on the `Left Touchpad` on the Steam Deck, with the layout depending on the template you choose.

The primary difference is the complexity of the built-in radial menus and the number of options available on the `Left Touchpad`.

RetroDECK ships with two different templates for the Steam Deck:

---

## Full Radial Menu

This is a deeper radial menu shipped by default.

**Template**: `RetroDECK: Steam Deck - Neptune FULL`

Read more here: [RetroDECK: Steam Deck - Neptune FULL](radial-steamdeck-full.md)

---

## Simple Radial Menu

This is the same radial menu found on external controllers.

**Template**: `RetroDECK: Steam Deck - Neptune SIMPLE`

Read more here: [RetroDECK: Radial Menu - Simple](radial-simple.md)


---

## Built-In Hotkeys - Steam Deck

### SteamOS: Game Mode

These hotkeys are made by Valve and can be used in Game Mode across all games.

| Function                      | Button / Combination           | Comment |
| :---                           | :---:                          | :---:   |
| Joystick Mouse                 | `STEAM + Right Stick`          |         |
| Joystick Mouse - Left Click    | `STEAM + R3`                   |         |
| Touchpad Mouse                 | `STEAM + Right Touchpad`       |         |
| Touchpad Mouse - Left Click    | `STEAM + Right Touchpad Click` |         |
| Screen Brightness - Increase   | `STEAM + Left Stick Up`        |         |
| Screen Brightness - Decrease   | `STEAM + Left Stick Down`      |         |
| Enter                          | `STEAM + D-pad Right`          |         |
| Tab                            | `STEAM + D-pad Down`           |         |
| Escape                         | `STEAM + D-pad Left`           |         |
| Force Quit Application         | `STEAM + B (long press)`       |         |
| Keyboard - Show / Hide         | `STEAM + X`                    |         |
| Magnifier Toggle               | `STEAM + L1`                   |         |
| Take Screenshot                | `STEAM + R1`                   |         |
| Left Mouse Click               | `STEAM + R2`                   |         |
| Right Mouse Click              | `STEAM + L2`                   |         |
| Game Recording - Start/Stop    | `STEAM + A`                    |         |
| Game Recording - Add timeline marker | `STEAM + Y`                |         |
| Game Recording - Make a clip   | `STEAM + D-pad Up`             |         |

---

### SteamOS: Desktop Mode

These hotkeys are made by Valve and can be used in Desktop Mode.

| Function                          | Button / Combination              | Comment |
| :---                               | :---:                             | :---:   |
| Joystick Mouse                     | `Right Stick`                     |         |
| Touchpad as Mouse                  | `Right Touchpad`                  |         |
| Left Mouse Click                   | `R3` / `Right Touchpad Click` / `R2` |         |
| Middle Mouse Click                 | `Left Touchpad Click`             |         |
| Right Mouse Click                  | `L2`                              |         |
| Horizontal and Vertical Scrolling  | `Left Touchpad`                   |         |
| Left Ctrl                          | `L1`                              |         |
| Left Alt                           | `R1`                              |         |
| Space                              | `Y`                               |         |
| Keyboard - Show / Hide             | `X`                               |         |
| Escape                             | `B` / `Start`                     |         |
| Tab                                | `Select`                          |         |
| Enter                              | `A`                               |         |
| Left Shift                         | `L4`                              |         |
| Super Key                          | `L5`                              |         |
| Page Up                            | `R4`                              |         |
| Page Down                          | `R5`                              |         |
| Arrow Key - Up                     | `D-Pad Up` / `Left Stick Up`      |         |
| Arrow Key - Down                   | `D-Pad Down` / `Left Stick Down`  |         |
| Arrow Key - Left                   | `D-Pad Left` / `Left Stick Left`  |         |
| Arrow Key - Right                  | `D-Pad Right` / `Left Stick Right`|         |
| Game Recording - Start/Stop        | `CTRL + F11`                      | Can be rebound, needs to be enabled |
| Game Recording - Add timeline marker | `CTRL + F12`                    | Can be rebound, needs to be enabled |
| Game Recording - Take screenshot   | `F12`                             | Can be rebound, needs to be enabled |

---


---
