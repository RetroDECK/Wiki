# Guide: MVEM

<img src="../../../wiki_images/logos/microvision-logo.png" width="75">

MVEM is a experimental Microvision / Milton Bradley Microvision / MB Microvision emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### melonDS Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| melonDS - FAQ | [Link](https://melonds.kuribo64.net/faq.php) |


    "url_rdwiki": "https://retrodeck.readthedocs.io/en/latest/wiki_emulator_guides/mvem/mvem-guide/",
    "url_source": "https://www.raphkoster.com/2017/05/07/microvision-emulator-release/",
    "url_source_2": "https://github.com/slaminger/Microvision-Emulation",
    "url_source_3": "https://mbmicrovision.blogspot.com/",
    "description": "MVEM is a Microvision Emulator.",
    "component_type": "Emulator",

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

## Does MelonDS require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| BIOS   | `retrodeck/bios/`                                 |               |
| Config | `~/.var/app/net.retrodeck.retrodeck/config/melonDS/` | `melonDS.ini` |
| ROMs   | `retrodeck/roms/nds/`                             |               |
| Saves  | `retrodeck/saves/nds/melonds/`                    |               |
| States | `retrodeck/states/nds/melonds/`                   |               |


## Controls: Keyboard & Mouse

Mudlet cannot be played with a controller easily and is best used with a physical keyboard and mouse.

The emulator controls are hardcoded.

**Analog Controls**

- **Mouse** — Move left/right  
- **Keyboard** — `O` (left), `P` (right)

**Microvision Control Pad**

The Microvision keypad is arranged as **3 columns × 4 rows** and mapped as follows:

| Row | Keys |
|-----|------|
| 1   | `1 2 3` |
| 2   | `Q W E` |
| 3   | `A S D` |
| 4   | `Z X C` |

## Debugging Mode

Debugging mode is accessed with **M**. It is generally recommended to avoid this mode unless needed.

The following explanation is adapted from Paul Robson:

- **0–9, A–F** — Change displayed address  
- **G** — Run program until interrupted (with **M**)  
- **K** — Set breakpoint at current address  
- **S** — Single-step execution  
- **V** — Step over  
- **M** — Return to monitor (if running)  
- **Esc** — Exit the emulator
