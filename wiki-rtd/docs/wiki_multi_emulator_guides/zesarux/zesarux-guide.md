# Guide: ZExarUX

<img src="../../../wiki_images/logos/zesarux-logo.png" width="150" alt="zesarux logo">

## ZEsarUX

**ZEsarUX** is a multi-system emulator with support for the **ZX Spectrum Next** and many other systems.

When emulating the ZX Spectrum Next, ZEsarUX can boot **NextZXOS** from a compatible SD/MMC image. This provides the Next's native operating-system environment, including its file browser and software-launching functionality.

<img src="https://raw.githubusercontent.com/chernandezba/zesarux/main/screenshots/screenshot_zxdesktop_multitask.png" width="800" alt="zesarux desktop"> 

**RetroDECK** uses **ZEsarUX** as an **ZX Spectrum Next** emulator only.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️


---

## Supported Systems

**RetroDECK** uses ZEsarUX specifically as its **ZX Spectrum Next** emulator. Although ZEsarUX supports many additional systems, RetroDECK already includes better-suited emulators for most of them.

As a user, you can therefore explore the **ZX Spectrum Next / NextZXOS environment** within ZEsarUX and use it to launch software supported by the emulated system.

They are listed here for completeness:

### Amstrad
- CPC 464
- CPC 664
- CPC 6128
- CPC 4128
- PCW 8256
- PCW 8512

### Czerweny (Argentina)
- CZ 1000
- CZ 1000 Plus
- CZ 1500
- CZ 1500 Plus
- CZ 2000
- CZ Spectrum
- CZ Spectrum Plus

### Microdigital (Brazil)
- TK80
- TK82
- TK82C
- TK83
- TK85
- TK90X (Portuguese and Spanish)
- TK95 (Portuguese and Spanish)

### Sega
- SG1000
- Master System

### Sinclair / ZX
- MK14
- ZX80
- ZX81
- ZX Spectrum
- QL
- Z88

### Spectrum Clones
- Inves Spectrum+
- Pentagon
- Chloe 140 SE
- Chloe 280 SE
- Chrome
- Prism
- ZX-Uno
- ZX-Evolution BaseConf (beta)
- ZX-Evolution TS-Conf
- ZX Spectrum Next

### Spectravideo
- SV-318
- SV-328

### Timex Computer
- TC 2048
- TC 2068

### Timex Sinclair
- TS 1000
- TS 1500
- TS 2068

### Others
- Colecovision
- Jupiter Ace
- MSX1
- Sam Coupé

---

### ZEsarUX Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| ZEsarUX - Github | [Link](https://github.com/chernandezba/zesarux) |

---

## Where to put the games?

**ZX Spectrum Next** games should be put under the `retrodeck/roms/zxnext/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
| ----------- | ----------- |
| .nex        | ZX Spectrum Next executable/game file **(Recommended)** |
| .snx        | ZX Spectrum Next snapshot file |
| .sna        | ZX Spectrum snapshot format (also used with Next compatibility) |
| .z80        | ZX Spectrum snapshot format (also used with Next compatibility) |
| .tap        | ZX Spectrum tape image |
| .tzx        | Extended ZX Spectrum tape image |
| .pzx        | ZX Spectrum tape image format |
| .dsk        | Disk image (used with +3DOS/compatible systems) |
| .trd        | TR-DOS disk image |
| .scl        | TR-DOS disk image format |
| .mgt        | DISCiPLE/+D disk image |


---

## Does ZExarUX require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/zxnext/`                             |               |

---

## Controls: ⌨️ Keyboard & 🖱️ Mouse  

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

| **Shortcut** | **Action** |
|---|---|
| <kbd>↑</kbd><kbd>↓</kbd><kbd>←</kbd><kbd>→</kbd> | Movement |
| <kbd>Q</kbd><kbd>A</kbd><kbd>O</kbd><kbd>P</kbd> | Alternative movement (some games) |
| <kbd>NumPad 8</kbd><kbd>4</kbd><kbd>6</kbd><kbd>2</kbd> | Alternative movement (some games) |
| <kbd>Space</kbd> | Fire / Jump / Action |
| <kbd>NumPad 0</kbd> | Fire / Action (some games) |
| <kbd>Enter</kbd> | Start / Confirm |
| <kbd>F5</kbd> then <kbd>F10</kbd> | Menu then Exit application  |
| <kbd>Alt</kbd>+<kbd>F4</kbd> | Exit application |

---
