# RetroDECK: Userdata Folder Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-games.png" width="75">

This page provides an overview of the RetroDECK folder structure for **userdata**, showing where configuration files, roms, saves, states, bios and other things  are stored.

---

## Main Folders

| Folder Path                                          | Folder Name / Description                | Description                                                                 |
|------------------------------------------------------|-----------------------------------------|-----------------------------------------------------------------------------|
| retrodeck/                                           | userdata Folder                          | Contains all RetroDECK user data. Location is dynamic and chosen by the user. |
| ~/.var/app/net.retrodeck.retrodeck/                 | Flatpak Root Folder                      | Exposes configuration, cache, and system data from the Flatpak environment. |
| ~/.var/app/net.retrodeck.retrodeck/cache/           | Cache Folder                             | Stores cache files and temporary data for RetroDECK components.             |
| ~/.var/app/net.retrodeck.retrodeck/config/          | Config Folder                            | Stores configuration files for RetroDECK components.                        |
| ~/.var/app/net.retrodeck.retrodeck/config/retrodeck/ | RetroDECK Config Folder                  | Contains the main `retrodeck.cfg` configuration file.                        |
| ~/.var/app/net.retrodeck.retrodeck/data/            | Data Folder                              | Stores data structures used by RetroDECK components.                         |

---

## Userdata Folder - retrodeck/

| Folder Path                  | Folder Name / Description        | Description                                                                 |
|-------------------------------|---------------------------------|-----------------------------------------------------------------------------|
| retrodeck/bios                | BIOS Folder                     | BIOS files for supported emulators (follows the RetroArch BIOS structure).  |
| retrodeck/borders             | Borders Folder                  | Border images for supported systems displayed in the interface.            |
| retrodeck/cheats              | Cheats Folder                   | Cheat files for supported systems and emulators.                            |
| retrodeck/ES-DE               | ES-DE Folder                    | Userdata and configuration files from EmulationStation-DE.                  |
| retrodeck/logs                | Logs Folder                     | RetroDECK log files for debugging and tracking.                              |
| retrodeck/mods                | Mods Folder                     | Modifications and additional content for supported systems.                 |
| retrodeck/roms                | ROMs Folder                     | Game ROMs for supported systems.                                            |
| retrodeck/saves               | Saves Folder                    | Save files for supported systems.                                           |
| retrodeck/screenshots         | Screenshots Folder              | In-game screenshots captured from supported systems.                        |
| retrodeck/storage             | Storage Folder                  | Miscellaneous storage for DLC, installations, PortMaster data, and other files. |
| retrodeck/shaders             | Shaders Folder                  | Shader files for graphical enhancements in emulators.                       |
| retrodeck/states              | States Folder                   | Save states for supported emulators and systems.                             |
| retrodeck/texture_packs       | Texture Packs Folder            | Texture packs used for graphical enhancements in supported systems.         |


---

## ES-DE Folder

| Folder Path         | Folder Name / Description      | Description                     |
|--------------------|-------------------------------|---------------------------------|
| collections         | Collections Folder            | Custom EmulationStation-DE collections. |
| custom_systems      | Custom Systems Folder         | Folder for user-defined or additional systems. |
| downloaded_media    | Downloaded Media Folder       | Stores scraped media assets like images, videos, and metadata. |
| gamelists           | Gamelists Folder              | Contains ES-DE gamelist.xml files for system organization. |
| themes              | Themes Folder                 | Stores themes for the EmulationStation-DE interface. |



---

## BIOS Folder

Most BIOS files are put in the root of the folder.

