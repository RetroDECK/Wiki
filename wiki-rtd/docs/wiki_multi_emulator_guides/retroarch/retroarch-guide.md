#  RetroArch - General Guide

<img src="../../../wiki_images/logos/retroarch-logo.png" width="75" alt="Retroarch logo">

RetroArch is a multi-emulator that play games with emulator cores.

---

### RetroArch Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Libretro - Docs | [Link](https://docs.libretro.com/) |
| Libretro - Webpage | [Visit](https://www.libretro.com/) |
| RetroArch - Arcade Systems Guide | [Link](https://docs.libretro.com/guides/arcade-getting-started/) |
| RetroArch - BIOS Guide | [Link](https://docs.libretro.com/library/bios/) |
| RetroArch - Cheat Guide | [Link](https://docs.libretro.com/guides/cheat-codes/) |
| RetroArch - Github | [Link](https://github.com/libretro/RetroArch) |
| RetroArch - Navigation Guide | [Link](https://docs.libretro.com/guides/navigating/) |
| RetroArch - Shaders Guide | [Link](https://docs.libretro.com/guides/shaders/) |

---


## Where to put the games?

RetroArch supports a multiple of systems under:

`retrodeck/roms/<multiple>`

RetroDECK follows the ES-DE folder layout:

The `ES-DE User Guide` (above) has an always updated list on what subfolder under `retrodeck/roms/` corresponds to what RetroArch core.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

Different for each system / core.

Check each system on the `RetroArch Docs` and the `ES-DE User Guide` for the latest information (above). 

A general guideline is to use compressed formats:

| File Format | Description | Comments |
|-------------|-------------|----------|
| .zip        | Compressed archive file | For non-disc systems like 8-bit or 16-bit consoles (e.g., NES, SNES) |
| .chd        | Compressed Hunks of Data file | For disc systems (e.g., PlayStation, Sega CD) |

---

## Does RetroArch require BIOS, Game Data or Firmware files?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

It depends on the core, check the links for the most up-to-date information.

**Read more:** 

- [RetroArch - BIOS Guide](https://docs.libretro.com/library/bios/)
- [ES-DE User Guide: Supported Game Systems](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#supported-game-systems)

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type          | Directory                                                         | Comment                                                   |
|:-------------:|:------------------------------------------------------------------|:----------------------------------------------------------|
| BIOS          | `retrodeck/bios/`                                                 |                                                          |
| Borders       | `retrodeck/borders/retroarch/`                                     |                                                          |
| Config        | `~/.var/app/net.retrodeck.retrodeck/config/retroarch/`            |                                                          |
| Cheats        | `retrodeck/cheats/retroarch/`                                     |                                                          |
| Logs          | `retrodeck/logs/retroarch/`                                       |                                                          |
| ROMs          | `retrodeck/roms/<multiple>`                                       |                                                          |
| Saves         | `retrodeck/saves/<multiple>`                                      |                                                          |
| States        | `retrodeck/states/<multiple>`                                     | Save States depends on the core if it has support or not |
| Screenshots   | `retrodeck/screenshots/retroarch/`                                |                                                          |
| Videos        | `retrodeck/videos/retroarch/`                                     |                                                          |
| Shaders       | `retrodeck/shaders/retroarch/`                                    |                                                          |
| Shaders Core  | `retrodeck/shaders/retroarch-core/`                               |                                                          |
| Texture Packs | `retrodeck/texture_packs/retroarch-core/`                          |                                                          |
| Storage       | `retrodeck/storage/retroarch/`                                     |                                                          |


---

## Core List

[RetroArch - Core List](https://github.com/libretro/docs/blob/master/docs/guides/core-list.md)

RetroDECK tries to ship all officially supported RetroArch cores, prioritizing version stability over bleeding edge: **Stable core releases** > **Nightly core builds**.

Nightly cores are used when stable versions unavailable.

---

##  Cores with rewind support

**Note:** Enabling rewinding can cause a big performance hit.

The following cores support the `Rewind` function.

| System/Machine      |    Core     |
|  :---:              |  :---:     |        
|  3DO                | Opera       | 
|  Amstrad - CPC                | Caprice32       | 
|  Amstrad - CPC                | CrocoDS       | 
|  Arcade                | FinalBurn Neo       | 
|  Arcade                | MAME 2003       | 
|  Arcade                | MAME 2003-Plus       | 
|  Arcade                | Arcade (MAME 2010)       | 
|  Atari - 2600                | Stella      | 
|  Atari - 7800                | ProSystem      | 
|  Atari - Lynx                | Beetle Lynx      | 
|  Atari - Lynx                | Handy      | 
|  Bandai                | WonderSwan/Color      | 
|  Commodore - 8-bit               | VICE     | 
|  Commodore - Amiga               | PUAE     | 
|  ColecoVision               | GearColeco     | 
|  DOS               | DOSBox Pure     | 
|  Enterprise - 64/128               | ep128emu     | 
|  Elektronika - BK-0010/BK-0011              | bk     | 
|  Magnavox - Odyssey2  / Phillips - Videopac+             | O2EM     | 
|  Mega Duck / Cougar Boy              | SameDuck     |
|  MSX              | fMSX     |
|  Nintendo - Game Boy / Color              | SameBoy     |
|  Nintendo - Game Boy / Color              | Gambatte     |
|  Nintendo - Game Boy / Color              | TGB Dual     |
|  Nintendo - Game Boy / Color              | Gearboy     |
|  Nintendo - Game Boy Advance              | Beetle GBA     |
|  Nintendo - Game Boy Advance              | gpSP     |
|  Nintendo - Game Boy Advance              | Meteor     |
|  Nintendo - Game Boy Advance              | TempGBA     |
|  Nintendo - Game Boy Advance              | VBA Next     |
|  Nintendo - Game Boy Advance              | VBA-M     |
|  Nintendo - Gamecube/Wii              | Dolphin     |
|  Nintendo - NES / Famicom              | bnes     |
|  Nintendo - NES / Famicom              | FCEUmm     |
|  Nintendo - NES / Famicom              | Mesen     |
|  Nintendo - NES / Famicom              | Nestopia UE     |
|  Nintendo - NES / Famicom              | QuickNES     |
|  Nintendo 64             | Mupen64Plus-Next     |
|  Nintendo - DS              | DeSmuME 2015     |
|  Nintendo - DS              | DeSmuME     |
|  Nintendo - DS              | melonDS     |
|  Nintendo - Pokémon Mini              | PokeMini     |
|  Nintendo - SNES / Famicom               | Beetle bsnes     |
|  Nintendo - SNES / Famicom               | bsnes Accuracy     |
|  Nintendo - SNES / Famicom              | bsnes Balanced    |
|  Nintendo - SNES / Famicom               | bsnes C++98 v085     |
|  Nintendo - SNES / Famicom              | bsnes Performance     |
|  Nintendo - SNES / Famicom               | bsnes-mercury Accuracy     |
|  Nintendo - SNES / Famicom               | bsnes-mercury Balanced     |
|  Nintendo - SNES / Famicom               | bsnes-mercury Performanced     |
|  Nintendo - SNES / Famicom               | higan Accuracy     |
|  Nintendo - SNES / Famicom               | nSide Balance     |
|  Nintendo - SNES / Famicom               | Snes9x 2002     |
|  Nintendo - SNES / Famicom               | Snes9x 2005      |
|  Nintendo - SNES / Famicom               | Snes9x 2005 Plus   |
|  Nintendo - SNES / Famicom               | Snes9x 2010     |
|  Nintendo - SNES / Famicom               | Snes9x     |
|  Nintendo - SNES / SFC / Game Boy / Color              | Mesen-S     |
|  Nintendo - Virtual Boy              | Beetle VB     |
|  NEC PC-8000 / PC-8800 series              | QUASI88     |
|  NEC - PC-98             | Neko Project II Kai     |
|  NEC - PC Engine SuperGrafxy              | Beetle SuperGrafx     |
|  NEC - PC Engine / CD             | Beetle PCE FAS     |
|  NEC - PC-FX              | Beetle PC-FX     |
|  Thomson - MO/TO             | Theodore    |
|  SEGA - MS/GG             | SMS Plus GX    |
|  SEGA - MS/GG             | Gearsystem    |
|  SEGA - MS/GG/MD/CD             | Genesis Plus GX    |
|  SEGA - MS/MD/CD/32X             | PicoDrive    |
|  SEGA - Saturn             | Beetle Saturn    |
|  Neo Geo AES / MVS            | Geolith    |
|  Neo Geo Pocket / Color             | Beetle NeoPop    |
|  Neo Geo Pocket / Color             | RACE   |
|  PlayStation             | Beetle PSX   |
|  PlayStation             | Beetle PSX HW   |
|  PlayStation             | PCSX ReARMed   |
|  Vectrex             | vecx   |
| ZX 81             | EightyOne    |
|   ZX Spectrum            | Fuse    |

---

## How-to: Enable AI Translation in RetroArch 

1. **Launch RetroArch** via RetroDeck Configurator.  
2. **Enable AI Service:** `Settings → AI Service → AI Service Enabled = ON`.  
3. **Set Service URL:** `Settings → AI Service → Service URL` → paste a working endpoint (e.g., ZTranslate). Ensure network access.  
4. **Choose Output:** `Settings → AI Service → Output` → select Text Overlay, Widgets, Narrator, or a combination.  
5. **Bind Hotkey:** `Settings → Input → Hotkey Binds` → assign a button for AI activation.  
6. **Test:** Load a game, press hotkey to show translation; press again to clear.  
7. **Save Configuration:** `Settings → Configuration → Save Current Configuration`.

---

## FAQ: RetroArch

| **Question** | **Answer** |
|--------------|------------|
| **How do I remove black bars in certain games?** | Black bars in certain games could be due to internal video processing. Navigate to **Settings → Video → Scaling →> Aspect Ratio**. Set to **Custom**, adjust parameters to fill the screen, then save via **Overrides → Save Game Overrides**. |
| **How do I fix scrambled text in certain N64 games?** | Scrambled text could in N64 games could be caused by texture caching issues. While in-game, open the **Quick Menu** → **Core Options → GLideN64** and set **Cache Textures** to **Off**. Then go to **Manage Core Options** and click **Save Game Options** to apply this setting only for this title. |
| **Steam Deck: How do I resolve a 30fps cap on certain games?** | A 30fps limit might be the cause of the rewind feature. Disable it by opening the **Quick Menu** → **Settings → Frame Throttling → Rewind** and turning it **Off**. Apply the change globally for all titles via **Overrides → Save Core Overrides**. |
| **Steam Deck: Why am I experiencing slowdown or stuttering?** | RetroArch requires the Steam Deck to run at 60Hz. If you experience slowdown, press the three dots button and go to the **Battery (Performance)** section and ensure both **Framerate Limit** and **Refresh Rate** are set to **60**. |

---

## Troubleshooting

| Topic | Issue | Solution |
|---|---|---|
| **m3u Save Files Locations** | Multi-file game saves location bug.|  Issue tracked on GitHub: *libretro bug 17589*. |
| **Keyboard and Controller conflict** | Keyboard and Controller conflict in certain PC Linux Desktop Enviroments. |  `Settings` →  `Input` → `Autoconfig` and set to `OFF`  |
| **UI overscales on Fullscreen** | UI overscales on Wayland when OS scaling >100% on Vulkan.. |  Open RA via **RetroDECK Configurator**.<br>Go to **Settings → Video → Output → Video Driver** → switch from **Vulkan** to **GL**.<br>Then **Main Menu → Configuration File → Save Current Configuration** and exit RA. |