# Guide: KEGS

<img src="../../../wiki_images/logos/kegs-logo.png" width="150" alt="Kegs logo">

KEGS (Kent's Emulated GS) is an advanced Apple IIgs emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### KEGS Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| KEGS Website | [Link](https://kegs.sourceforge.net/) |
| whatisthe2gs | [Link](https://www.whatisthe2gs.apple2.org.za/) |



---

## Where to put the games

KEGS games should be put under the `retrodeck/roms/apple2gs/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| Format | Description |
|-------|-------------|
| `.2mg` | Preferred Apple II disk image with metadata. |
| `.po`  | ProDOS-ordered raw disk image. |
| `.do`  | DOS 3.3-ordered raw disk image. |
| `.dsk` | Generic raw disk image. |
| `.nib` | Nibble image for copy-protected disks. |
| `.woz` | High-fidelity flux disk image. |
| `.hdv` | ProDOS hard-disk image. |


---

## Does KEGS require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes, it requires 

| File Name | Description |
|----------|-------------|
| `ROM.ROM` | Apple IIgs ROM image of either ROM01 (recommended) or ROM03.  |

### Where should I put the BIOS?

You put the ROM.ROM into `retrodeck/bios/`

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/apple2gs/`                             |               |
| BIOS   | `retrodeck/bios/`                             |  `ROM.ROM`             |

---

## Controls: ⌨️ Keyboard & 🖱️ Mouse  

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

### Emulator Keys

| Shortcut | Action |
|-----------|--------|
| <kbd>Ctrl</kbd> + <kbd>F9</kbd> | Copy the current text screen to the host clipboard |
| <kbd>F1</kbd> | Apple **Command** key |
| <kbd>F2</kbd> | Apple **Option** key |
| <kbd>F3</kbd> | **Esc** (Windows compatibility) |
| <kbd>F4</kbd> | Open the configuration panel |
| <kbd>F5</kbd> | Toggle status lines |
| <kbd>F6</kbd> | Cycle CPU speed: Unlimited → 1 MHz → 2.8 MHz → 8.0 MHz (ZipGS) |
| <kbd>Shift</kbd> + <kbd>F6</kbd> | Enter the KEGS debugger |
| <kbd>F7</kbd> | Toggle debugger window |
| <kbd>Shift</kbd> + <kbd>F7</kbd> | Toggle `fast_disk_emul` |
| <kbd>F8</kbd> | Toggle mouse pointer hiding |
| <kbd>F9</kbd> | Invert joystick direction |
| <kbd>Shift</kbd> + <kbd>F9</kbd> | Swap X/Y joystick or paddle axes |
| <kbd>F12</kbd> | **Reset** (Pause/Break alias) |

### Key Aliases

| Apple IIgs Key | Host Keyboard Mapping |
|----------------|-----------------------|
| **Command** | <kbd>Cancel</kbd>, <kbd>Command</kbd>, <kbd>F1</kbd>, <kbd>Meta&nbsp;L</kbd>, <kbd>Scroll Lock</kbd> |
| **Option** | <kbd>Alt&nbsp;R</kbd>, <kbd>F2</kbd>, <kbd>Menu</kbd>, <kbd>Meta&nbsp;R</kbd>, <kbd>Mode Switch</kbd>, <kbd>Option</kbd>, <kbd>Print Screen</kbd> |
| **Reset** | <kbd>Break</kbd>, <kbd>Pause</kbd>, <kbd>F12</kbd> |
| **Home** | Keypad <kbd>=</kbd> |
| **Keypad Clear** | <kbd>Num Lock</kbd> |

---