| Folder Path   | System Name / Folder Name | Description |
|---------------|--------------------------|-------------|
| cemu          | Cemu                     | Wii U emulator. Place BIOS files if required by specific games. |
| citra         | Citra                    | Nintendo 3DS emulator. Stores BIOS files needed for emulation. |
| Databases     | Databases                | Folder for storing emulator and system database files. |
| dc            | Dreamcast                | Sega Dreamcast BIOS files used for emulation. |
| fbneo         | Final Burn Neo           | Arcade emulator BIOS files. |
| gzdoom        | GZDoom                   | Source port for Doom games; stores configuration and IWAD files. |
| HdPacks       | HdPacks                  | Folder for high-definition graphics packs used by certain emulators. |
| Machines      | Machines                 | Folder for BIOS files of various supported emulated machines. |
| mame-sa       | MAME Standalone          | Standalone MAME emulator BIOS files. |
| Mupen64plus   | Mupen64Plus              | Nintendo 64 emulator BIOS files for accurate emulation. |
| np2kai        | Neko Project II Kai      | PC-9801/other Japanese computer emulator BIOS files. |
| pico-8        | Pico-8                   | Fantasy console; stores cartridge and system files. |
| PPSSPP        | PPSSPP                   | PlayStation Portable emulator BIOS files for accurate emulation. |
| quasi88       | Quasi88                  | NEC PC-8801 emulator BIOS files. |
| rpcs3         | RPCS3                    | PlayStation 3 emulator BIOS files and firmware. |
| switch        | Nintendo Switch          | Switch emulator BIOS files and firmware. |
| themes        | Themes                   | Optional folder for BIOS-related UI themes or overlays. |
| Vita3K        | Vita3K                   | PlayStation Vita emulator BIOS files and system firmware. |


---

## ROMs Folder

RetroDECK Follows the ES-DE ROMs Folder Structure. 

