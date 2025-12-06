# XRoar  - General Guide

<img src="../../../wiki_images/logos/xemu-logo.png" width="75">

XRoar is a  Dragon 32, Dragon 64, Dragon 200-E, Tandy Colour Computer and Tandy MC-10 emulator.

---

### XRoar Links:

[XRoar manual](https://www.6809.org.uk/xroar/doc/xroar.shtml)

[XRoar Webpage](https://www.6809.org.uk/xroar/)

---

## Where to put the games

XRoar games should be put in the following directories 

`retrodeck/roms/coco/`
`retrodeck/roms/dragon32/`
`retrodeck/roms/tanodragon/`

---

Yes, it all depends on what computer you want to emulate. 

XRoar supports many: 

| System / Machine | ROM File Name(s) |
|------------------|------------------|
| **Dragon 32** | `d32.rom` |
| **Dragon 64** (32K BASIC) | `d64_1.rom` |
| **Dragon 64** (64K BASIC) | `d64_2.rom` |
| **Dragon 200‑E** (32K BASIC) | `d200e_1.rom` |
| **Dragon 200‑E** (64K BASIC) | `d200e_2.rom` |
| **Dragon 200‑E** (External charset ROM) | `d200e_26.rom` |
| **Tandy / CoCo (Colour BASIC)** | `bas13.rom`, `bas12.rom`, `bas11.rom`, `bas10.rom` |
| **Tandy / CoCo (Extended / Super BASIC)** | `extbas11.rom`, `extbas10.rom` |
| **Tandy CoCo 3 (Super ECB)** | `coco3.rom` |
| **Tandy CoCo 3 (PAL)** | `coco3p.rom` |
| **Tandy / RS‑DOS (disk‑based CoCo/Dragon)** | `disk11.rom`, optionally `disk10.rom` |
| **Tandy / CoCo / MC‑10 / Alice (MC‑10 BASIC)** | `mc10.rom`, also `alice.rom` for some clones |
| **DOS / Disk‑based ROMs** (DragonDOS / RS‑DOS / compatible) | `ddos10.rom`, and various DOS‑compatible ROMs such as `sdose6.rom`, `dplus49b.rom`, etc. |
| **Alternative / Compatibility DOS ROMs / Cart ROMs** | e.g. `sdose6.rom`, `dplus49b.rom`, other community ROM‑sets for DOS / cartridge expansions |

---

### Where to put the BIOS and Firmware?

Directly into the folder

`retrodeck/bios/`


---

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .cas / .CAS | Cassette / tape images |
| .ccc / .CCC | Cartridge images |
| .dsk / .DSK | Disk images |
| .rom / .ROM | System / Cartridge ROM images |

---

## Folder structure

| Type    | Folder                 |      Comment     | 
|  :---:  |  :---:                 |      :---:     |
| Tandy Color Computer: ROMs Folder |`retrodeck/roms/coco/` | 
| Dragon Data Dragon 32: ROMs Folder |`retrodeck/roms/dragon32/` | 
| Tano Dragon: ROMs Folder |`retrodeck/roms/tanodragon/` | 
| BIOS Folder | `retrodeck/bios/` | |
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/xroar/`         |   `xroar.config` |
