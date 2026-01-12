# RetroDECK: What's included?

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="100">

What follows is a list of features and software currently included in RetroDECK.


## RetroDECK does NOT include any games, proprietary BIOS files, or firmware.

- Users must provide their own legally obtained game files. This includes their own **console backups** or **free and open-source games** they download themselves.
- Some titles can be obtained through RetroDECK’s **built-in PortMaster**, which offers a selection of free and open-source ports, but many still requires legally obtained game files.
- RetroDECK also supports running fully open-source games such as **Freedoom** with **built-in engines** like **GZDoom**.
- Users must provide any required BIOS or firmware files from their own consoles, or legally obtained files (such as those for Pico-8) for systems that require them. However, RetroDECK will try to include BIOS or firmware files if they are released under an open-source license and can be legally redistributed.

## RetroDECK Features

---

### RetroDECK Framework

<img src="../../wiki_icons/retrodeck/icon-framework.svg" width="50">

RetroDECK includes the **RetroDECK Framework**, which provides deeper integration between all built-in software.  
It streamlines access to many features that would normally need to be configured individually for each system, helping create a consistent and unified experience across all emulators.

---

### RetroDECK Configurator 

<img src="../../wiki_icons/retrodeck/icon-configurator.svg" width="50">

The RetroDECK Configurator is a powerful `Utility` that exposes some parts of the `RetroDECK Framework` to the RetroDECK users.

It can be used to change/modify and manipulate various aspects of RetroDECK.

**What can RetroDECK Configurator & RetroDECK Framework do?**

It can help with:

 Feature / Tool | Description |
|----------------|-------------|
| **Game Compression** | Helps compress and optimize game files for storage efficiency. |
| **Texture Pack & Mod Management** | Simplifies installing, updating, and organizing texture packs and mods. |
| **File Management** | Provides convenient tools for organizing and handling various RetroDECK directories. |
| **Troubleshooting Tools** | Includes a BIOS checker, multi-file structure checker, and options for partial or full resets of specific functions. |
| **Automatic Installation of Free BIOS/Firmware** | Automatically installs BIOS or firmware that is legally redistributable under open-source licenses. |
| **Steam Input Profile Installer** | Installs prebuilt controller profiles for devices like the Steam Deck and external gamepads. |
| **Easy Management of User Content** | Simplifies handling of `mods`, `roms`, `texture_packs`, `scraped media`, `screenshots`, `saves/states`, `gamelists`, and more. |
| **Global Presets** | Allows enabling presets across multiple emulators at once, such as: `RetroAchievements`, `Borders`, `Widescreen Mode`, `Swap A/B X/Y for Nintendo games`, and more. |
| **Steam Sync** | Synchronizes RetroDECK favorites with Steam. |
| **Additional Utilities** | More helpful tools and features to streamline the RetroDECK experience. |

and more!

**Read more here:**

[RetroDECK Configurator](../wiki_configurator_guides/configurator/configurator.md).

---

### RetroENGINE

<img src="../../wiki_icons/retrodeck/icon-engine.svg" width="50">

**RetroENGINE** allows you to launch supported game files directly with RetroDECK from the desktop-no need to open the full application.

It supports file-type associations for common game extensions, enabling you to start games with a simple double-click. You can also launch titles directly through the command line using RetroENGINE’s CLI interface.

**Read more here:**