| Folder Path | System Name | Description |
|-------------|-------------|-------------|
| 3do | 3DO | 32-bit home console known for multimedia capabilities and high-quality graphics. |
| adam | Coleco Adam | Home computer and game console hybrid released by Coleco. |
| amiga | Amiga | Family of personal computers known for advanced graphics and sound capabilities. |
| amiga1200 | Amiga 1200 | Advanced model of Amiga with improved graphics, sound, and processing power. |
| amiga600 | Amiga 600 | Compact version of Amiga with fewer expansion options. |
| amigacd32 | Amiga CD32 | CD-ROM based game console version of the Amiga computer. |
| amstradcpc | Amstrad CPC | 8-bit home computer series popular in Europe. |
| apple2 | Apple II | One of the first highly successful mass-produced microcomputers. |
| apple2gs | Apple IIgs | Advanced Apple II model with improved graphics and sound. |
| arcade | Arcade | Coin-operated entertainment machines found in public places. |
| arcadia | Arcadia | Lesser-known 8-bit console with a small library of games. |
| archimedes | Acorn Archimedes | Family of personal computers developed by Acorn Computers. |
| arduboy | Arduboy | Handheld game console based on Arduino hardware. |
| astrocde | Astrocade | Second-generation home video game console released by Emerson Radio. |
| atari2600 | Atari 2600 | One of the first widely successful home video game consoles. |
| atari5200 | Atari 5200 | Follow-up to the Atari 2600 with improved graphics and sound. |
| atari7800 | Atari 7800 | Backward-compatible console with enhanced graphics over predecessors. |
| atari800 | Atari 800 | 8-bit home computer known for gaming capabilities. |
| atarijaguar | Atari Jaguar | 64-bit home console with a limited library of games. |
| atarilynx | Atari Lynx | Handheld game console with color display. |
| atarist | Atari ST | Family of home computers known for MIDI and productivity capabilities. |
| atarixe | Atari XE | 8-bit home computer similar to Atari 800. |
| atomiswave | Atomiswave | Arcade system board developed by Sammy Corporation. |
| bbcmicro | BBC Micro | Series of microcomputers developed by Acorn for educational use. |
| c64 | Commodore 64 | One of the best-selling 8-bit home computers of all time. |
| cdimono1 | Philips CD-i Mono-I | Multimedia CD-ROM console developed by Philips. |
| cdtv | Commodore CDTV | Multimedia platform based on Amiga computers. |
| chailove | ChaiLove | Retro game framework for creating games in Lua. |
| channelf | Fairchild Channel F | Second-generation home video game console. |
| coco | Tandy CoCo | Color Computer line of home computers by Tandy/Radio Shack. |
| colecovision | ColecoVision | Second-generation home video game console known for arcade ports. |
| consolearcade | Console Arcade | General folder for home consoles that play arcade-style games. |
| cps | Capcom CPS | Capcom arcade system boards used in numerous arcade titles. |
| cps1 | Capcom CPS-1 | First version of Capcom's arcade system board. |
| cps2 | Capcom CPS-2 | Second version with improved graphics and encryption. |
| cps3 | Capcom CPS-3 | Third-generation arcade system board with advanced 3D graphics. |
| crvision | VTech CreatiVision | Hybrid home computer and game console. |
| daphne | Daphne | Emulator for laserdisc-based arcade games. |
| desktop | Desktop | Folder for .desktop and misc files in Linux/SteamOS. |
| doom | DOOM | Folder containing files related to the classic first-person shooter. |
| dos | DOS | Microsoft Disk Operating System, widely used for early PC games. |
| dragon32 | Dragon 32 | Home computer released in the UK with 8-bit architecture. |
| dreamcast | Sega Dreamcast | 128-bit home console with innovative online features. |
| easyrpg | EasyRPG | Open-source RPG engine compatible with RPG Maker 2000/2003 games. |
| electron | Acorn Electron | Budget 8-bit home computer developed by Acorn. |
| emulators | Emulators | Software that mimics other systems or consoles. |
| famicom | Nintendo Famicom | Japanese version of the Nintendo Entertainment System (NES). |
| fba | Final Burn Alpha | Arcade emulator for CPS, Neo Geo, and other boards. |
| fbneo | Final Burn Neo | Updated version of Final Burn Alpha with additional features. |
| fds | Famicom Disk System | Floppy disk add-on for Famicom in Japan. |
| flash | Adobe Flash | Folder containing Flash game or animation files. |
| fm7 | Fujitsu FM-7 | 8-bit home computer for education and gaming in Japan. |
| fmtowns | Fujitsu FM Towns | Series of 16-bit/32-bit home computers for gaming and multimedia. |
| gamate | Gamate | Handheld console developed by Bit Corporation. |
| gameandwatch | Nintendo Game & Watch | Series of handheld LCD games by Nintendo. |
| gamecom | Tiger Game.com | Handheld console with touchscreen and limited library. |
| gamegear | Sega Game Gear | Color handheld console competing with Nintendo Game Boy. |
| gb | Nintendo Game Boy | Original 8-bit handheld console by Nintendo. |
| gba | Nintendo Game Boy Advance | 32-bit handheld console with backward compatibility. |
| gbc | Nintendo Game Boy Color | Color version of the original Game Boy. |
| gc | Nintendo GameCube | 128-bit home console with small optical discs. |
| genesis | Sega Genesis | 16-bit home console known for arcade ports and fast gameplay. |
| gmaster | Watara GMaster | Handheld game console. |
| gx4000 | Amstrad GX4000 | 8-bit/16-bit home console with limited commercial success. |
| intellivision | Mattel Intellivision | Second-generation home console with improved graphics. |
| j2me | Java 2 Micro Edition | Platform for mobile games and applications. |
| laserdisc | Laserdisc | Folder containing laserdisc arcade or media content. |
| lcdgames | LCD Games | Folder containing handheld LCD game files. |
| lowresnx | LowResNX | Fantasy console for creating low-resolution retro games. |
| lutro | Lutro | Lua-based retro-style game framework. |
| macintosh | Macintosh | Family of Apple personal computers. |
| mark3 | Sega Mark III | Japanese version of the Master System. |
| mame | MAME | Multiple Arcade Machine Emulator. |
| mastersystem | Sega Master System | 8-bit console with strong 2D graphics. |
| megacd | Sega Mega CD | CD-ROM add-on for Sega Genesis/Mega Drive. |
| megacdjp | Sega Mega CD (Japan) | Japanese version of the Mega CD. |
| megadrive | Sega Mega Drive | International name for Sega Genesis. |
| megadrivejp | Sega Mega Drive (Japan) | Japanese release of the Mega Drive. |
| megaduck | Welback Mega Duck | Handheld console compatible with some Game Boy games. |
| mess | MESS | Multi Emulator Super System for computers and consoles. |
| model2 | Sega Model 2 | Arcade board with 3D graphics capabilities. |
| moto | Motorcycle Games | Folder for motorcycle racing titles. |
| msx | MSX | Standardized 8-bit home computer platform. |
| msx1 | MSX 1 | First generation of MSX home computers. |
| msx2 | MSX 2 | Second generation of MSX with improved graphics/sound. |
| msxturbor | MSX turbo R | Enhanced final generation of the MSX standard. |
| mugen | M.U.G.E.N | Customizable 2D fighting game engine. |
| multivision | Samsung Multivision | Hybrid console/computer released in South Korea. |
| n3ds | Nintendo 3DS | Handheld console with stereoscopic 3D and backward compatibility. |
| n64 | Nintendo 64 | 64-bit home console using cartridges. |
| n64dd | Nintendo 64DD | Disk drive add-on for Nintendo 64. |
| naomi | Sega NAOMI | Arcade board based on Dreamcast hardware. |
| naomi2 | Sega NAOMI 2 | Upgraded NAOMI arcade hardware. |
| naomigd | Sega NAOMI GD-ROM | GD-ROM add-on for NAOMI arcade system. |
| nds | Nintendo DS | Dual-screen handheld console. |
| neogeo | Neo Geo AES/MVS | Cartridge-based arcade/home console by SNK. |
| neogeocd | Neo Geo CD | CD-ROM version of Neo Geo. |
| neogeocdjp | Neo Geo CD (Japan) | Japanese release of Neo Geo CD. |
| nes | Nintendo Entertainment System | 8-bit home console by Nintendo. |
| ngp | Neo Geo Pocket | Monochrome handheld console. |
| ngpc | Neo Geo Pocket Color | Color handheld console by SNK. |
| odyssey2 | Magnavox Odyssey² | Second-generation console with keyboard for educational titles. |
| openbor | OpenBOR | 2D beat ’em up game engine. |
| palm | Palm OS Devices | Folder for Palm handheld applications/games. |
| pc | PC / DOS | Folder for PC game ports and DOS titles. |
| pc88 | NEC PC-8800 Series | 8-bit/16-bit home computer line popular in Japan. |
| pc98 | NEC PC-9800 Series | 16-bit Japanese home computers. |
| pcarcade | PC Arcade | PC-based arcade games or emulation. |
| pcengine | NEC PC Engine / TurboGrafx-16 | 8/16-bit home console known for HuCards. |
| pcenginecd | NEC PC Engine CD | CD-ROM add-on for PC Engine. |
| pcfx | NEC PC-FX | 32-bit home console focusing on FMV games. |
| pico8 | Pico-8 | Fantasy console for tiny retro-style games. |
| plus4 | Commodore Plus/4 | Successor to VIC-20 with built-in productivity software. |
| pokemini | Pokémon Mini | Nintendo handheld console. |
| portmaster | PortMaster Games | Folder for PortMaster games/engine. |
| ports | Game Ports | Folder for cross-platform ports. |
| ps2 | Sony PlayStation 2 | 128-bit console with DVD playback. |
| ps3 | Sony PlayStation 3 | HD console with Blu-ray support. |
| psp | Sony PlayStation Portable | Handheld console with multimedia support. |
| psvita | Sony PlayStation Vita | Advanced handheld with OLED/LED display. |
| psx | Sony PlayStation | 32-bit home console. |
| pv1000 | Casio PV-1000 | Early 8-bit home console. |
| quake | Quake Engine | Folder for Quake engine or source ports. |
| satellaview | Satellaview | Satellite modem add-on for Super Famicom. |
| saturn | Sega Saturn | 32-bit console emphasizing 2D arcade ports. |
| saturnjp | Sega Saturn (Japan) | Japanese release with exclusive titles. |
| scummvm | ScummVM | Emulator for classic point-and-click adventure games. |
| scv | Epoch Super Cassette Vision | Japanese 8-bit home console. |
| sega32x | Sega 32X | 32-bit add-on for Genesis. |
| sega32xjp | Sega 32X (Japan) | Japanese version of 32X. |
| sega32xna | Sega 32X (NA) | North American version of 32X. |
| segacd | Sega CD | CD-ROM add-on for Genesis. |
| snes | Super Nintendo Entertainment System | 16-bit console. |
| snesna | SNES (North America) | North American SNES release. |
| sfc | Super Famicom | Japanese SNES release. |
| solarus | Solarus Engine | Open-source action-RPG engine. |
| spectravideo | Spectravideo | 8-bit computers that influenced MSX design. |
| stv | Sega Titan Video | Arcade board with 2D sprite hardware. |
| sufami | Sufami Turbo | Super Famicom cartridge add-on. |
| supergrafx | NEC SuperGrafx | Enhanced PC Engine with better graphics. |
| supervision | Watara Supervision | 8-bit handheld console. |
| supracan | Funtech Super Acan | 16-bit console released in Taiwan. |
| switch | Nintendo Switch | Hybrid home/handheld console. |
| symbian | Symbian OS | Early smartphone platform. |
| tanodragon | Tano Dragon | Fantasy/retro gaming system. |
| tg16 | TurboGrafx-16 | North American PC Engine. |
| tg-cd | TurboGrafx-CD | CD-ROM add-on for TG16. |
| ti99 | TI-99 | 16-bit home computer by Texas Instruments. |
| tic80 | TIC-80 | Fantasy console for retro-style games in Lua. |
| to8 | Thomson TO8 | 8-bit French home computer. |
| uzebox | Uzebox | Open-source 8-bit minimalist retro console. |
| vectrex | Vectrex | Vector-based home console with built-in screen. |
| vic20 | Commodore VIC-20 | 8-bit home computer. |
| vircon32 | Vircon32 | 32-bit fantasy console. |
| videopac | Magnavox Videopac | European Odyssey² console. |
| virtualboy | Nintendo Virtual Boy | 3D stereoscopic home console. |
| vsmile | VTech V.Smile | Educational console for children. |
| wasm4 | WASM-4 | Fantasy console for retro games in WebAssembly. |
| wii | Nintendo Wii | Home console with motion controls. |
| wiiu | Nintendo Wii U | Home console with GamePad touchscreen controller. |
| windows3x | Windows 3.x | Early Windows OS series supporting games. |
| windows9x | Windows 95/98/ME | Consumer-oriented Windows OS series. |
| wonderswan | Bandai WonderSwan | Monochrome handheld console. |
| wonderswancolor | Bandai WonderSwan Color | Color version of WonderSwan handheld console. |
| x1 | Sharp X1 | Japanese 8-bit home computer. |
| x68000 | Sharp X68000 | High-end Japanese home computer with arcade-quality graphics. |
| xbox | Microsoft Xbox | First-generation 128-bit console introducing Xbox Live. |
| zx81 | Sinclair ZX81 | Early low-cost 8-bit home computer. |
| zxspectrum | ZX Spectrum | Popular 8-bit UK home computer. |
| zmachine | Z-Machine | Virtual machine for running text-based interactive fiction. |

---
