# Guide: FS-UAE

<img src="../../../wiki_images/logos/fs-uae-logo.png" width="150" alt="Fs Uae logo">

FS-UAE is a Amiga emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### FS-UAE Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| FS-UAE Website | [Link](https://fs-uae.net/) |
| FS-UAE Docs | [Link](https://fs-uae.net/docs/) |
| FS-UAE Github | [Link](https://github.com/FrodeSolheim/fs-uae) |
| FS-UAE Known Issues | [Link](https://fs-uae.net/known-issues/) |
| AmigaForever | [Link](https://www.amigaforever.com/) |
| AmigaVision Launcher | [Link](https://amiga.vision/) |
| Amiga.org Forum | [Link](https://forum.amiga.org) |



---

## Where to put the games?

Amiga games should be put under the `retrodeck/roms/amiga/` directory is the **recommended** default.

Amiga 600 games can be put under the `retrodeck/roms/amiga600/` directory.

Amiga 1200 games can be put under the `retrodeck/roms/amiga1200/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| File Format | Description |
| ----------- | ----------- |
| .7z         | 7-Zip archive |
| .adf        | Amiga Disk File |
| .adz        | Compressed Amiga Disk File |
| .ccd        | CloneCD disc image |
| .chd        | Compressed Hunks of Data image |
| .cue        | Cue sheet |
| .dms        | Disk Masher System image |
| .fdi        | Floppy Disk Image |
| .hdf        | Amiga Hard Disk File |
| .hdz        | Compressed HDF hard disk image |
| .ipf        | Interchangeable Preservation Format |
| .iso        | ISO disc image |
| .lha        | LHA archive |
| .m3u        | Media playlist |
| .mds        | Media Descriptor file |
| .nrg        | Nero disc image |
| .rp9        | Amiga RP9 package |
| .uae        | UAE configuration file |
| .zip        | ZIP archive |

---

## Does FS-UAE require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes, these are recommended by the official website:

| System | ROM File | Comments |
|------|---------|----------|
| Amiga 500 | Kickstart v1.3 r34.5 (1987)(Commodore)(A500-A1000-A2000-CDTV)[!].rom  |  |
| Amiga 500 | amiga-os-130.rom |  |
| Amiga 500 | Kickstart v1.3 r34.5 (1987)(Commodore)(A500-A1000-A2000-CDTV)[o].rom |  |
| Amiga 500+ | amiga-os-204.rom |  |
| Amiga 600 | amiga-os-205.rom |  |
| Amiga 1200 | amiga-os-310-a1200.rom |  |
| Amiga 3000 | amiga-os-310-a3000.rom |  |
| Amiga 4000 | Kickstart v3.1 r40.68 (1993)(Commodore)(A4000).rom  | **Recommended** |
| Amiga 4000 | amiga-os-310.rom |  |
| Amiga 1000 | amiga-os-120.rom |  |
| Amiga CD32 | amiga-os-310-cd32.rom   | **Recommended** |
| Amiga CD32 | amiga-ext-310-cd32.rom  (Recommended)| **Recommended** |
| Commodore CDTV | amiga-ext-130-cdtv.rom | Requires Amiga 500 Kickstart |
| Action Replay Mk II | Action Replay Mk II v2.14.rom |  |
| Action Replay Mk II | Action Replay Mk II v2.14 (1991)(Datel Electronics)[m].rom |  |
| Action Replay Mk III | Action Replay Mk III v3.17.rom |  |
| Action Replay Mk III | Action Replay Mk III v3.17 (1991)(Datel Electronics)[m].rom |  |


### Where to put the BIOS files?

In `retrodeck/bios/` 


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

|       Type      | Directory                                  | Comment               |
| :-------------: | :----------------------------------------- | :-------------------- |
|   AmigaVision   | `retrodeck/storage/FS-UAE/AmigaVision`     |                       |
|       BIOS      | `retrodeck/bios/`                           |                       |
|     CD-ROMs     | `retrodeck/storage/FS-UAE/CD-ROMs`         |                       |
|  Configurations | `retrodeck/storage/FS-UAE/Configurations`  |                       |
|   Controllers   | `retrodeck/storage/FS-UAE/Controllers`     |                       |
|      Covers     | `retrodeck/storage/FS-UAE/Covers`          |                       |
|      Custom     | `retrodeck/storage/FS-UAE/Custom`          | RetroDECKs `custom-XXX.fs-uae` files                     |
|   Flash Memory  | `retrodeck/storage/FS-UAE/Flash Memory`    |                       |
|     Floppies    | `retrodeck/storage/FS-UAE/Floppies`        |                       |
| Floppy Overlays | `retrodeck/storage/FS-UAE/Floppy Overlays` |                       |
|   Hard Drives   | `retrodeck/storage/FS-UAE/Hard Drives`     |                       |
|      Logs       | `retrodeck/logs/FS-UAE/`                   |                       |
|   Logs Cache    | `retrodeck/logs/FS-UAE/Cache/Logs/`        |                       |
|      ROMs       | `retrodeck/roms/amiga/`                    |                       |
|   Save States   | `retrodeck/states/amiga/FS-UAE/`           |                       |
|      System     | `retrodeck/storage/FS-UAE/System`          | `CAPSImg` `QEMU-UAE`  |
|      Themes     | `retrodeck/storage/FS-UAE/Themes`          |                       |
|      Titles     | `retrodeck/storage/FS-UAE/Titles`          |                       |

---

## Controls: Keyboard Shortcuts

| **Shortcut** | **Action** |
| :--- | :--- |
| <kbd>Alt</kbd> + <kbd>,</kbd> | Decrease volume |
| <kbd>Alt</kbd> + <kbd>.</kbd> | Increase volume |
| <kbd>Alt</kbd> + <kbd>Arrow Keys</kbd> | Emulate Amiga joystick cursor |
| <kbd>Alt</kbd> + <kbd>B</kbd> | Toggle extra visible border |
| <kbd>Alt</kbd> + <kbd>C</kbd> | Activate cartridge |
| <kbd>Alt</kbd> + <kbd>D</kbd> | Open debugger |
| <kbd>Alt</kbd> + <kbd>F</kbd> / <kbd>Alt</kbd> + <kbd>Enter</kbd> | Toggle fullscreen |
| <kbd>Alt</kbd> + <kbd>F4</kbd> | Exit FS-UAE |
| <kbd>Alt</kbd> + <kbd>F9</kbd> | Toggle chipset/RTG display |
| <kbd>Alt</kbd> + <kbd>G</kbd> | Release/acquire input grab |
| <kbd>Alt</kbd> + <kbd>K</kbd> | Enable full keyboard emulation |
| <kbd>Alt</kbd> + <kbd>M</kbd> | Toggle audio mute |
| <kbd>Alt</kbd> + <kbd>N</kbd> | Toggle floppy-sound mute |
| <kbd>Alt</kbd> + <kbd>P</kbd> / <kbd>Pause</kbd> | Toggle pause |
| <kbd>Alt</kbd> + <kbd>Q</kbd> | Exit FS-UAE |
| <kbd>Alt</kbd> + <kbd>R</kbd> | Soft reset |
| <kbd>Alt</kbd> + <kbd>S</kbd> / <kbd>Print Scrn</kbd> | Save screenshot |
| <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>K</kbd> | Disable full keyboard emulation |
| <kbd>Alt</kbd> + <kbd>T</kbd> | Hard reset |
| <kbd>Alt</kbd> + <kbd>Tab</kbd> | Switch window/release input grab |
| <kbd>Alt</kbd> + <kbd>W</kbd> | Toggle warp mode |
| <kbd>Alt</kbd> + <kbd>Z</kbd> / <kbd>F11</kbd> | Cycle zoom modes |
| <kbd>Ctrl</kbd> + <kbd>F10</kbd> | Toggle performance/FPS display |
| <kbd>F12</kbd> | Open/close FS-UAE menu |
| <kbd>Tab</kbd> | Toggle net-play chat |

---

## RetroDECK: Custom Amiga Profiles

FS-UAE provides many options for configuring Amiga hardware through `.fs-uae` profiles. RetroDECK cannot ship a profile for every possible Amiga hardware configuration in existence.

### Custom Profile Locations

RetroDECK provides three custom profiles that you can modify if you have the necessary knowledge and experience:

| **Profile** | **Profile Location** | **Corresponding ROM Directory** | **Comments** |
|---|---|---|---|
| `custom-amiga.fs-uae` | `retrodeck/storage/FS-UAE/Custom/` | `retrodeck/roms/amiga/` | Custom Amiga profile |
| `custom-amiga600.fs-uae` | `retrodeck/storage/FS-UAE/Custom/` | `retrodeck/roms/amiga600/` | Custom Amiga 600 profile |
| `custom-amiga1200.fs-uae` | `retrodeck/storage/FS-UAE/Custom/` | `retrodeck/roms/amiga1200/` | Custom Amiga 1200 profile |

Edit the profile you want to use with a text editor, make your changes and save the file.

### Using a Custom Profile in ES-DE

1. Launch RetroDECK.
2. In ES-DE, navigate to **Amiga**, **Amiga 600**, or **Amiga 1200**.
3. Select the game you want to configure.
4. Press **Select** or **F1** to open **Edit This Game's Metadata**.
5. Select **Alternative Emulator**.
6. Choose **FS-UAE (Standalone) Custom**.
7. Save the changes.
8. Launch the game.

The game will use the corresponding custom FS-UAE profile from:

`retrodeck/storage/FS-UAE/Custom/`

---