# Guide: KEGS

<img src="../../../wiki_images/logos/kegs-logo.png" width="150">

KEGS (Kent's Emulated GS) is an advanced Apple IIgs emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### KEGS Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| KEGS Website | [Link](https://kegs.sourceforge.net/) |
| whatisthe2gs | [Link](https://www.whatisthe2gs.apple2.org.za/) |



---

## Where to put the games

KEGS games should be put under the `retrodeck/roms/apple2gs/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| Format | Description |
|-------|-------------|
| `.2mg` | Preferred Apple II disk image with metadata. |
| `.po`  | ProDOS-ordered raw disk image. |
| `.do`  | DOS 3.3–ordered raw disk image. |
| `.dsk` | Generic raw disk image. |
| `.nib` | Nibble image for copy-protected disks. |
| `.woz` | High-fidelity flux disk image. |
| `.hdv` | ProDOS hard-disk image. |


---

## Does KEGS require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, it requires 

| File Name | Description |
|----------|-------------|
| `ROM.ROM` | Apple IIgs ROM image of either ROM01 (recommended) or ROM03.  |


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/apple2gs/`                             |               |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

### Emulator Keys

**Function Keys**

| Key Combination | Action |
|-----------------|--------|
| Ctrl + F9 | Copy text screen to host clipboard |
| F1 | Alias for **Command** |
| F12 | Alias for Pause/Break (Reset) |
| F2 | Alias for **Option** |
| F3 | Alias for **ESC** (Windows compatibility) |
| F4 | Open Configuration Panel |
| F5 | Toggle status lines on/off |
| F6 | Cycle speed modes: Unlimited, 1 MHz, 2.8 MHz, 8.0 MHz (ZipGS) |
| F7 | Toggle debugger window |
| F8 | Toggle pointer hiding on/off |
| F9 | Invert joystick direction |
| Shift + F6 | Enter KEGS debugger |
| Shift + F7 | Toggle `fast_disk_emul` on/off |
| Shift + F9 | Swap X and Y joystick/paddle axes |

---

**Key Aliases**

| Logical Key | Physical Keys |
|-------------|---------------|
| Command | Cancel, Command, F1, Meta_L, Scroll_Lock |
| Home | Keypad `=` |
| Keypad Clear | Num_Lock |
| Option | Alt_R, F2, Menu, Meta_R, Mode_switch, Option, Print |
| Reset | Break, F12, Pause |

> **Note:** Reset on an Apple IIgs requires holding **Ctrl**.

---