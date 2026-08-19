# ES-DE Development: Platform Scraper Mapping  

## Overview

ES-DE uses the `<platform>` value in each system definition to determine which platform identifiers are supplied to its scrapers.

A system may specify one or more platform identifiers:

```
ES-DE system definition
        │
        ▼
<platform>pc, pcwindows</platform>
        │
        ▼
ES-DE platform identifiers
        │
        ├── pc
        └── pcwindows
        │
        ▼
Scraper-specific mapping
        │
        ├── ScreenScraper → systemeid
        └── GamesDB       → platform ID

```

The comma-separated values are ES-DE platform identifiers.

## Platform to ID List

| System | ES-DE Platform | ScreenScraper ID | GamesDB ID |
|---|---|---:|---:|
| 3DO Interactive Multiplayer | `3do` | 29 | 25 |
| Acorn Archimedes | `archimedes` | 84 | 4944 |
| Acorn Electron | `electron` | 85 | 4954 |
| Amstrad CPC | `amstradcpc` | 65 | 4914 |
| Android | `android` | 63 | 4916 |
| Apple II | `apple2` | 86 | 4942 |
| Apple IIGS | `apple2gs` | 217 | — |
| Apple Macintosh | `macintosh` | 146 | 37 |
| Arcade | `arcade` | 75 | 23 |
| Arcadia 2001 | `arcadia` | 94 | 4963 |
| Arduboy | `arduboy` | 263 | — |
| Atari 2600 | `atari2600` | 26 | 22 |
| Atari 5200 | `atari5200` | 40 | 26 |
| Atari 7800 | `atari7800` | 41 | 27 |
| Atari 800 | `atari800` | 43 | 4943 |
| Atari Jaguar | `atarijaguar` | 27 | 28 |
| Atari Jaguar CD | `atarijaguarcd` | 171 | 29 |
| Atari Lynx | `atarilynx` | 28 | 4924 |
| Atari ST | `atarist` | 42 | 4937 |
| Atari XE | `atarixe` | 43 | 30 |
| Atomiswave | `atomiswave` | 53 | 23 |
| Bally Astrocade | `astrocde` | 44 | 4968 |
| Bandai SuFami Turbo | `sufami` | 108 | 6 |
| Bandai WonderSwan | `wonderswan` | 45 | 4925 |
| Bandai WonderSwan Color | `wonderswancolor` | 46 | 4926 |
| BBC Micro | `bbcmicro` | 37 | 5013 |
| Bit Corporation Gamate | `gamate` | 266 | 5004 |
| Casio PV-1000 | `pv1000` | 74 | 4964 |
| ColecoVision | `colecovision` | 48 | 31 |
| Commodore 64 | `c64` | 66 | 40 |
| Commodore Amiga | `amiga` | 64 | 4911 |
| Commodore Amiga CD32 | `amigacd32` | 130 | 4947 |
| Commodore CDTV | `cdtv` | 129 | — |
| Commodore Plus/4 | `plus4` | 99 | 5007 |
| Commodore VIC-20 | `vic20` | 73 | 4945 |
| Creatronic Mega Duck | `megaduck` | 90 | 4948 |
| Daphne | `daphne` | 49 | 23 |
| DOS / PC | `dos` | 135 | 1 |
| Dragon 32 | `dragon32` | 91 | 4952 |
| EasyRPG | `easyrpg` | 231 | — |
| Epoch Super Cassette Vision | `scv` | 67 | — |
| Fairchild Channel F | `channelf` | 80 | — |
| FM-7 | `fm7` | 97 | 4978 |
| FM Towns | `fmtowns` | 253 | 4932 |
| Future Pinball | `fpinball` | 199 | — |
| Game Boy | `gb` | 9 | 4 |
| Game Boy Advance | `gba` | 12 | 5 |
| Game Boy Color | `gbc` | 10 | 41 |
| Game Master | `gmaster` | 103 | — |
| Game.com | `gamecom` | 121 | 4940 |
| Game & Watch | `gameandwatch` | 52 | 4950 |
| Genesis | `genesis` | 1 | 18 |
| Google Android | `android` | 63 | 4916 |
| Intellivision | `intellivision` | 115 | 32 |
| J2ME | `j2me` | 302 | 5018 |
| LCD Games | `lcdgames` | 75 | 4951 |
| LowRes NX | `lowresnx` | 244 | — |
| Lutro | `lutro` | 206 | — |
| Microsoft Windows | `pcwindows` | 138 | 1 |
| Microsoft Windows 3.x | `windows3x` | 136 | 1 |
| Microsoft Xbox | `xbox` | 32 | 14 |
| Microsoft Xbox 360 | `xbox360` | 33 | 15 |
| Microsoft Xbox One | `xboxone` | 34 | — |
| MSX | `msx` | 113 | 4929 |
| MSX2 | `msx2` | 116 | 4929 |
| MSX Turbo R | `msxturbor` | 118 | 4929 |
| Mega Duck | `megaduck` | 90 | 4948 |
| Neo Geo | `neogeo` | 142 | 24 |
| Neo Geo CD | `neogeocd` | 70 | 4956 |
| Neo Geo Pocket | `ngp` | 25 | 4922 |
| Neo Geo Pocket Color | `ngpc` | 82 | 4923 |
| NEC PC Engine | `pcengine` | 31 | 34 |
| NEC PC Engine CD | `pcenginecd` | 114 | 4955 |
| NEC PC-FX | `pcfx` | 72 | 4930 |
| NEC PC-8800 | `pc88` | 221 | 4933 |
| NEC PC-9800 | `pc98` | 208 | 4934 |
| NEC SuperGrafx | `supergrafx` | 105 | 34 |
| Nintendo 3DS | `n3ds` | 17 | 4912 |
| Nintendo 64 | `n64` | 14 | 3 |
| Nintendo DS | `nds` | 15 | 8 |
| Nintendo Entertainment System | `nes` | 3 | 7 |
| Nintendo Famicom | `famicom` | 3 | 7 |
| Nintendo Famicom Disk System | `fds` | 106 | 4936 |
| Nintendo Game Boy | `gb` | 9 | 4 |
| Nintendo Game Boy Advance | `gba` | 12 | 5 |
| Nintendo Game Boy Color | `gbc` | 10 | 41 |
| Nintendo GameCube | `gc` | 13 | 2 |
| Nintendo Game & Watch | `gameandwatch` | 52 | 4950 |
| Nintendo Pokémon Mini | `pokemini` | 211 | 4957 |
| Nintendo Satellaview | `satellaview` | 107 | 6 |
| Nintendo Super Game Boy | `sgb` | 127 | 4 |
| Nintendo Switch | `switch` | 225 | 4971 |
| Nintendo Virtual Boy | `virtualboy` | 11 | 4918 |
| Nintendo Wii | `wii` | 16 | 9 |
| Nintendo Wii U | `wiiu` | 18 | 38 |
| Nokia N-Gage | `ngage` | 30 | 4938 |
| Odyssey² / Videopac | `odyssey2` | 104 | 4927 |
| OpenBOR | `openbor` | 214 | — |
| Oric | `oric` | 131 | 4986 |
| Palm OS | `palm` | 219 | — |
| PC | `pc` | 135 | 1 |
| PC-88 | `pc88` | 221 | 4933 |
| PC-98 | `pc98` | 208 | 4934 |
| PICO-8 | `pico8` | 234 | — |
| Philips CD-i | `cdimono1` | 133 | 4917 |
| PlayStation | `psx` | 57 | 10 |
| PlayStation 2 | `ps2` | 58 | 11 |
| PlayStation 3 | `ps3` | 59 | 12 |
| PlayStation 4 | `ps4` | 60 | 4919 |
| PlayStation Portable | `psp` | 61 | 13 |
| PlayStation Vita | `psvita` | 62 | 39 |
| SAM Coupé | `samcoupe` | 213 | 4979 |
| ScummVM | `scummvm` | 123 | 1 |
| Sega 32X | `sega32x` | 19 | 33 |
| Sega CD | `segacd` | 20 | 21 |
| Sega Dreamcast | `dreamcast` | 23 | 16 |
| Sega Game Gear | `gamegear` | 21 | 20 |
| Sega Genesis | `genesis` | 1 | 18 |
| Sega Master System | `mastersystem` | 2 | 35 |
| Sega Mega Drive | `megadrive` | 1 | 36 |
| Sega NAOMI | `naomi` | 56 | 23 |
| Sega Pico | `segapico` | 250 | 4958 |
| Sega Saturn | `saturn` | 22 | 17 |
| Sega SG-1000 | `sg-1000` | 109 | 4949 |
| Sharp X1 | `x1` | 220 | 4977 |
| Sharp X68000 | `x68000` | 79 | 4931 |
| Sinclair ZX Spectrum | `zxspectrum` | 76 | 4913 |
| Sinclair ZX81 | `zx81` | 77 | 5010 |
| Solarus | `solarus` | 223 | — |
| Spectravideo | `spectravideo` | 218 | — |
| SNES | `snes` | 4 | 6 |
| SNES MSU-1 | `snes-msu1` | 210 | — |
| Super Nintendo | `snes` | 4 | 6 |
| Supervision | `supervision` | 207 | 4959 |
| Tandy Color Computer | `coco` | 144 | 4941 |
| Tandy TRS-80 | `trs-80` | 144 | 4941 |
| Texas Instruments TI-99 | `ti99` | 205 | 4953 |
| Thomson MO/TO | `moto` | 141 | — |
| TIC-80 | `tic80` | 222 | — |
| Tiger Game.com | `gamecom` | 121 | 4940 |
| Uzebox | `uzebox` | 216 | — |
| Valve Steam | `steam` | 138 | 1 |
| Vectrex | `vectrex` | 102 | 4939 |
| Vircon32 | `vircon32` | 272 | — |
| Visual Pinball | `vpinball` | 198 | — |
| VTech CreatiVision | `crvision` | 241 | 5005 |
| VTech V.Smile | `vsmile` | 120 | 4988 |
| Watara Supervision | `supervision` | 207 | 4959 |
| WASM-4 | `wasm4` | 262 | — |
| Windows 3.x | `windows3x` | 136 | 1 |
| WonderSwan | `wonderswan` | 45 | 4925 |
| WonderSwan Color | `wonderswancolor` | 46 | 4926 |
| Xbox | `xbox` | 32 | 14 |
| Xbox 360 | `xbox360` | 33 | 15 |
| Xbox One | `xboxone` | 34 | — |
| Z-machine | `zmachine` | 215 | — |
| ZX Spectrum | `zxspectrum` | 76 | 4913 |
| ZX81 | `zx81` | 77 | 5010 |
