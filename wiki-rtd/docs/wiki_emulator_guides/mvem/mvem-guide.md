# Guide: MVEM

<img src="../../../wiki_images/logos/microvision-logo.png" width="150">

MVEM is a experimental Microvision / Milton Bradley Microvision / MB Microvision emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### MVEM Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Microvision Blog 1 - Raph Koster  | [Link](https://www.raphkoster.com/2017/05/07/microvision-emulator-release/) |
| Microvision Blog 2 - Paul Robson  | [Link](https://mbmicrovision.blogspot.com/) |

---

## Where to put the games

Microvision games should be put under the `retrodeck/roms/microvision/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description |
|-------------|-------------|
| .bin        | Binary ROM Game File |
| <gamename>.bmp        | Overlays |
| <gamename>_snap.bmp        | Snap Overlays |


---

## Does MVEM require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/microvision/`       |      Games and Overlays         |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

**Exit the emulator**

  - `CTRL + Q`
  - `ESC`

**Move Knob left/right**

  - Mouse
  - Keyboard: `O` (left), `P` (right)


**Microvision Control Pad**

The Microvision control pad features a **3 × 4 matrix layout**, comprising a total of 12 buttons. 

Each game utilizes a distinct input configuration, with button functions defined individually per title and Snap Overlays `<gamename>_snap.bmp` files can be used to display the appropriate control layout for each game.

| Col 1 Keys | Col 2 Keys | Col 3 Keys |
|------------|------------|------------|
|     `1`    |     `2`    |     `3`    |
|     `Q`    |     `W`    |     `E`    |
|     `A`    |     `S`    |     `D`    |
|     `Z`    |     `X`    |     `C`    |


---

## Overlays                               

<img src="../Bomber.jpg" width="200"> <img src="../Bomber_snap.png" width="200">

Two overlay types are supported and must be placed alongside the ROM files in the `retrodeck/roms/microvision/` directory:

- `<gamename>.bmp` - The primary **playfield overlay** displayed during gameplay.
- `<gamename>_snap.bmp` - The **control input/device overlay**, representing the Microvision’s 12-button matrix layout. This overlay is shown on the left side of the emulator window.

### Example: Bomber.bin

<img src="../MVEM_Bomber.png" width="800">

| File Name              | Description              |
|------------------------|--------------------------|
| `Bomber.bin`           | ROM file                 |
| `Bomber.bmp`           | Playfield overlay        |
| `Bomber_snap.bmp`      | Control input overlay    |

In this example, the game **Bomber** uses a specific subset of the Microvision control matrix and the rest of the buttons are covered.

The Snap Overlay indicates the following key mappings are used to play the game:

- **Column 1, Row 1:** `1`  
- **Column 2 (all rows):** `2`, `W`, `S`, `X`

---

## Debug Mode

Debug mode is accessed with **M**. It is generally recommended to avoid this mode unless needed.

- **Change displayed address** - `0–9`, `A–F`
- **Exit Debug Mode** - `Esc`
- **Return to monitor (if running)** - `M`
- **Run program until interrupted** - `G` (interrupt with `M`)
- **Set breakpoint at current address** - `K`
- **Single-step execution** - `S`
- **Step over** - `V`

---
