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

| System / Platform                     | Experimental | Path                     |
|--------------------------------------|:------------:|--------------------------|
| 32X                                  | No           | roms/sega32x/            |
| Arcade                               | No           | roms/arcade/             |
| Atari 2600                           | Yes          | roms/atari2600/          |
| ColecoVision                         | No           | roms/colecovision/       |
| Famicom Disk System                  | No           | roms/fds/                |
| Game Boy                             | No           | roms/gb/                 |
| Game Boy Advance                     | No           | roms/gba/                |
| Game Boy Color                       | No           | roms/gbc/                |
| Game Gear                            | No           | roms/gamegear/           |
| Master System / Mark III             | No           | roms/mastersystem/       |
| Mega CD                              | No           | roms/segacd/             |
| Mega Drive / Genesis                 | No           | roms/genesis/            |
| MSX                                  | Yes          | roms/msx/                |
| MSX2                                 | Yes          | roms/msx2/               |
| My Vision                            | No           | roms/arcade/             |
| NES / Famicom                        | No           | roms/nes/                |
| Neo Geo (AES/MVS)                    | Yes          | roms/arcade/             |
| Neo Geo Pocket                       | No           | roms/ngp/                |
| Neo Geo Pocket Color                 | No           | roms/ngpc/               |
| Nintendo 64                          | No           | roms/n64/                |
| Nintendo 64DD                        | No           | roms/n64dd/              |
| PC-Engine / TurboGrafx               | No           | roms/pcengine/           |
| PC-Engine CD / TurboGrafx CD         | Yes          | roms/pcenginecd/         |
| PC-Engine SuperGrafx                 | No           | roms/supergrafx/         |
| PlayStation                          | Yes          | roms/psx/                |
| Pocket Challenge V2                  | No           | roms/supervision/  |
| Satellaview                          | No           | roms/satellaview/               |
| SG-1000                              | No           | roms/sg-1000/            |
| SNES / Super Famicom                 | No           | roms/snes/               |
| SuFami Turbo                         | No           | roms/sufami/               |
| Super GameBoy                        | No           | roms/sgb/               |
| WonderSwan                           | No           | roms/wonderswan/         |
| WonderSwan Color                     | No           | roms/wonderswancolor/    |
| ZX Spectrum                          | Yes          | roms/zxspectrum/         |


---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

Different for each system.

Check each system on the `ares Website` for the latest information (above). 

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
| Config        | `~/.var/app/net.retrodeck.retrodeck/data/ares/`            |                                                          |
| Logs          | `retrodeck/logs/ares/`                                       |                                                          |
| ROMs          | `retrodeck/roms/<multiple>`                                       |                                                          |
| Saves         | `retrodeck/saves/ares/`                                    |                                                          |
| Screenshots   | `retrodeck/screenshots/ares/`                                |                                                          |


---

