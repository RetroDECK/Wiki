#  ares - General Guide

<img src="../../../wiki_images/logos/ares-logo.png" width="75">

ares is a multi-emulator.

---

### ares Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| ares - Website | [Link](https://ares-emu.net/) |
| ares - Compabilty | [Link](https://ares-emu.net/compatibility) |
| ares - Github | [Link](https://github.com/ares-emulator/ares) |

---


## Where to put the games?

ares supports a multiple of systems under:

`retrodeck/roms/<multiple>`

RetroDECK follows the ES-DE folder layout:

The `ES-DE User Guide` (above) has an always updated list on what subfolder under `retrodeck/roms/` corresponds to what ares core.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

Different for each system / core.

Check each system on the `ares Docs` and the `ES-DE User Guide` for the latest information (above). 

A general guideline is to use compressed formats:

| File Format | Description | Comments |
|-------------|-------------|----------|
| .zip        | Compressed archive file | For non-disc systems like 8-bit or 16-bit consoles (e.g., NES, SNES) |
| .chd        | Compressed Hunks of Data file | For disc systems (e.g., PlayStation, Sega CD) |

---

## Does ares require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, but not for all systems. The following need BIOS:

| Emulator              | Type            | Region |
|-----------------------|-----------------|--------|
| ColecoVision          | BIOS            | World  |
| Famicom Disk System   | BIOS            | Japan  |
| Game Boy Advance      | BIOS            | World  |
| Game Gear             | BIOS            | World  |
| LaserActive (NEC PAC) | PAC-N10         | US     |
| LaserActive (NEC PAC) | PAC-N1          | Japan  |
| LaserActive (NEC PAC) | PCE-LP1         | Japan  |
| LaserActive (NEC PAC) | System Card 1.0 | Japan  |
| LaserActive (NEC PAC) | Games Express   | Japan  |
| LaserActive (SEGA PAC)| BIOS            | US     |
| LaserActive (SEGA PAC)| BIOS            | Japan  |
| Master System         | BIOS            | US     |
| Master System         | BIOS            | Japan  |
| Master System         | BIOS            | Europe |
| Mega CD               | BIOS            | US     |
| Mega CD               | BIOS            | Japan  |
| Mega CD               | BIOS            | Europe |
| MSX                   | BIOS            | Japan  |
| MSX2                  | MAIN            | Japan  |
| MSX2                  | SUB             | Japan  |
| Neo Geo AES           | BIOS            | World  |
| Neo Geo MVS           | BIOS            | World  |
| Neo Geo Pocket        | BIOS            | World  |
| Neo Geo Pocket Color  | BIOS            | World  |
| Nintendo 64DD         | BIOS            | Japan  |
| Nintendo 64DD         | BIOS            | US     |
| Nintendo 64DD         | BIOS            | DEV    |
| PC Engine CD          | System Card 1.0 | Japan  |
| PC Engine CD          | System Card 3.0 | Japan  |
| PC Engine CD          | System Card 3.0 | US     |
| PC Engine CD          | Games Express   | Japan  |
| PlayStation           | BIOS            | US     |
| PlayStation           | BIOS            | Japan  |
| PlayStation           | BIOS            | Europe |
| SuperGrafx CD         | Arcade Card     | Japan  |



---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type          | Directory                                                         | Comment                                                   |
|:-------------:|:------------------------------------------------------------------|:----------------------------------------------------------|
| BIOS          | `retrodeck/bios/`                                                 |                                                          |
| Borders       | `retrodeck/borders/ares/`                                     |                                                          |
| Config        | `~/.var/app/net.retrodeck.retrodeck/config/ares/`            |                                                          |
| Cheats        | `retrodeck/cheats/ares/`                                     |                                                          |
| Logs          | `retrodeck/logs/ares/`                                       |                                                          |
| ROMs          | `retrodeck/roms/<multiple>`                                       |                                                          |
| Saves         | `retrodeck/saves/<multiple>`                                      |                                                          |
| States        | `retrodeck/states/<multiple>`                                     | Save States depends on the core if it has support or not |
| Screenshots   | `retrodeck/screenshots/ares/`                                |                                                          |
| Videos        | `retrodeck/videos/ares/`                                     |                                                          |
| Shaders       | `retrodeck/shaders/ares/`                                    |                                                          |


---

## What systems does ares support?

Always check the ares website [Link](https://ares-emu.net/) for the most up to date list.

| System / Platform                     | Experimental |
|--------------------------------------|:-------------:|
| Arcade                               | No            |
| Atari 2600                           | Yes           |
| WonderSwan                           | No            |
| WonderSwan Color                     | No            |
| Pocket Challenge V2                  | No            |
| ColecoVision                         | No            |
| MSX                                  | Yes           |
| MSX2                                 | Yes           |
| PC-Engine / TurboGrafx               | No            |
| PC-Engine CD / TurboGrafx CD         | Yes           |
| PC-Engine SuperGrafx                 | No            |
| My Vision                            | No            |
| NES / Famicom                        | No            |
| Famicom Disk System                  | No            |
| Game Boy                             | No            |
| SNES / Super Famicom                 | No            |
| Satellaview                          | No            |
| Nintendo 64                          | No            |
| SuFami Turbo                         | No            |
| Game Boy Color                       | No            |
| Nintendo 64DD                        | No            |
| Game Boy Advance                     | No            |
| SG-1000                              | No            |
| Master System / Mark III             | No            |
| Mega Drive / Genesis                 | No            |
| Game Gear                            | No            |
| Mega CD                              | No            |
| 32X                                  | No            |
| ZX Spectrum                          | Yes           |
| Neo Geo (AES/MVS)                    | Yes           |
| Neo Geo Pocket                       | No            |
| Neo Geo Pocket Color                 | No            |
| PlayStation                          | Yes           |
