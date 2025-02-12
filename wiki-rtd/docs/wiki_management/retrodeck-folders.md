# RetroDECK Folder Structure

<img src="../../wiki_icons/pixelitos/folder-blue-games.png" width="75">

Here is the RetroDECK folder structure.

## Main Folders

| **Type**    |  **Folder**                 |          **Comment**     |         
|  :---:  | :---:                  |             :---:     |
| Userdata Folder  |`retrodeck/` |   Contains userdata. Has a dynamic location, chosen by the user.         |         
| User Var Folder |`~/.var/app/net.retrodeck.retrodeck/`         | Exposes configuration, cache, and system data from the Flatpak environment.   |
| Flatpak Folder | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | Contains the sandboxed flatpak environment and should not be touched. |

## Userdata Folder - retrodeck/

| **Type**    |  **Folder**                 |          **Comment**     |          
|  :---:  | :---:                  |             :---:     |
| Sync Folder  |`retrodeck/.sync` |   Hidden folder for the Steam Sync feature contains sync .sh files       |         
| BIOS Folder | `retrodeck/bios`        | BIOS folder, follows the RetroArch BIOS structure |
| Borders Folder | `retrodeck/borders`  | Artfiles for RetroArch borders. |
| ES-DE Folder | `retrodeck/ES-DE`  | Contains userdata files from ES-DE |
| Logs Folder | `retrodeck/logs`  | Contains RetroDECK logfiles |
| Mods Folder | `retrodeck/mods`  | Contains various mods folders for all supported systems  |
| PortMaster Folder | `retrodeck/PortMaster`  | Contains PortMaster downloaded games data|
| ROMs Folder | `retrodeck/roms`  | Contains various ROMs folders for all supported systems |
| Saves Folder | `retrodeck/saves`  | Contains various save folders for all supported systems |
| Screenshots Folder | `retrodeck/saves`  | Contains various screenshots folders for all supported systems |
| Shaders Folder | `retrodeck/shaders`  | Contains various shader folders for all supported systems |
| States Folder | `retrodeck/states`  | Contains various state (save state) folders for all supported systems |
| Texture Packs Folder | `retrodeck/texture_packs`  | Contains various Texture Packs folders for all supported systems |


## ES-DE Folder

| **Type** | **Folder** | **Comment** |
|  :---:  | :---:       |   :---:     |
| Collections Folder | collections | Custom ES-DE Collection |
| Custom Systems Folder | custom_systems |Custom Systems |
| Downloaded Media Folder | downloaded_media | Scraping data |
| Gamelists Folder | gamelists | |
| Themes Folder | themes | ES-DE Themes |

## BIOS Folder

| **Type** | **Folder** | **Comment** |
|  :---:  | :---:       |   :---:     |
| Cemu Folder | cemu | |
| Citra Folder | citra | |
| Databases Folder | Databases | |
| Dc Folder | dc | |
| Fbneo Folder | fbneo | |
| Gzdoom Folder | gzdoom | |
| HdPacks Folder | HdPacks | |
| Machines Folder | Machines | |
| Mame-sa Folder | mame-sa | |
| Mupen64plus Folder | Mupen64plus | |
| Np2kai Folder | np2kai | |
| Pico-8 Folder | pico-8 | |
| PPSSPP Folder | PPSSPP | |
| Quasi88 Folder | quasi88 | |
| Rpcs3 Folder | rpcs3 | |
| Switch Folder | switch | |
| Themes Folder | themes | |
| Vita3K Folder | Vita3K | |

## Roms Folder

RetroDECK Follows the ES-DE ROMs Folder Structure. 

