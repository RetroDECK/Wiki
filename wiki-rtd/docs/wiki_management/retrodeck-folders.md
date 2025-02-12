# RetroDECK Folder Structure

<img src="../../wiki_icons/pixelitos/folder-blue-games.png" width="75">

Here is the entire RetroDECK top-level folder structure.

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


## Roms Folder

RetroDECK Follows the ES-DE ROMs Folder Structure. 

| **Type** | **Folder** | **Comment** |
|  :---:  | :---:       |   :---:     |
| 3do Folder | 3do | |
| Adam Folder | adam | |
| Amiga Folder | amiga | |
| Amiga1200 Folder | amiga1200 | |
| Amiga600 Folder | amiga600 | |
| Amigacd32 Folder | amigacd32 | |
| Amstradcpc Folder | amstradcpc | |
| Apple2 Folder | apple2 | |
| Apple2gs Folder | apple2gs | |
| Arcade Folder | arcade | |
| Arcadia Folder | arcadia | |
| Archimedes Folder | archimedes | |
| Arduboy Folder | arduboy | |
| Astrocde Folder | astrocde | |
| Atari2600 Folder | atari2600 | |
| Atari5200 Folder | atari5200 | |
| Atari7800 Folder | atari7800 | |
| Atari800 Folder | atari800 | |
| Atarijaguar Folder | atarijaguar | |
| Atarilynx Folder | atarilynx | |
| Atarist Folder | atarist | |
| Atarixe Folder | atarixe | |
| Atomiswave Folder | atomiswave | |
| Bbcmicro Folder | bbcmicro | |
| C64 Folder | c64 | |
| Cdimono1 Folder | cdimono1 | |
| Cdtv Folder | cdtv | |
| Chailove Folder | chailove | |
| Channelf Folder | channelf | |
| Colecovision Folder | colecovision | |
| Consolearcade Folder | consolearcade | |
| Cps Folder | cps | |
| Cps1 Folder | cps1 | |
| Cps2 Folder | cps2 | |
| Cps3 Folder | cps3 | |
| Crvision Folder | crvision | |
| Daphne Folder | daphne | |
| Desktop Folder | desktop | |
| DOOM Folder | doom | |
| Dos Folder | dos | |
| Dreamcast Folder | dreamcast | |
| Easyrpg Folder | easyrpg | |
| Electron Folder | electron | |
| Emulators Folder | emulators | |
| Famicom Folder | famicom | |
| Fba Folder | fba | |
| Fbneo Folder | fbneo | |
| Fds Folder | fds | |
| Flash Folder | flash | |
| Fm7 Folder | fm7 | |
| Fmtowns Folder | fmtowns | |
| Gamate Folder | gamate | |
| Gameandwatch Folder | gameandwatch | |
| Gamecom Folder | gamecom | |
| Gamegear Folder | gamegear | |
| GB Folder | gb | |
| GBA Folder | gba | |
| GBC Folder | gbc | |
| GC Folder | gc | |
| Genesis Folder | genesis | |
| Gmaster Folder | gmaster | |
| Gx4000 Folder | gx4000 | |
| Intellivision Folder | intellivision | |
| J2me Folder | j2me | |
| Laserdisc Folder | laserdisc | |
| Lcdgames Folder | lcdgames | |
| Lowresnx Folder | lowresnx | |
| Lutris Folder | lutris | |
| Lutro Folder | lutro | |
| Macintosh Folder | macintosh | |
| Mame Folder | mame | |
| Mastersystem Folder | mastersystem | |
| Megacd Folder | megacd | |
| Megacdjp Folder | megacdjp | |
| Megadrive Folder | megadrive | |
| Megaduck Folder | megaduck | |
| Mess Folder | mess | |
| Model2 Folder | model2 | |
| Moto Folder | moto | |
| Msx Folder | msx | |
| Msx1 Folder | msx1 | |
| Msx2 Folder | msx2 | |
| Msxturbor Folder | msxturbor | |
| Mugen Folder | mugen | |
| Multivision Folder | multivision | |
| N3DS Folder | n3ds | |
| N64 Folder | n64 | |
| N64dd Folder | n64dd | |
| Naomi Folder | naomi | |
| Naomi2 Folder | naomi2 | |
| Naomigd Folder | naomigd | |
| Nds Folder | nds | |
| Neogeo Folder | neogeo | |
| Neogeocd Folder | neogeocd | |
| Neogeocdjp Folder | neogeocdjp | |
| Nes Folder | nes | |
| Ngp Folder | ngp | |
| Ngpc Folder | ngpc | |
| Odyssey2 Folder | odyssey2 | |
| Openbor Folder | openbor | |
| Palm Folder | palm | |
| Pc Folder | pc | |
| Pc88 Folder | pc88 | |
| Pc98 Folder | pc98 | |
| Pcarcade Folder | pcarcade | |
| Pc Engine Folder | pcengine | |
| Pc Engine CD Folder | pcenginecd | |
| PCFX Folder | pcfx | |
| Pico8 Folder | pico8 | |
| Plus4 Folder | plus4 | |
| PokeMini Folder | pokemini | |
| Portmaster Folder | portmaster | |
| Ports Folder | ports | |
| PS2 Folder | ps2 | |
| PS3 Folder | ps3 | |
| PSP Folder | psp | |
| PSVita Folder | psvita | |
| PAX Folder | psx | |
| Pv1000 Folder | pv1000 | |
| Quake Folder | quake | |
| Satellaview Folder | satellaview | |
| Saturn Folder | saturn | |
| Saturnjp Folder | saturnjp | |
| Scummvm Folder | scummvm | |
| SCV Folder | scv | |
| Sega32x Folder | sega32x | |
| Sega32xjp Folder | sega32xjp | |
| Sega32xna Folder | sega32xna | |
| Segacd Folder | segacd | |
| Sfc Folder | sfc | |
| Sg-1000 Folder | sg-1000 | |
| Sgb Folder | sgb | |
| SNES Folder | snes | |
| SNESna Folder | snesna | |
| Solarus Folder | solarus | |
| Spectravideo Folder | spectravideo | |
| Stv Folder | stv | |
| Sufami Folder | sufami | |
| Supergrafx Folder | supergrafx | |
| Supervision Folder | supervision | |
| Supracan Folder | supracan | |
| Switch Folder | switch | |
| Tg16 Folder | tg16 | |
| Tg-cd Folder | tg-cd | |
| Ti99 Folder | ti99 | |
| Tic80 Folder | tic80 | |
| To8 Folder | to8 | |
| Uzebox Folder | uzebox | |
| Vectrex Folder | vectrex | |
| Vic20 Folder | vic20 | |
| Videopac Folder | videopac | |
| Virtualboy Folder | virtualboy | |
| Vsmile Folder | vsmile | |
| Wasm4 Folder | wasm4 | |
| Wii Folder | wii | |
| WiiU Folder | wiiu | |
| Windows Folder | windows | |
| Windows3x Folder | windows3x | |
| Windows9x Folder | windows9x | |
| Wonderswan Folder | wonderswan | |
| Wonderswancolor Folder | wonderswancolor | |
| X1 Folder | x1 | |
| X68000 Folder | x68000 | |
| Xbox Folder | xbox | |
| Zx81 Folder | zx81 | |
| Zxspectrum Folder | zxspectrum | |
