# RetroDECK Hotkeys

<img src="../../wiki_icons/pixelitos/antimicrox.png" width="50" alt="">

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

<img src="../../wiki_images/steam/steam-controller-icon.png" width="50" alt="">

**Linux Desktop:**  

<img src="../../wiki_images/steam/steam-controller-icon-bar.png" width="200" alt="">


---


## RetroDECK: Steam Input Templates & HotKey Button

Below is a list of the currently supported Steam Input Templates with links to their controller guides.

| Controller | Template | Version | System | Controller Link | HKB | Comment |
|:---|:---|:---:|:---|:---|:---:|:---|
| DualShock 3 | `DualShock 3` | v1b | PlayStation 3 | [DualShock 3](../wiki_controllers/playstation/dualshock-3.md) | `Select` | |
| DualShock 4 | `DualShock 4` | v1b | PlayStation 4 | [DualShock 4](../wiki_controllers/playstation/dualshock-4.md) | `Select` | |
| DualSense | `DualSense` | v1b | PlayStation 5 | [DualSense](../wiki_controllers/playstation/dualsense.md) | `Select` | |
| DualSense Edge | `DualSense Edge` | v1b | PlayStation 5 | [DualSense Edge](../wiki_controllers/playstation/dualsense-edge.md) | `Select` | |
| Generic Standard | `Generic - Standard` | v1b | Varies | [Generic Standard](../wiki_controllers/generic/generic-standard.md) | `Select` | Most 3rd-party controllers with a standard layout |
| Steam Controller: Gordon | `Steam Controller - Gordon` | v1b | Steam Devices | [Steam Controller - Gordon](../wiki_controllers/steam/steam-controller-gordon.md) | `L4` / `Select` | |
| Steam Deck: Neptune | `Steam Deck - Neptune` | v1.1b | Steam Deck LCD/OLED | [Steam Deck - Neptune](../wiki_controllers/steam/steamdeck-neptune.md) | `L4` / `R4` / `Select` | Two radial menu systems |
| Switch Pro | `Switch Pro` | v1b | Nintendo Switch | [Switch Pro](../wiki_controllers/nintendo/switch-pro.md) | `Minus` | |
| Xbox 360 | `Xbox 360` | v1b | Xbox 360 | [Xbox 360 Controller](../wiki_controllers/xbox/xbox-360.md) | `Select` | |
| Xbox Elite Wireless Series 1 / 2 | `Xbox Wireless` | v1b | Xbox Series S/X | [Xbox Elite Wireless Series 1 / 2](../wiki_controllers/xbox/xbox-wireless-elite.md) | `Select` | |
| Xbox Wireless | `Xbox Wireless` | v1b | Xbox One / Series S/X | [Xbox Wireless Controller](../wiki_controllers/xbox/xbox-wireless.md) | `Select` | |



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
- **Controller Type Columns**: Input combination needed to trigger the command for each controller type,  Xbox / Steam Deck · Nintendo · PlayStation.  
- **Command**: The key combination sent to the component.  
- **System Support**: Components that recognize the command.  
- **Comment**: Additional notes.