| **Type** | **Folder** | **Comment** |
|  :---:  | :---:       |   :---:     |
| 3DO Folder | 3do | A 32-bit console known for its high price and multimedia capabilities. |
| Adam Folder | adam | A home computer and game console hybrid released by Coleco. |
| Amiga Folder | amiga | A family of personal computers known for their graphics and sound capabilities. |
| Amiga1200 Folder | amiga1200 | An advanced model of the Amiga computer with improved graphics and processing power. |
| Amiga600 Folder | amiga600 | A compact version of the Amiga computer with fewer expansion options. |
| Amigacd32 Folder | amigacd32 | A CD-ROM based game console version of the Amiga computer. |
| Amstradcpc Folder | amstradcpc | A series of 8-bit home computers popular in Europe. |
| Apple2 Folder | apple2 | One of the first highly successful mass-produced microcomputers. |
| Apple2gs Folder | apple2gs | An advanced model of the Apple II with better graphics and sound. |
| Arcade Folder | arcade | Coin-operated entertainment machines found in public places. |
| Arcadia Folder | arcadia | A lesser-known console with a small library of games. |
| Archimedes Folder | archimedes | A family of personal computers developed by Acorn Computers. |
| Arduboy Folder | arduboy | A handheld game console based on Arduino technology. |
| Astrocde Folder | astrocde | A second-generation home video game console released by Emerson Radio. |
| Atari2600 Folder | atari2600 | One of the first successful home video game consoles. |
| Atari5200 Folder | atari5200 | A follow-up to the Atari 2600 with improved graphics and sound. |
| Atari7800 Folder | atari7800 | A backward-compatible console with better graphics than its predecessors. |
| Atari800 Folder | atari800 | An 8-bit home computer known for its gaming capabilities. |
| Atarijaguar Folder | atarijaguar | A 64-bit game console with a limited library of games. |
| Atarilynx Folder | atarilynx | A handheld game console with a color display. |
| Atarist Folder | atarist | A family of home computers known for their MIDI capabilities. |
| Atarixe Folder | atarixe | An 8-bit home computer similar to the Atari 800. |
| Atomiswave Folder | atomiswave | An arcade system board developed by Sammy Corporation. |
| BBC Micro Folder | bbcmicro | A series of microcomputers developed by Acorn Computers for the BBC. |
| C64 Folder | c64 | One of the best-selling home computers of all time. |
| CD-i Mono-I Folder | cdimono1 | A multimedia CD-ROM game console developed by Philips. |
| CDTV Folder | cdtv | A multimedia platform based on the Amiga computer. |
| ChaiLove Folder | chailove | A retro game framework for creating games in Lua. |
| Channel F Folder | channelf | A second-generation home video game console released by Fairchild. |
| Colecovision Folder | colecovision | A second-generation home video game console known for its arcade ports. |
| Consolearcade Folder | consolearcade | A general folder for home consoles that play arcade-style games. |
| Cps Folder | cps | Capcom's arcade system board used for many popular games. |
| Cps1 Folder | cps1 | The first version of Capcom's arcade system board. |
| Cps2 Folder | cps2 | The second version of Capcom's arcade system board with improved security. |
| Cps3 Folder | cps3 | The third version of Capcom's arcade system board with advanced graphics. |
| Crvision Folder | crvision | A home computer and game console hybrid released by VTech. |
| Daphne Folder | daphne | An emulator for laserdisc arcade games. |
| Desktop Folder | desktop | Folder for .desktop files. |
| DOOM Folder | doom | A folder containing files related to the classic first-person shooter game. |
| DOS Folder | dos | An operating system for IBM-compatible personal computers. |
| Dreamcast Folder | dreamcast | A 128-bit game console developed by Sega. |
| Easyrpg Folder | easyrpg | An open-source RPG game engine. |
| Electron Folder | electron | A budget home computer developed by Acorn Computers. |
| Emulators Folder | emulators | Software that allows one computer system to behave like another. |
| Famicom Folder | famicom | The Japanese version of the Nintendo Entertainment System. |
| Fba Folder | fba | Final Burn Alpha, an arcade game emulator. |
| Fbneo Folder | fbneo | Final Burn Neo, an updated version of Final Burn Alpha. |
| Fds Folder | fds | Famicom Disk System, a floppy disk add-on for the Famicom. |
| Flash Folder | flash | A folder containing files related to Adobe Flash content. |
| Fm7 Folder | fm7 | A home computer developed by Fujitsu. |
| Fmtowns Folder | fmtowns | A series of personal computers developed by Fujitsu. |
| Gamate Folder | gamate | A handheld game console developed by Bit Corporation. |
| Gameandwatch Folder | gameandwatch | A series of handheld electronic games developed by Nintendo. |
| Gamecom Folder | gamecom | A handheld game console developed by Tiger Electronics. |
| Gamegear Folder | gamegear | A handheld game console developed by Sega. |
| GB Folder | gb | Game Boy, a handheld game console developed by Nintendo. |
| GBA Folder | gba | Game Boy Advance, a handheld game console developed by Nintendo. |
| GBC Folder | gbc | Game Boy Color, a handheld game console developed by Nintendo. |
| GC Folder | gc | GameCube, a home video game console developed by Nintendo. |
| Genesis Folder | genesis | A 16-bit game console developed by Sega. |
| Gmaster Folder | gmaster | A handheld game console developed by Watara. |
| Gx4000 Folder | gx4000 | A game console developed by Amstrad. |
| Intellivision Folder | intellivision | A second-generation home video game console developed by Mattel. |
| J2me Folder | j2me | Java 2 Platform, Micro Edition, used for mobile devices. |
| Laserdisc Folder | laserdisc | A folder containing files related to laserdisc content. |
| Lcdgames Folder | lcdgames | A folder containing files related to LCD handheld games. |
| Lowresnx Folder | lowresnx | A fantasy console for making games in a low-resolution environment. |
| Lutris Folder | lutris | An open-source gaming platform for Linux. |
| Lutro Folder | lutro | A framework for creating retro-style games in Lua. |
| Macintosh Folder | macintosh | A family of personal computers developed by Apple. |
| MAME Folder | mame | Multiple Arcade Machine Emulator, a software for emulating arcade games. |
| Master System Folder | mastersystem | A third-generation home video game console developed by Sega. |
| Mega CD Folder | megacd | A CD-ROM add-on for the Sega Genesis. |
| Mega CD JP Folder | megacdjp | The Japanese version of the Sega CD add-on. |
| Mega Drive Folder | megadrive | The international name for the Sega Genesis. |
| Mega Duck Folder | megaduck | A handheld game console developed by Welback Holdings. |
| MESS Folder | mess | Multi Emulator Super System, an emulator for various consoles and computers. |
| Model2 Folder | model2 | An arcade system board developed by Sega. |
| Moto Folder | moto | A folder containing files related to motorcycle games. |
| MSX Folder | msx | A standardized home computer architecture. |
| MSX1 Folder | msx1 | The first generation of the MSX computer standard. |
| MSX2 Folder | msx2 | The second generation of the MSX computer standard. |
| MSX turbo R Folder | msxturbor | An enhanced version of the MSX2 computer standard. |
| M.U.G.E.N Folder | mugen | IkemanGO a customizable fighting game engine. |
| Multivision Folder | multivision | A home computer and game console hybrid developed by Samsung. |
| N3DS Folder | n3ds | Nintendo 3DS, a handheld game console developed by Nintendo. |
| N64 Folder | n64 | Nintendo 64, a 64-bit game console developed by Nintendo. |
| N64DD Folder | n64dd | A disk drive add-on for the Nintendo 64. |
| Naomi Folder | naomi | An arcade system board developed by Sega. |
| Naomi2 Folder | naomi2 | An enhanced version of the Sega Naomi arcade system board. |
| Naomigd Folder | naomigd | A GD-ROM add-on for the Sega Naomi arcade system board. |
| NDS Folder | nds | Nintendo DS, a handheld game console developed by Nintendo. |
| Neo Geo Folder | neogeo | A cartridge-based arcade and home video game system developed by SNK. |
| Neo Geo CD Folder | neogeocd | A CD-ROM based version of the Neo Geo system. |
| Neo Geo CD JP Folder | neogeocdjp | The Japanese version of the Neo Geo CD system. |
| NES Folder | nes | Nintendo Entertainment System, an 8-bit home video game console. |
| NGP Folder | ngp | Neo Geo Pocket, a handheld game console developed by SNK. |
| NGPC Folder | ngpc | Neo Geo Pocket Color, an upgraded version of the Neo Geo Pocket. |
| Odyssey2 Folder | odyssey2 | A second-generation home video game console developed by Magnavox. |
| Openbor Folder | openbor | Open Beats of Rage, a customizable beat 'em up game engine. |
| Palm Folder | palm | A folder containing files related to Palm OS devices. |
| PC Folder | pc | Uses for some PC game ports. |
| PC88 Folder | pc88 | A series of home computers developed by NEC. |
| PC98 Folder | pc98 | An upgraded series of home computers developed by NEC. |
| PCArcade Folder | pcarcade | A folder containing files related to PC arcade games. |
| PC Engine Folder | pcengine | A home video game console developed by NEC. |
| PC Engine CD Folder | pcenginecd | A CD-ROM add-on for the PC Engine. |
| PCFX Folder | pcfx | A 32-bit home video game console developed by NEC. |
| Pico8 Folder | pico8 | A fantasy console for making, sharing, and playing tiny games. |
| Plus4 Folder | plus4 | A home computer developed by Commodore. |
| Pokemini Folder | pokemini | An emulator for the Pokémon Mini handheld game console. |
| PortMaster Folder | portmaster | A folder containing files related to PortMaster. |
| Ports Folder | ports | A folder containing files related to game ports. |
| PS2 Folder | ps2 | PlayStation 2, a home video game console developed by Sony. |
| PS3 Folder | ps3 | PlayStation 3, a home video game console developed by Sony. |
| PSP Folder | psp | PlayStation Portable, a handheld game console developed by Sony. |
| PSVita Folder | psvita | PlayStation Vita, a handheld game console developed by Sony. |
| PSX Folder | psx | PlayStation, a home video game console developed by Sony. |
| Pv1000 Folder | pv1000 | A home video game console developed by Casio. |
| Quake Folder | quake | A folder containing files related to the Quake series of games. |
| Satellaview Folder | satellaview | A satellite modem add-on for the Super Famicom. |
| Saturn Folder | saturn | A 32-bit home video game console developed by Sega. |
| Satun JP Folder | saturnjp | The Japanese version of the Sega Saturn. |
| SCUMMVM Folder | scummvm | An emulator for classic point-and-click adventure games. |
| SCV Folder | scv | Super Cassette Vision, a home video game console developed by Epoch. |
| Sega32x Folder | sega32x | A 32-bit add-on for the Sega Genesis. |
| Sega32x JP Folder | sega32xjp | The Japanese version of the Sega 32X add-on. |
| Sega 32x NA Folder | sega32xna | The North American version of the Sega 32X add-on. |
| Sega CD Folder | segacd | A CD-ROM add-on for the Sega Genesis. |
| SFC Folder | sfc | Super Famicom, the Japanese version of the Super Nintendo. |
| SG-1000 Folder | sg-1000 | A home video game console developed by Sega. |
| SGB Folder | sgb | Super Game Boy, an adapter for playing Game Boy games on the SNES. |
| SNES Folder | snes | Super Nintendo Entertainment System, a 16-bit home video game console. |
| SNES NA Folder | snesna | The North American version of the Super Nintendo. |
| Solarus Folder | solarus | An open-source game engine for action-RPGs. |
| Spectravideo Folder | spectravideo | A series of home computers developed by Spectravideo. |
| STV Folder | stv | Sega Titan Video, an arcade system board developed by Sega. |
| Sufami Folder | sufami | Sufami Turbo, an add-on for the Super Famicom. |
| Supergrafx Folder | supergrafx | An upgraded version of the PC Engine. |
| Supervision Folder | supervision | A handheld game console developed by Watara. |
| Supracan Folder | supracan | A 16-bit home video game console developed by Funtech. |
| Switch Folder | switch | A hybrid home and handheld game console developed by Nintendo. |
| TG16 Folder | tg16 | TurboGrafx-16, the North American version of the PC Engine. |
| TG-CD Folder | tg-cd | A CD-ROM add-on for the TurboGrafx-16. |
| TI99 Folder | ti99 | A series of home computers developed by Texas Instruments. |
| TIC80 Folder | tic80 | A fantasy computer for making, sharing, and playing tiny games. |
| TO8 Folder | to8 | A home computer developed by Thomson. |
| Uzebox Folder | uzebox | An open-source retro-minimalist game console. |
| Vectrex Folder | vectrex | A vector display-based home video game console. |
| Vic20 Folder | vic20 | A home computer developed by Commodore. |
| Videopac Folder | videopac | The European version of the Magnavox Odyssey². |
| Virtualboy Folder | virtualboy | A 3D gaming console developed by Nintendo. |
| Vsmile Folder | vsmile | An educational game console developed by VTech. |
| WASM4 Folder | wasm4 | A fantasy console for making, sharing, and playing tiny games. |
| Wii Folder | wii | A home video game console developed by Nintendo. |
| WiiU Folder | wiiu | A home video game console developed by Nintendo. |
| Windows Folder | windows | A folder containing files related to the Windows operating system. |
| Windows3x Folder | windows3x | A folder containing files related to Windows 3.x. |
| Windows9x Folder | windows9x | A folder containing files related to Windows 9x. |
| Wonderswan Folder | wonderswan | A handheld game console developed by Bandai. |
| Wonderswancolor Folder | wonderswancolor | An upgraded version of the WonderSwan with a color display. |
| X1 Folder | x1 | A series of home computers developed by Sharp. |
| X68000 Folder | x68000 | A home computer developed by Sharp. |
| Xbox Folder | xbox | A home video game console developed by Microsoft. |
| Zx81 Folder | zx81 | A home computer developed by Sinclair Research. |
| Zxspectrum Folder | zxspectrum | A series of home computers developed by Sinclair Research. |
