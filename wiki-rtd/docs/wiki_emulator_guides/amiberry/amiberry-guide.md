# Guide: Amiberry

<img src="../../../wiki_images/logos/amiberry-logo.png" width="75" alt="Amiberry logo">

Amiberry is a Commodore Amiga emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Amiberry Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Amiberry Website | [Link](https://amiberry.com/) |
| Amiberry Docs | [Link](https://github.com/BlitterStudio/amiberry/wiki/) |
| Amiberry Github | [Link](https://github.com/BlitterStudio/amiberry) |
| Amiberry Known Issues | [Link](https://github.com/BlitterStudio/amiberry/wiki/Troubleshooting) |
| AmigaForever | [Link](https://www.amigaforever.com/) |
| AmigaVision Launcher | [Link](https://amiga.vision/) |
| Amiga.org Forum | [Link](https://forum.amiga.org/) |


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

## Does Amiberry require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes, these are recommended by the official website:

| System | Version | ROM File | Comments |
| :--- | :--- | :--- | :--- |
| Amiga 500 | Kickstart v1.3 r34.5 | `kick34005.A500` | **Required**** for WHDLoad Auto-Booter |
| Amiga 600 | Kickstart v2.05 r37.350 | `kick37350.A600` | **Required** for WHDLoad Auto-Booter |
| Amiga 1200 | Kickstart v3.1 r40.68 | `kick40068.A1200` | **Required** for WHDLoad Auto-Booter |
| Amiga 500 | Kickstart v1.2 r33.180 | `kick33180.A500` | Additional compatibility |
| Amiga 4000 | Kickstart v3.1 r40.68 | `kick40068.A4000` | Additional compatibility |
| Amiga CD32 | Kickstart v3.1 r40.60 | `kick40060.CD32` | CD32 Kickstart |
| Amiga CD32 | Extended-ROM r40.60 | `ext40060.CD32` | CD32 Extended-ROM |
| AmigaVision | Renamed Kickstart v3.1 r40.68 | `AmigaVison.rom` | **Required** for AmigaVision |


### Where to put the BIOS files?

In `retrodeck/bios/` 


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

|       Type      | Directory                                      | Comment |
| :-------------: | :--------------------------------------------- | :------ |
|     Bezels      | `retrodeck/borders/Amiberry/Bezels`            |         |
|     CD-ROMs     | `retrodeck/storage/Amiberry/CD-ROMs`           |         |
|  Configurations | `retrodeck/storage/Amiberry/Configurations`   |         |
|    Floppies     | `retrodeck/storage/Amiberry/Floppies`          |         |
|  Hard Drives    | `retrodeck/storage/Amiberry/HardDrives`        |         |
|      LHA        | `retrodeck/storage/Amiberry/LHA`               |         |
|      Logs       | `retrodeck/logs/Amiberry`                      |         |
|     NVRAM       | `retrodeck/storage/Amiberry/NVRAM`             |         |
|      ROMS        | `retrodeck/bios`                               |         |
|      RP9        | `retrodeck/storage/Amiberry/RP9`               |         |
|  Save Images    | `retrodeck/storage/Amiberry/SaveImages`        |         |
|   Screenshots   | `retrodeck/screenshots/Amiberry`              |         |
|     Shaders     | `retrodeck/shaders/Amiberry/Shaders`           |         |
|     States      | `retrodeck/states/amiga/Amiberry`             |         |
|     Themes      | `retrodeck/storage/Amiberry/Visuals/Themes`    |         |
|     Videos      | `retrodeck/videos/Amiberry`                   |         |
|    WHDBoot      | `retrodeck/storage/Amiberry/WHDBoot`           |         |


---

## Controls: Keyboard Shortcuts

| **Shortcut** | **Action** |
| :--- | :--- |
| <kbd>F12</kbd> | Open/close Amiberry GUI |
| <kbd>Pause</kbd> | Activate Action Replay / HRTMon |
| <kbd>Ctrl</kbd> +  <kbd>Alt</kbd>| Release Mouse Lock|

---