| Function | Icon | Controller | Keyboard | System Support | Comment |
|---|:---:|---|---|---|---|
| Decrease Emulation Speed | <img src="../../wiki_icons/binding_icons/RD-zoom-out.png" width="30" alt="Decrease emulation speed"> | `HKB` + `D-pad ↓` | <kbd>CTRL</kbd> + <kbd>2</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li></ul> | |
| Fast Forward | <img src="../../wiki_icons/binding_icons/RD-org.xfce.session.png" width="30" alt="Fast forward"> | `HKB` + `R2` | <kbd>CTRL</kbd> + <kbd>+</kbd> | <ul><li>DuckStation</li><li>melonDS</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Increase Emulation Speed | <img src="../../wiki_icons/binding_icons/RD-zoom-in.png" width="30" alt="Increase emulation speed"> | `HKB` + `D-pad ↑` | <kbd>CTRL</kbd> + <kbd>1</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li></ul> | |
| Load State | <img src="../../wiki_icons/binding_icons/RD-folder-blue-backup.png" width="30" alt="Load state"> | `HKB` + `L1` | <kbd>CTRL</kbd> + <kbd>A</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Next State | <img src="../../wiki_icons/binding_icons/RD-go-next.png" width="30" alt="Next state"> | `HKB` + `D-pad →` | <kbd>CTRL</kbd> + <kbd>K</kbd> | <ul><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Open Menu | <img src="../../wiki_icons/binding_icons/RD-preferences-tweaks-shadows.png" width="30" alt="Open menu"> | `HKB` + `Y / X / △` | <kbd>CTRL</kbd> + <kbd>M</kbd> | <ul><li>DuckStation</li><li>PCSX2</li><li>RPCS3</li><li>RetroArch</li></ul> | |
| Pause / Resume | <img src="../../wiki_icons/binding_icons/RD-media-playback-pause.png" width="30" alt="Pause or resume"> | `HKB` + `A / B / ×` | <kbd>CTRL</kbd> + <kbd>P</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>melonDS</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Previous State | <img src="../../wiki_icons/binding_icons/RD-go-previous.png" width="30" alt="Previous state"> | `HKB` + `D-pad ←` | <kbd>CTRL</kbd> + <kbd>J</kbd> | <ul><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Quit Component | <img src="../../wiki_icons/binding_icons/RD-process-stop.png" width="30" alt="Quit component"> | `HKB` + `Start` | <kbd>CTRL</kbd> + <kbd>Q</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Rewind | <img src="../../wiki_icons/binding_icons/RD-view-refresh.png" width="30" alt="Rewind"> | `HKB` + `L2` | <kbd>CTRL</kbd> + <kbd>-</kbd> | <ul><li>DuckStation</li><li>RetroArch</li></ul> | |
| Save State | <img src="../../wiki_icons/binding_icons/RD-document-save.png" width="30" alt="Save state"> | `HKB` + `R1` | <kbd>CTRL</kbd> + <kbd>S</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Take Screenshot | <img src="../../wiki_icons/binding_icons/RD-camera-photo.png" width="30" alt="Take screenshot"> | `HKB` + `B / A / ○` | <kbd>CTRL</kbd> + <kbd>X</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>PCSX2</li><li>RetroArch</li></ul> | |
| Toggle Fullscreen | <img src="../../wiki_icons/binding_icons/RD-zoom-fit-best.png" width="30" alt="Toggle fullscreen"> | `HKB` + `X / Y / □` | <kbd>CTRL</kbd> + <kbd>ENTER</kbd> | <ul><li>Azahar</li><li>Dolphin</li><li>PrimeHack</li><li>DuckStation</li><li>melonDS</li><li>PCSX2</li><li>RPCS3</li></ul> | |


---


## Additional Hotkeys - Components

### RetroArch: Additional Hotkeys

These hotkeys are built into RetroArch and function across supported cores.

| Function       | Button / Combination | System Support         | Comment |
| :------------- | :-----------------: | :------------------- | :------ |
| Open Menu      | `L3 + R3`           | <ul><li>RetroArch</li></ul> |         |


### Arcade Systems: Additional Hotkeys

These hotkeys work for RetroArch, MAME and other arcade systems.

| Function       | Button / Combination | System Support                                   | Comment |
| :------------- | :-----------------: | :---------------------------------------------- | :------ |
| Insert Credit  | `SELECT`            | <ul><li>MAME (Standalone)</li><li>RetroArch</li></ul> |         |


---

## Additional Hotkeys - Controllers

### Simple Radial Menu

All controllers can open the [RetroDECK: Radial Menu - Simple](radial-simple.md).

| Function            | Command                     | Comment                       |
| :---                | :---:                        | :---:                         |
| Simple Radial Menu  | `HKB + Left Joystick`        | Press `L3` to activate radial button. |

### Right Joystick as Temporary Mouse

By holding `SELECT` and moving the `Right Joystick`, you can use it as a mouse for systems that support mouse input.

| Function | Button / Combination | Command | Comment |
| :--- | :---: | :---: | :---: |
| Joystick as Mouse | `SELECT + Right Stick` | Movement | |
| Left Click | `SELECT + R3` | `Left Click` | |
| Right Click | `SELECT + L3` | `Right Click` | |




---

## Additional Hotkeys - DualShock 4 / DualSense

The touchpads on DualShock 4 and DualSense controllers act as a mouse, allowing you to navigate mouse-based inputs.

| Function | Button / Combination | System Support | Comment |
| :--- | :---: | :---: | :---: |
| Full Touchpad | - | - | The entire touchpad acts as a mouse. |
| Left Touchpad Click | `Right Mouse Click` | - | |
| Right Touchpad Click | `Left Mouse Click` | - | |


---

## Additional Hotkeys - Steam Controller 2015 (Gordon)

By pressing `R4`, you can toggle the right touchpad between two modes: **Right Joystick Mode** and **Mouse Mode**. This is useful for games that primarily use the mouse as input, as you don't need to hold `SELECT` or `L4` for mouse functionality.

