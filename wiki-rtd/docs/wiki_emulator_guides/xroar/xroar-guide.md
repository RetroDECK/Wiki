# XRoar  - General Guide

<img src="../../../wiki_images/logos/xroar-tano64-logo.jpg" width="100">

XRoar is a Dragon and Tandy computer series emulator.

---

### XRoar Links:

[XRoar manual](https://www.6809.org.uk/xroar/doc/xroar.shtml)

[XRoar Webpage](https://www.6809.org.uk/xroar/)

---

## Where to put the games

XRoar games should be put in the following directories 

- **Tandy Color Computer:** `retrodeck/roms/coco/`
- **Dragon Data Dragon 32:**`retrodeck/roms/dragon32/`
- **Tano Dragon:**`retrodeck/roms/tanodragon/`

---

## Does XRoar require BIOS or Firmware?

Yes, you'll need the BIOS for the computer you're emulating. Some operating systems and even certain programs might also require their own BIOS files.

Check the following links for finding the right BIOS:

- [XRoar Webpage](https://www.6809.org.uk/xroar/)
- [Colorcomputerarchive](https://colorcomputerarchive.com/)


**NOTE:** XRoar calls the bios files **ROMS** and may of the end with **.rom**.


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

---

## Controls

XRoar supports multiple input methods—including physical controllers, keyboards, and mice. Though control behavior may vary between games since the originals were designed for home computers.

### Joystick / Controller Support

<img src="../XRoar-GamePad.png" width="500">

- RetroDECK includes the **SDL_GameControllerDB**, a community-maintained database of controller mappings used by SDL. XRoar is configured to use this database, ensuring wide compatibility with modern gamepads.
- If you have a physical joystick/gamepad attached, XRoar will detect it and map it as `joy0`, `joy1`, etc. 
- Built-in virtual joystick profiles include:  
  - `wasd` → uses **W / A / S / D** for directions, **O / P** for fire buttons.
  - `kjoy0` → uses arrow keys (“cursor keys”) plus **Left Alt** or **Left Super** as fire buttons.
  - `ijkl` → uses **I / J / K / L** for directions + **X / Z** (fire).
  - `qaop` → uses **Q / A / O / P** for directions + **Space / Left Bracket** as fire buttons.
  - `mjoy0` → mouse-based virtual joystick (mouse controls emulated joystick).


**(Re)configure Joystick in XRoar**

Go to menu: **Hardware → Right Joystick** (or **Left Joystick**) to choose how XRoar should treat joystick input. 

You can choose among the built-in profiles above (keyboard-based, mouse-based, or physical joystick): so for instance `wasd`, `kjoy0`, `qaop`, etc...

---

## Machine Selection

The **Hardware → Machine** menu in XRoar lets you choose which system you want to emulate. XRoar supports several Dragon and CoCo models, each with its own hardware capabilities and compatibility differences.

<img src="../XRoar-Machine.png" width="500">

### Machine Profiles in XRoar

| Machine | Type | Region | Notes |
|--------|-------|--------|-------|
| **Dragon 32** | Dragon | PAL | 32 KB RAM home computer; excellent general compatibility. |
| **Dragon 64** | Dragon | PAL | 64 KB RAM; adds lower-case support and improved BASIC. |
| **Tano Dragon (NTSC)** | Dragon | NTSC | U.S.-market NTSC version of the Dragon 64. |
| **Dragon Professional (Alpha)** | Dragon | PAL | Early/experimental “professional” model; not widely released. |
| **Dragon 200-E** | Dragon | PAL | European Dragon variant with localized features. |
| **Dragon 64 + SAMx8 (512K)** | Dragon (expanded) | PAL | Dragon 64 with SAMx8 expansion (512 KB); allows advanced software and RAM-intensive builds. |
| **Tandy CoCo (PAL)** | Tandy CoCo | PAL | Colour Computer 1/2 in PAL format. |
| **Tandy CoCo (NTSC)** | Tandy CoCo | NTSC | Standard U.S. CoCo 1/2 model. |
| **Tandy CoCo 2B (PAL, T1)** | CoCo 2 | PAL | PAL CoCo 2B using the T1 VDG chip (improved video timings). |
| **Tandy CoCo 2B (NTSC, T1)** | CoCo 2 | NTSC | NTSC CoCo 2B with the T1 VDG variant. |
| **Tandy Deluxe CoCo** | CoCo prototype | NTSC | Prototype “Deluxe” CoCo with enhanced graphics; limited software support. |
| **Tandy CoCo 3** | CoCo 3 | NTSC | Advanced 8-bit system with GIME chip, 128 KB RAM, enhanced graphics modes. |
| **Tandy CoCo 3 (6309)** | CoCo 3 (CPU alt.) | NTSC | CoCo 3 using the Hitachi 6309 CPU (software-selectable enhancements). |
| **Tandy CoCo 3 (PAL)** | CoCo 3 | PAL | PAL-region version of the CoCo 3. |
| **Tandy CoCo 3 (PAL, 6309)** | CoCo 3 (CPU alt.) | PAL | PAL CoCo 3 using the 6309 CPU. |
| **Dynacom MX-1600** | CoCo clone | PAL-M (Brazil) | Brazilian CoCo-compatible system used in the PAL-M region. |
| **Prológica CP-400** | CoCo clone | PAL-M (Brazil) | Another popular Brazilian CoCo-compatible microcomputer. |
| **Tandy MC-10** | MC-10 | NTSC | Compact low-cost 6803 machine; simpler BASIC and limited RAM. |
| **Matra & Hachette Alice** | MC-10 family | PAL (France) | French variant of the MC-10 with cosmetic and ROM differences. |

Switching machines changes the emulated hardware, such as available RAM, keyboard layout, video mode, and ROM behavior.

### Choosing the Right Machine

Most games and software were written with a specific model in mind. If a program doesn’t load correctly or the keyboard layout seems off, try switching to another machine model.
For general use, **Dragon 32** is the most broadly compatible starting point.

- Changing machines typically requires a reset or restart of the emulator.
- Machine types require corresponding BIOS files to be present for XRoar to load them correctly in `retrodeck/bios/`.

---


## Cartridge Options

In **Hardware → Cartridge** you can select different default cartridge types for emulation. 

- Cartridges might require corresponding BIOS files to be present for XRoar to load them correctly in `retrodeck/bios/`.

<img src="../XRoar-Cartidge.png" width="500">

| Option                              | Description                                                                                                                                                  |
|-------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **None**                            | This option disables any cartridge emulation. Useful when you want to run the system without loading a specific cartridge.                                     |
| **DragonDOS**                       | A disk operating system for the Dragon series of computers, offering a command-line interface and file management functions.                                   |
| **RS-DOS**                          | The standard operating system for Dragon 32/64 computers. It provides disk and basic system operations.                                                       |
| **Delta System**                    | A third-party disk operating system designed for Dragon computers, offering an alternative to the standard RS-DOS.                                             |
| **RS-DOS with Becker port**         | A variant of RS-DOS that supports the Becker port, an additional hardware interface for Dragon computers to enhance functionality.                             |
| **Prológica CP-450**                | A cartridge for the Brazilian Dragon series, adding additional functionality such as memory and I/O capabilities.                                               |
| **Games Master Cartridge**          | A cartridge designed for playing games, offering enhanced performance and additional support for certain game titles.                                          |
| **Orchestra-90 CC**                 | A cartridge designed for the Orchestra-90 sound synthesizer, providing music and sound effects capabilities for compatible Dragon systems.                     |
| **Multi-Pak Interface**             | A hardware expansion that allows multiple cartridges to be connected at once, increasing the functionality of the system by enabling the use of several cartridges.|
| **RACE Computer Expansion Cage**    | An expansion unit designed for the Dragon 32/64, providing additional slots for connecting various peripherals or cartridges.                                   |
| **IDE Interface**                   | This interface allows Dragon computers to connect to IDE devices, such as hard drives or CD-ROM drives, enabling more modern forms of storage.                 |
| **NX32 Memory Cartridge**           | A memory expansion cartridge for the Dragon, offering additional RAM for use by software that requires more memory than the base system provides.               |
| **MOOH Memory Cartridge**           | A memory expansion cartridge designed for the Dragon system, offering enhanced memory capabilities for more demanding applications.                           |

---
