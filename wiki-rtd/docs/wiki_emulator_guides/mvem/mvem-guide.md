# Guide: MVEM

<img src="../../../wiki_images/logos/microvision-logo.png" width="150">

MVEM is a experimental Microvision / Milton Bradley Microvision / MB Microvision emulator running in a maxium **640x480** window.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### melMVEMonDS Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Microvision Blog 1 | [Link](https://www.raphkoster.com/2017/05/07/microvision-emulator-release/) |
| Microvision Blog 2 | [Link](https://mbmicrovision.blogspot.com/) |

---

## Where to put the games

Microvision games should be put under the `retrodeck/roms/microvision/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description |
|-------------|-------------|
| .bin        | Binary rom file |
| .bmp        | Overlays |

---

## Does MVEM require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/microvision/`                             |               |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

The emulator controls are **hardcoded**.

**Analog Controls**

- **Mouse** - Move left/right  
- **Keyboard** - `O` (left), `P` (right)
- **Esc** - Exit the emulator

**Microvision Control Pad**

The Microvision keypad is arranged as **3 columns × 4 rows** and mapped as follows:

| Row | Keys |
|-----|------|
| 1   | `1 2 3` |
| 2   | `Q W E` |
| 3   | `A S D` |
| 4   | `Z X C` |

---

## Debug Mode

Debug mode is accessed with **M**. It is generally recommended to avoid this mode unless needed.

The following explanation is adapted from Paul Robson:

- **0–9, A–F** - Change displayed address  
- **G** - Run program until interrupted (with **M**)  
- **K** - Set breakpoint at current address  
- **S** - Single-step execution  
- **V** - Step over  
- **M** - Return to monitor (if running)  
- **Esc** - Exit Debug Mode

---