**Example Use Cases:**

- **ScummVM** for point-and-click games.
- **Dolphin** for Wiimote movement.
- Lightgun games.
- PC-type games.

**Note:** Entering the global hotkeys mode by pressing `SELECT` or `L4` will switch the right touchpad back to **Joystick Mode**.

| Function | Button / Combination | Command | Comment |
| :--- | :---: | :---: | :---: |
| Left Click (Mouse Mode) | `R3` | `Left Click` | In **Mouse Mode**. |
| Touchpad Mode Switch | `R4` | - | Switch between **Joystick Mode** and **Mouse Mode**. |


By holding `HKB` and moving the **Right Touchpad**, you can use it as a mouse for systems that support mouse input.

| Function | Button / Combination | Command | Comment |
| :--- | :---: | :---: | :---: |
| Left Click | `HKB + R3` | `Left Click` | |
| Right Click | `HKB + L3` | `Right Click` | |
| Touchpad as Mouse | `HKB + Right Touchpad` | - | |


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

## Built-In Hotkeys - SteamOS

SteamOS has some hotkeys that can be used with the Steam Deck or Steam Controller 2026 (Triton).

### Game Mode

These hotkeys are made by Valve and can be used in Game Mode across all games.

| Function | Button / Combination | Comment |
| :--- | :---: | :---: |
| Enter | `STEAM` + `D-pad Right` | |
| Escape | `STEAM` + `D-pad Left` | |
| Force Quit Application | `STEAM` + `B (long press)` | |
| Game Recording - Add timeline marker | `STEAM` + `Y` | |
| Game Recording - Make a clip | `STEAM` + `D-pad Up` | |
| Game Recording - Start/Stop | `STEAM` + `A` | |
| Joystick Mouse | `STEAM` + `Right Stick` | |
| Joystick Mouse - Left Click | `STEAM` + `R3` | |
| Keyboard - Show / Hide | `STEAM` + `X` | |
| Left Mouse Click | `STEAM` + `R2` | |
| Magnifier Toggle | `STEAM` + `L1` | |
| Right Mouse Click | `STEAM` + `L2` | |
| Screen Brightness - Decrease | `STEAM` + `Left Stick Down` | |
| Screen Brightness - Increase | `STEAM` + `Left Stick Up` | |
| Tab | `STEAM` + `D-pad Down` | |
| Take Screenshot | `STEAM` + `R1` | |
| Touchpad Mouse | `STEAM` + `Right Touchpad` | |
| Touchpad Mouse - Left Click | `STEAM` + `Right Touchpad Click` | |

---

### Desktop Mode

These hotkeys are made by Valve and can be used in Desktop Mode.

| Function | Button / Combination | Comment |
| :--- | :---: | :---: |
| Arrow Key - Down | <ul><li>`D-Pad Down`</li><li>`Left Stick Down`</li></ul> | |
| Arrow Key - Left | <ul><li>`D-Pad Left`</li><li>`Left Stick Left`</li></ul> | |
| Arrow Key - Right | <ul><li>`D-Pad Right`</li><li>`Left Stick Right`</li></ul> | |
| Arrow Key - Up | <ul><li>`D-Pad Up`</li><li>`Left Stick Up`</li></ul> | |
| Enter | `A` | |
| Escape | <ul><li>`B`</li><li>`Start`</li></ul> | |
| Game Recording - Add timeline marker | <kbd>CTRL</kbd> + <kbd>F12</kbd> | Can be rebound, needs to be enabled |
| Game Recording - Start/Stop | <kbd>CTRL</kbd> + <kbd>F11</kbd> | Can be rebound, needs to be enabled |
| Game Recording - Take screenshot | <kbd>F12</kbd> | Can be rebound, needs to be enabled |
| Joystick Mouse | `Right Stick` | |
| Keyboard - Show / Hide | `X` | |
| Left Alt | `R1` | |
| Left Ctrl | `L1` | |
| Left Mouse Click | <ul><li>`R3`</li><li>`Right Touchpad Click`</li><li>`R2`</li></ul> | |
| Left Shift | `L4` | |
| Middle Mouse Click | `Left Touchpad Click` | |
| Page Down | `R5` | |
| Page Up | `R4` | |
| Space | `Y` | |
| Super Key | `L5` | |
| Tab | `Select` | |
| Touchpad as Mouse | `Right Touchpad` | |
| Horizontal and Vertical Scrolling | `Left Touchpad` | |

---