[RetroDECK's RetroENGINE](../wiki_system_guides/retroengine/retroengine-guide.md).

---

### Global Hotkeys and Steam Input Controller Templates

<img src="../../wiki_icons/pixelitos/antimicrox.png" width="50">

For all Global Hotkeys & Steam Inputs Templates included in RetroDECK.

**Read more here:**

[Supported Controllers / Hotkeys](../wiki_rd_controls/hotkeys-retrodeck.md).

---

### Supported Devices

<img src="../../wiki_icons/kennynl/controllers/controller_steamdeck.png" width="50">

The devices RetroDECK currently support. 

**Read more here:**

[Supported Devices](../wiki_general/supported-devices.md)


---

### Folder Icons

Custom artwork folder icons.

**Lahrs folder Icon Set:**

<img src="../../wiki_icons/folder-iconsets/lahrs-main/rd_home.ico" width="50"> 
<img src="../../wiki_icons/folder-iconsets/lahrs-main/saves.ico" width="50"> <img src="../../wiki_icons/folder-iconsets/lahrs-main/states.ico" width="50"> <img src="../../wiki_icons/folder-iconsets/lahrs-main/bios.ico" width="50"> <img src="../../wiki_icons/folder-iconsets/lahrs-main/roms/pico8.ico" width="50"> <img src="../../wiki_icons/folder-iconsets/lahrs-main/roms/doom.ico" width="50"> <img src="../../wiki_icons/folder-iconsets/lahrs-main/roms/portmaster.ico" width="50"> <img src="../../wiki_icons/folder-iconsets/lahrs-main/ES-DE/downloaded_media.ico" width="50">


---

## Components: Systems

Systems are non-gaming platforms or software environments supported within RetroDECK. These may include tools, utilities, frontends, media systems that enhance functionality but are not games themselves.

| Component | Logo | Description | Guide |
|----------|-------|-------------|-------|
| **ES-DE** | <img src="../../wiki_images/logos/es-de-logo.png" width="50"> | Base frontend for RetroDECK with custom tweaks such as the RetroDECK Configurator. | [ES-DE Frontend - General Guide](../wiki_system_guides/es-de/esde-guide.md) |
| **Flips** | <img src="../../wiki_images/logos/flips-logo.png" width="50"> | Tiny `.ips` `.bps` patcher for ROMs (used for patching ROM Hacks). | Open from Configurator | - |
| **PortMaster** | <img src="../../wiki_images/logos/portmaster-logo.png" width="75"> | GUI tool to download and install game ports on Linux devices. | [PortMaster - General Guide](../wiki_system_guides/portmaster/portmaster-guide.md) |
| **Steam ROM Manager** | <img src="../../wiki_images/logos/srm-logo.png" width="50"> | Bulk game importer and artwork manager for Steam. Adds games automatically and configures Steam Input templates. | [SRM - General Guide](../wiki_system_guides/srm/srm-guide.md) |



---

## Components: Multi-Emulators

An multi emulator is software that replicates the behavior of a multiple specific systems.

| Component | Logo | Description | Guide |
|----------|-------|-------------|-------|
| **MAME** | <img src="../../wiki_images/logos/mame-logo.png" width="100"> | Full version of the multi-arcade emulator MAME. | [MAME - General Guide](../wiki_emulator_guides/mame/mame-guide.md) |
| **RetroArch** | <img src="../../wiki_images/logos/retroarch-logo.png" width="50"> | Multi-system frontend using cores. RetroDECK includes all stable cores (nightlies if no stable version exists). | [RetroArch - General Guide](../wiki_emulator_guides/retroarch/retroarch-guide.md) |



---

## Components: Standalone Emulators

An emulator is software that replicates the behavior of a specific system, whether it is real hardware (like a console or arcade machine) or a virtual/fantasy platform.

| Component | Logo | Description | Guide |
|-----------|------|-------------|-------|
| **Azahar** | <img src="../../wiki_images/logos/azahar-logo.svg" width="50"> | N3DS emulator Azahar. | [Azahar - General Guide](../wiki_emulator_guides/azahar/azahar-guide.md) |
| **CEMU** | <img src="../../wiki_images/logos/cemu-logo.png" width="50"> | Wii U emulator CEMU. | [Cemu - General Guide](../wiki_emulator_guides/cemu/cemu-guide.md) |
| **Dolphin** | <img src="../../wiki_images/logos/dolphin-logo.png" width="50"> | Wii/GameCube emulator Dolphin | [Dolphin / Primehack - General Guide](../wiki_emulator_guides/dolphin-primehack/dolphin-primehack-guide.md) |
| **melonDS** | <img src="../../wiki_images/logos/melonds-logo.svg" width="50"> | Nintendo DS emulator melonDS. | [melonDS - General Guide](../wiki_emulator_guides/melonds/melonds-guide.md) |
| **PCSX2** | <img src="../../wiki_images/logos/pcsx2-logo.png" width="125"> | PlayStation 2 emulator PCSX2. | [PCSX2 - General Guide](../wiki_emulator_guides/pcsx2/pcsx2-guide.md) |
| **Pico-8** | <img src="../../wiki_images/logos/pico-8-logo.png" width="75"> | PICO-8 Fantasy Console. | [Pico-8 - General Guide](../wiki_emulator_guides/pico-8/pico-8-guide.md) |
| **Primehack** | <img src="../../wiki_images/logos/primehack-logo.png" width="50"> | Metroid Prime‑optimized fork Primehack. | [Dolphin / Primehack - General Guide](../wiki_emulator_guides/dolphin-primehack/dolphin-primehack-guide.md) |
| **PPSSPP** | <img src="../../wiki_images/logos/ppsspp-logo.png" width="50"> | PSP emulator PPSSPP. | [PPSSPP - General Guide](../wiki_emulator_guides/ppsspp/ppsspp-guide.md) |
| **RPCS3** | <img src="../../wiki_images/logos/rpcs3-logo.png" width="50"> | PlayStation 3 emulator RPCS3. | [RPCS3 - General Guide](../wiki_emulator_guides/rpcs3/rpcs3-guide.md) |
| **Ruffle** | <img src="../../wiki_images/logos/ruffle-logo.svg" width="50"> | Flash emulator Ruffle. | [Ruffle - General Guide](../wiki_emulator_guides/ruffle/ruffle-guide.md) |
| **Ryubing** | <img src="../../wiki_images/logos/ryubing-logo.webp" width="50"> | Switch emulator Ryubing. | [Ryubing - General Guide](../wiki_emulator_guides/ryubing/ryubing-guide.md) |
| **Vita3k** | <img src="../../wiki_images/logos/vita3k-logo.png" width="50"> | PlayStation Vita emulator Vita3k. | [Vita3k - General Guide](../wiki_emulator_guides/vita3k/vita3k-guide.md) |
| **XEMU** | <img src="../../wiki_images/logos/xemu-logo.png" width="50"> | Xbox emulator XEMU. | [XEMU - General Guide](../wiki_emulator_guides/xemu/xemu-guide.md) |
| **XRoar** | <img src="../../wiki_images/logos/xroar-tano64-logo.jpg" width="100"> | Dragon & Tandy emulator XRoar. | [XRoar - General Guide](../wiki_emulator_guides/xroar/xroar-guide.md) |


---

## Components: Engines

Engines are game engines or runtime environments designed to run games built specifically for them. This can include native engines as well as engine re-implementations modern rewrites that replace the original engine while preserving compatibility with classic games.

| Component                     | Logo                                                                                 | Description                                                                                                   | Guide                                                                                              |
|-------------------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| **GZDoom**                    | <img src="../../wiki_images/logos/gzdoom-logo.png" width="50">                     | Feature‑rich Doom engine source port with OpenGL and advanced scripting.                                      | [GZDoom - General Guide](../wiki_engine_guides/gzdoom/gzdoom-guide.md)                           |
| **IKEMEN Go (M.U.G.E.N)**     | <img src="../../wiki_images/logos/ikemen-go-logo.png" width="50">                  | Go‑based remake of IKEMEN, supporting M.U.G.E.N‑compatible fighting games.                                    | [IKEMEN Go - General Guide](../wiki_engine_guides/ikemengo/ikemengo-guide.md)                   |
| **OpenBOR**                   | <img src="../../wiki_images/logos/openbor-logo.svg" width="50">                    | Open Beats of Rage – beat ’em up game engine.                                                                | [OpenBOR - General Guide](../wiki_engine_guides/openbor/openbor-guide.md)                         |
| **Solarus**                   | <img src="../../wiki_images/logos/solarus-logo.svg" width="130">                  | Open‑source 2D engine for games scripted in Lua, inspired by 16‑bit action RPGs.                            | [Solarus - General Guide](../wiki_engine_guides/solarus/solarus-guide.md)                       |

---

## Components: Legacy

Legacy Components are components that remain included in RetroDECK but are no longer actively supported.  
This may be due to halted development by their creators, licensing changes that prevent further updates, or other limiting factors.

They are provided **as-is** and will not receive future updates or improvements.

| Component | Logo | Description | Guide |
|----------|-------|-------------|-------|
| **Duckstation (Legacy)** | <img src="../../wiki_images/logos/duckstation-logo.png" width="50"> | PlayStation 1 emulator; legacy due to licensing changes. Provided as-is. | [Duckstation - General Guide](../wiki_emulator_guides/duckstation/duckstation-guide.md) |


