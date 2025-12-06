#  RetroArch - General Guide

<img src="../../../wiki_images/logos/retroarch-logo.png" width="75">

RetroArch is a multi-emulator that play games with emulator cores.

---

### RetroArch Links

[Libretro - Webpage](https://www.libretro.com//)

[Libretro - Docs](https://docs.libretro.com/)

[RetroArch - Github](https://github.com/libretro/RetroArch)

[ES-DE User Guide: Supported Game Systems](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#supported-game-systems)

---

### RetroArch Docs - Guide Links

Here follows various quick bookmarks to specific section of the RetroArch Docs that is good to read and always updated with the lastest information.

[RetroArch - BIOS Guide](https://docs.libretro.com/library/bios/)

[RetroArch - Navigation Guide](https://docs.libretro.com/guides/navigating/)

[RetroArch - Cheat Guide](https://docs.libretro.com/guides/cheat-codes/)

[RetroArch - Arcade Systems Guide](https://docs.libretro.com/guides/arcade-getting-started/)

[RetroArch - Shaders Guide](https://docs.libretro.com/guides/shaders/)

---


## Where to put the games?

RetroArch supports a multiple of systems under:

`retrodeck/roms/<multiple>`

RetroDECK follows the ES-DE folder layout:

The `ES-DE User Guide` (above) has an always updated list on what subfolder under `retrodeck/roms/` corresponds to what RetroArch core.

---

## What file formats are supported?

Different for each system / core.

Check each system on the `RetroArch Docs` and the `ES-DE User Guide` for the latest information (above). 

A general guideline is to use compressed formats:

| File Format | Description | Comments |
|-------------|-------------|----------|
| .zip        | Compressed archive file | For non-disc systems like 8-bit or 16-bit consoles (e.g., NES, SNES) |
| .chd        | Compressed Hunks of Data file | For disc systems (e.g., PlayStation, Sega CD) |

---

## Does RetroArch require BIOS or Firmware?

It depends on the core, check the links for the most up-to-date information.

**Read more:** 

- [RetroArch - BIOS Guide](https://docs.libretro.com/library/bios/)
- [ES-DE User Guide: Supported Game Systems](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#supported-game-systems)

---

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/<multiple>` |                               |          |
| Saves Folder |`retrodeck/saves/<multiple>` |                               |        |
| States Folder |`retrodeck/states/<multiple>` |                               |  Save States depends on the core if it has support or not | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/retroarch/`         |   |

---

## Core List

RetroDECK always try to ship all cores in RetroArch

[RetroArch - Core List](https://docs.libretro.com/meta/core-list/)

| Core                      | System/Machine         | Notes              |
|  :---:  | :---:                  |             :---:     |
| [2048](https://docs.libretro.com/library/2048/)                      | Game                   | A port of the popular puzzle game 2048 to libretro |
| 3D Engine                 | -                      | This is a test core; it demonstrates how to create a hardware-rendered core in a libretro context |
| [4DO](https://docs.libretro.com/library/opera/)                       | 3DO                    |                    |
| a5200                     | Atari 5200             |                    |
| Anarch                    | Game                   | A port of Anarch, 90s-style Doom clone shooter game |
| Ardens                    | Arduboy                | A simulator for the Arduboy FX |
| Arduous                   | Arduboy                | A emulator for Arduboy, a handheld game console with open source software, based on the Arduino hardware platform |
| [Atari800](https://docs.libretro.com/library/atari800/)                  | Atari 5200             |                    |
| Beetle bsnes              | Nintendo SNES/SFC      |                    |
| [Beetle Cygne](https://docs.libretro.com/library/beetle_cygne/)              | Bandai WonderSwan/Color |                   |
| Beetle GBA                | Game Boy Advance       |                    |
| Beetle Lynx               | Atari Lynx             |                    |
| Beetle NeoPop             | Neo Geo Pocket/Color   |                    |
| Beetle PC-FX              | NEC PC-FX              |                    |
| Beetle PCE                | NEC PC Engine/SuperGrafx/CD |               |
| Beetle PCE FAST           | NEC PC Engine/CD       |                    |
| Beetle PSX                | Sony PlayStation       |                    |
| Beetle PSX HW             | Sony PlayStation       | A fork of Mednafen's PSX providing GPU-accelerated renderers for OpenGL and Vulkan |
| Beetle Saturn             | Sega Saturn            |                    |
| Beetle SuperGrafx         | NEC PC Engine/SuperGrafx |                  |
| Beetle Supafaust          | Nintendo SNES/SFC      |                    |
| Beetle VB                 | Nintendo Virtual Boy   |                    |
| BK                        | BK-0010/BK-0011(M)/Terak 8510-a | A port of the PDP11 emulator to libretro. This core emulates the PDP-11/03 platform. |
| BlastEm                   | Sega Genesis (Mega Drive) |                 |
| blueMSX                   | MSX/SVI/ColecoVision/SG-1000 |              |
| bnes                      | Nintendo NES/Famicom   |                    |
| boom 3                    | Game engine            | A port of the Doom 3 engine to libretro. There is a separate core for it's expansion pack 'Resurrection of Evil'. |
| boom 3 xp                 | Game engine            | (See boom 3 note)  |
| bsnes                     | Nintendo SNES/SFC      |                    |
| bsnes 2014 Accuracy       | Nintendo SNES/SFC      |                    |
| bsnes 2014 Balanced       | Nintendo SNES/SFC      |                    |
| bsnes 2014 Performance    | Nintendo SNES/SFC      |                    |
| bsnes C++98 (v085)        | Nintendo SNES/SFC      |                    |
| bsnes-hd beta             | Nintendo SNES/SFC      |                    |
| bsnes-mercury Accuracy    | Nintendo SNES/SFC      |                    |
| bsnes-mercury Balanced    | Nintendo SNES/SFC      |                    |
| bsnes-mercury Performance | Nintendo SNES/SFC      |                    |
| Cannonball                | Game engine            | A port of the Cannonball, enhanced OutRun engine to libretro |
| Caprice32                 | Amstrad CPC            |                    |
| CDi 2015                  | Philips CDi            |                    |
| ChaiLove                  | Game engine            | A free, open-source framework used to make 2D games in ChaiScript |
| Citra                     | Nintendo 3DS           |                    |
| Citra 2018                | Nintendo 3DS           |                    |
| Citra Canary              | Nintendo 3DS           | Based on Citra development branch |
| Craft                     | Game                   | A basic clone of the Minecraft sandbox game |
| CrocoDS                   | Amstrad CPC            |                    |
| Cruzes                    | Game                   | (Further information required) |
| Daphne                    | Arcade                 |                    |
| DeSmuME                   | Nintendo DS            |                    |
| DeSmuME 2015              | Nintendo DS            |                    |
| Dinothawr                 | Game engine            | A push-the-block-in-a-straight-line puzzle game in the spirit of Kickle Cubicle |
| DirectXbox                | Xbox                   |                    |
| Dolphin                   | Nintendo GameCube/Wii  |                    |
| DOSBox                    | DOS                    |                    |
| DOSBox-core               | DOS                    | Provides some improvements over the DOSBox-SVN trunk, including native MIDI support, cycle-accurate OPL3 (YMF262) emulation, MT-32 emulation and experimental 3dfx Voodoo support |
| DOSBox-Pure               | DOS                    | A port of DOSBox with a goal of simplicty and ease of use and gameplay. This core includes a streamlined workflow for launching games directly from ZIP archives with automated mapping of controls to gamepads and a native onscreen keyboard. |
| DOSBox-SVN                | DOS                    | This core is based on DOSBox-SVN trunk and allows on-the-fly configuration and different sync methods |
| doukutsu-rs             | Game engine            | An open-source reimplementation of the Cave Story engine compatible with all official (and some unofficial) releases of Cave Story |
| DuckStation               | Sony PlayStation       |                    |
| Dungeon Crawl Stone Soup  | Game                   | A preliminary port of the Dungeon Crawl Stone Soup strategy game |
| EasyRPG                   | RPG Maker 2000/2003    |                    |
| ECWolf                    | Game engine            | A port of the Wolfenstein 3D engine to libretro |
| EighyOne                  | Sinclair ZX 81         |                    |
| Emux CHIP-8               | CHIP-8                 |                    |
| Emux GB                   | Game Boy/Color         |                    |
| Emux NES                  | Nintendo NES/Famicom   |                    |
| Emux SMS                  | Sega Master System     |                    |
| EmuSCV                    | Super Cassette Vision  |                    |
| Ep128emu                  | Enterprise 128         |                    |
| FAKE-08                   | Pico-8                 | A port of the FAKE-08 open-source reimplementation of the PICO-8 fantasy console to libretro |
| FB Alpha                  | Arcade/Console/various | (See FB Neo note)  |
| FB Alpha 2012             | Arcade/Console/various | (See FB Neo note)  |
| FB Alpha 2012 CPS-1       | CPS-1                  |                    |
| FB Alpha 2012 CPS-2       | CPS-2                  |                    |
| FB Alpha 2012 CPS-3       | CPS-3                  |                    |
| FB Alpha 2012 Neo Geo     | Neo Geo                |                    |
| FB Neo                    | Arcade/Console/various | Full list of supported systems: https://github.com/finalburnneo/FBNeo/wiki |
| FCEUmm                    | Nintendo NES/Famicom   |                    |
| FFmpeg                    | Media player           | A port of FFmpeg library which allows playback of a variety of audio and video formats |
| fixGB                     | Game Boy/Color         |                    |
| fixNES                    | Nintendo NES/Famicom   |                    |
| Flycast                   | Sega Dreamcast/NAOMI   |                    |
| Flycast GLES2             | Sega Dreamcast/NAOMI   |                    |
| fMSX                      | MSX/MSX2/MSX2+         |                    |
| FreeChaF                  | Fairchild ChannelF     |                    |
| FreeInv                   | Mattel Intellivision   |                    |
| FreeJ2ME                  | J2ME                   | a port of Java 2 Micro Edition emulator |
| Frodo                     | Commodore C64          |                    |
| FS-UAE                    | Commodore Amiga        |                    |
| Fuse                      | Sinclair ZX Spectrum   |                    |
| Gambatte                  | Game Boy/Color         |                    |
| Game Music Emu            | Music player           | A port of Game Music Emu which allows playback of a wide variety of video game music formats |
| Gearboy                   | Game Boy/Color         |                    |
| Gearcoleco                | Coleco ColecoVision    |                    |
| Gearsystem                | Sega MS/GG/SG-1000     |                    |
| Genesis Plus GX           | Sega MS/GG/MD/CD       |                    |
| Geolith                   | SNK Neo Geo AES/MVS    | Highly accurate emulator for the Neo Geo AES and MVS Cartridge Systems |
| gpSP                      | Game Boy Advance       |                    |
| Gong                      | Game                   | A clone of Pong written for libretro |
| GW                        | Handheld Electronic    | A simulator of various Game and Watch-style handheld electronic games |
| Handy                     | Atari Lynx             |                    |
| Hatari                    | Atari ST/STE/TT/Falcon |                    |
| HBMAME                    | Arcade/Console/various | HBMAME (HomeBrew MAME) is a derivative of MAME, and contains various hacks and homebrews |
| higan Accuracy            | Nintendo SNES/SFC/Game Boy/Color |          |
| Imageviewer               | Imageviewer            | A basic core for viewing still images in a libretro frontend |
| Ishiiruka                 | Nintendo GameCube/Wii  |                    |
| JAXE                      | CHIP-8/S-CHIP/XO-CHIP  |                    |
| Jump 'n Bump              | Game engine            | A reimplementation of the engine of Jump 'n Bump, a open-source MS-DOS multiplayer video game by Brainchild Design |
| Kronos                    | Sega Saturn/ST-V       | A port of the Kronos, which is itself a fork of Yabause emulator |
| LowRes NX                 | Game engine            | A port of the LowRes NX fantasy console to libretro |
| Lutro                     | Game engine            | An experimental Lua game framework for libretro, based on a subset of the LOVE API |
| M2000                     | Philips P2000T         | A port of M2000, the portable Philips P2000 emulator to libretro |
| MAME (Current)            | Arcade/Console/various | Based on MAME development branch. Full list of supported systems: http://adb.arcadeitalia.net/mame.php |
| MAME 2000                 | Arcade/Console/various | (See MAME note)    |
| MAME 2003                 | Arcade/Console/various | (See MAME note)    |
| MAME 2003 Midway          | Arcade/Console/various | (See MAME note)    |
| MAME 2003-Plus            | Arcade/Console/various | (See MAME note)    |
| MAME 2009                 | Arcade/Console/various | (See MAME note)    |
| MAME 2010                 | Arcade/Console/various | (See MAME note)    |
| MAME 2015                 | Arcade/Console/various | (See MAME note)    |
| MAME 2016                 | Arcade/Console/various | (See MAME note)    |
| melonDS 2021              | Nintendo DS            |                    |
| melonDS DS                | Nintendo DS/DSi        | Enhanced remake of the melonDS core based on a newer version of the emulator. |
| Mesen                     | Nintendo NES/Famicom   |                    |
| Mesen-S                   | Nintendo SNES/SFC/Game Boy/Color |          |
| MESS 2015                 | Multi (various)        | (See MAME note)    |
| Meteor                    | Game Boy Advance       |                    |
| mGBA                      | Game Boy Advance       |                    |
| Microw8                   | Game engine            | A port of a WebAssembly based fantasy console to libretro |
| Minivmac                  | Mac II                 | MacII variant of minivmac emulator |
| mpv                       | Media player           | An port of MPV media player to libretro |
| Mr.Boom                   | Game                   | A clone of the classic Bomberman series |
| Mu                        | Palm OS                | An emulator for the Palm m515 OS ported to libretro |
| [Mupen64Plus-Next](https://docs.libretro.com/library/mupen64plus/)          | Nintendo 64            |                    |
| [Mupen64Plus-Next GLES2](https://docs.libretro.com/library/mupen64plus/)    | Nintendo 64            |                    |
| [Mupen64Plus-Next GLES3](https://docs.libretro.com/library/mupen64plus/)    | Nintendo 64            |                    |
| Neko Project II           | NEC PC-98              |                    |
| Neko Project II Kai       | NEC PC-98              |                    |
| NeoCD                     | Neo Geo CD             |                    |
| Nestopia                  | Nintendo NES/Famicom   |                    |
| nSide Balanced            | Nintendo SNES/SFC/Game Boy/Color |          |
| Numero                  | TI-83            | A TI-83 Emulator for Libretro |
| NXEngine                  | Game engine            | An open-source reimplementation of the Cave Story / Doukutsu engine |
| O2EM                      | Magnavox Odyssey2/Philips Videopac+ |      |
| Oberon                    | Oberon RISC machine    | An emulator for the Oberon RISC machine, ported to libretro |
| OpenLara                  | Game engine            | A port of the OpenLara free/open re-implementation of the engine used by the original Tomb Raider series |
| OpenTyrian                | Game                   | A port of the OpenTyrian clone of the classic Tyrian shmup, ported to libretro |
| Opera                     | 3DO                    |                    |
| ParaLLEl N64              | Nintendo 64            |                    |
| PascalPong                | Game                   | A free and basic clone of the classic Pong game, written for libretro |
| PCem                      | IBM PC                 |                    |
| [LRPS2](https://docs.libretro.com/library/pcsx2/)                     | Sony PlayStation 2     |                    |
| [PCSX ReARMed](https://docs.libretro.com/library/pcsx_rearmed/)              | Sony PlayStation       |                    |
| PicoDrive                 | Sega MS/GG/MD/CD/32X   |                    |
| Play!                     | Sony PlayStation 2     |                    |
| Pocket CDG                | Karaoke player         | A karaoke music player, ported to libretro |
| PokeMini                  | Nintendo Pokemon Mini  |                    |
| Potator                   | Watara Supervision     |                    |
| PPSSPP                    | PlayStation Portable   |                    |
| PrBoom                    | Game engine            | A port of the PrBoom source port of iD's classic Doom engine |
| ProSystem                 | Atari 7800             |                    |
| PUAE                      | Commodore Amiga        |                    |
| PUAE 2021                 | Commodore Amiga        |                    |
| PuzzleScript              | Game engine            | A port of PuzzleScript, open source HTML5 puzzle game engine |
| PX68k                     | Sharp X68000           |                    |
| QUASI88                   | NEC PC-8000/PC-8800 series |                |
| QuickNES                  | Nintendo NES/Famicom   |                    |
| RACE                      | Neo Geo Pocket/Color   |                    |
| Redbook                   | Music player           | A libretro core for playing back Redbook-formatted audio, such as commercial audio CDs |
| REminiscence              | Game engine            | A port of the REminiscence engine, a reimplementation of the engine used by Delphine Software's Flashback |
| Retro8                    | Game engine            | A port of the Retro8 open-source reimplementation of the PICO-8 fantasy console to libretro |
| Rustation                 | Sony PlayStation       |                    |
| RVVM                      | RISC-V Virtual Machine |                    |
| SameBoy                   | Game Boy/Color         |                    |
| SameDuck                  | Mega Duck (Cougar Boy) | An adaptation of SameBoy to play Mega Duck games |
| SAME CDI                  | Philips CDi            | SAME CDi is a S(ingle) A(rcade) M(achine) E(mulator) for libretro, forked from MAME, which only includes the Philips CD-i driver |
| [ScummVM](https://docs.libretro.com/library/scummvm/)                   | Game engine            | A fork of the ScummVM adventure game engine ported to libretro |
| SimCoupe                  | SAM Coupe              |                    |
| [SMS Plus GX](https://docs.libretro.com/library/smsplus/)               | Sega MS/GG             |                    |
| [Snes9x](https://docs.libretro.com/library/snes9x/)                    | Nintendo SNES/SFC      |                    |
| [Snes9x 2002](https://docs.libretro.com/library/snes9x_2002/)               | Nintendo SNES/SFC      |                    |
| [Snes9x 2005](https://docs.libretro.com/library/snes9x_2005/)               | Nintendo SNES/SFC      |                    |
| [Snes9x 2005 Plus](https://docs.libretro.com/library/snes9x_2005_plus/)          | Nintendo SNES/SFC      |                    |
| [Snes9x 2010](https://docs.libretro.com/library/snes9x_2010/)               | Nintendo SNES/SFC      |                    |
| SquirrelJME               | Java ME                | A port of the SquirrelJME Java ME 8 Virtual Machine emulator to libretro |
| [Stella](https://docs.libretro.com/library/stella/)                    | Atari 2600             |                    |
| Stella 2014               | Atari 2600             |                    |
| Super Bros War            | Game engine            | A fork of Super Mario War, a fan-made multiplayer Super Mario Bros. style deathmatch game |
| SwanStation               | Sony PlayStation       | SwanStation is a fork of the Duckstation emulator |
| [TempGBA](https://docs.libretro.com/library/tempgba/)                   | Game Boy Advance       |                    |
| [TGB Dual](https://docs.libretro.com/library/tgb_dual/)                  | Game Boy/Color         |                    |
| [Theodore](https://docs.libretro.com/library/theodore/)                  | Thomson MO/TO          |                    |
| TIC-80                    | Game engine            | A port of the free and open source fantasy computer TIC-80 to libretro |
| The Powder Toy            | Game                   | A port of the Powdertoy physics sandbox/simulation engine to libretro |
| [TyrQuake](https://docs.libretro.com/library/tyrquake/)                  | Game engine            | A port of the tyrquake engine |
| UAE4ARM                   | Commodore Amiga        |                    |
| UME 2015                  | Arcade/Console/various | (See MAME note)    |
| Uzem                      | Uzebox                 | A port of Uzem, the official emulator for the Uzebox |
| VaporSpec                 | Game engine            | A virtual game platform with capabilities similar to 80s game consoles |
| VBA-M                     | Game Boy Advance       | VisualBoy Advance-M is a active fork of VisualBoy Advance emulator |
| [VBA Next](https://docs.libretro.com/library/vba_next/)                  | Game Boy Advance       |                    |
| [vecx](https://docs.libretro.com/library/vecx/)                      | Vectrex                |                    |
| [VeMUlator](https://docs.libretro.com/library/vemulator/)                  | SEGA Visual Memory Unit | A port of VeMUlator, a SEGA Dreamcast VMU emulator originally developed for Android |
| VICE x64                  | Commodore C64          |                    |
| VICE x64sc                | Commodore C64          |                    |
| VICE x128                 | Commodore C128         |                    |
| VICE xcbm2                | Commodore CBM-II 6x0/7x0 |                  |
| VICE xcbm5x0              | Commodore CBM-II 5x0   |                    |
| VICE xpet                 | Commodore PET          |                    |
| VICE xplus4               | Commodore Plus/4       |                    |
| VICE xscpu64              | Commodore C64 SuperCPU |                    |
| VICE xvic                 | Commodore VIC-20       |                    |
| Vircon32                  | Game engine            | A port of Vircon32 game console to libretro |
| Virtual Jaguar            | Atari Jaguar           |                    |
| VirtualXT                 | DOS                    | Runns PC/XT class software. Mainly intended for PC booters from the 80's. |
| vitaQuake 2               | Game engine            | A port of the VitaQuake 2 source port of iD's Quake 2 engine to libretro. There is a separate core for each of the Quake 2 mission packs, 'Rogue', 'Zaero' and 'Xatrix'. |
| vitaQuake 2 (Rogue)       | Game engine            | (See vitaQuake 2 note) |
| vitaQuake 2 (Xatrix)      | Game engine            | (See vitaQuake 2 note) |
| vitaQuake 2 (Zaero)       | Game engine            | (See vitaQuake 2 note) |
| vitaQuake 3               | Game engine            | A port of the VitaQuake 3 source port of iD's ioquake3 engine to libretro |
| vitaVoyager               | Game engine            | A port of the Lilium Voyager engine, which runs the Star Trek: Voyager - Elite Force game and is itself based on the ioquake3 |
| WASM-4                    | Game engine            | WASM-4 is a open source low-level fantasy game console for building small games with WebAssembly |
| X Millennium              | Sharp X1               |                    |
| XRick                     | Game engine            | A port of the XRick, an open-source clone of the Rick Dangerous engine |
| YabaSanshiro              | Sega Saturn            | A port of the YabaSanshiro, which is itself a fork of Yabause emulator |
| Yabause                   | Sega Saturn            |                    |

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
