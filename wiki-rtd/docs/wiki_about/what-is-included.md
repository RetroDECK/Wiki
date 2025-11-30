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

--

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

[RetroDECK Configurator](../wiki_tool_guides/configurator/configurator.md).

---

### RetroENGINE

<img src="../../wiki_icons/retrodeck/icon-engine.svg" width="50">

**RetroENGINE** allows you to launch supported game files directly with RetroDECK from the desktop—no need to open the full application.

It supports file-type associations for common game extensions, enabling you to start games with a simple double-click. You can also launch titles directly through the command line using RetroENGINE’s CLI interface.

**Read more here:**

[RetroDECK's RetroENGINE](../wiki_system_guides/retroengine/retroengine-guide.md).

---

## Components: Systems

---

### ES-DE

<img src="../../wiki_images/logos/es-de-logo.png" width="50">

ES-DE is the base frontend for RetroDECK. RetroDECK includes specific tweaks to the ES-DE standard setup to enable unique functions like the `RetroDECK Configurator`, which can be accessed via the ES-DE Menu.

---

### PortMaster

<img src="../../wiki_images/logos/portmaster-logo.png" width="75">

PortMaster is a simple, self-contained GUI tool that makes it easy to download and install game ports on Linux devices.

[PortMaster - General Guide](../wiki_port_guides/portmaster/portmaster-guide.md)

---

### Steam Rom Manger 

<img src="../../wiki_images/logos/srm-logo.png" width="50">

Steam ROM Manager (SRM) is a bulk game importer and artwork manager for Steam.

It automatically adds games to Steam as individual entries, applies artwork, and configures Steam Input templates for each title.

[SRM - General Guide](../wiki_system_guides/srm/srm-guide.md)

---

## Components: Multi-Emulators

---

### RetroArch

<img src="../../wiki_images/logos/retroarch-logo.png" width="50">

RetroArch supports many systems via its cores, and RetroDECK ships with all cores under the stable branch of RetroArch. If there is no stable version of a core, the nightly version will be used instead.

For a full list of supported systems in RetroArch, follow the link and check the Core List:

[RetroArch - General Guide](../wiki_emulator_guides/retroarch/retroarch-guide.md)

---

### MAME

<img src="../../wiki_images/logos/mame-logo.png" width="100">

The full version of the multi-arcade emulator MAME.

[MAME - General Guide](../wiki_emulator_guides/mame/mame-guide.md)

---

## Components: Standalone Emulators

---

### CEMU

<img src="../../wiki_images/logos/cemu-logo.png" width="50">

The WiiU Emulator CEMU.

[Cemu - General Guide](../wiki_emulator_guides/cemu/cemu-guide.md)

---

### Dolphin & Primehack

<img src="../../wiki_images/logos/dolphin-logo.png" width="50"> <img src="../../wiki_images/logos/primehack-logo.png" width="50">

The Wii and GameCube Emulator Dolphin and The Metroid Prime fork of Dolphin.

[Dolphin / Primehack - General Guide](../wiki_emulator_guides/dolphin-primehack/dolphin-primehack-guide.md)

---

### melonDS

<img src="../../wiki_images/logos/melonds-logo.svg" width="50">

The Nintendo DS emulator melonDS.

[melonDS - General Guide](../wiki_emulator_guides/melonds/melonds-guide.md)

---

### PCSX2

<img src="../../wiki_images/logos/pcsx2-logo.png" width="125">

The Playstation 2 emulator PCSX2.

[PCSX2 - General Guide](../wiki_emulator_guides/pcsx2/pcsx2-guide.md)

---

### PPSSPP

<img src="../../wiki_images/logos/ppsspp-logo.png" width="50">

The PSP emulator PPSSPP.

[PPSSPP - General Guide](../wiki_emulator_guides/ppsspp/ppsspp-guide.md)

---

### RPCS3

<img src="../../wiki_images/logos/rpcs3-logo.png" width="50">

The PS3 emulator RPCS3.

[RPCS3 - General Guide](../wiki_emulator_guides/rpcs3/rpcs3-guide.md)

---

### Ruffle

<img src="../../wiki_images/logos/ruffle-logo.svg" width="50">

The flash emulator Ruffle.

[Ruffle - General Guide](../wiki_emulator_guides/ruffle/ruffle-guide.md)

---

### Vita3k

<img src="../../wiki_images/logos/vita3k-logo.png" width="50">

The PSVita emulator Vita3k.

[Vita3k - General Guide](../wiki_emulator_guides/vita3k/vita3k-guide.md)

---

### XEMU

<img src="../../wiki_images/logos/xemu-logo.png" width="50">

The Xbox emulator XEMU.

[XEMU - General Guide](../wiki_emulator_guides/xemu/xemu-guide.md)



---

## Components: Engines

---

### Solarus

<img src="../../wiki_images/logos/solarus-logo.svg" width="130">

Solarus is a free and open-source 2D game engine written in C++, that can run games scripted in Lua. It has been designed with 16-bit classic Action-RPGs in mind, and is available on a wide range of platforms.

[Solarus - General Guide](../wiki_engine_guides/solarus/solarus-guide.md)

### GZDoom

<img src="../../wiki_images/logos/gzdoom-logo.png" width="50">

GZDoom is a feature centric port for all Doom engine games, based on ZDoom, adding an OpenGL renderer and powerful scripting capabilities.

[GZDoom - General Guide](../wiki_engine_guides/gzdoom/gzdoom-guide.md)

### IKEMEN Go (M.U.G.E.N)

<img src="../../wiki_images/logos/ikemen-go-logo.png" width="50">

IKEMEN Go is a remake of the IKEMEN (open source fighting games engine that supports M.U.G.E.N resources) in Google’s Programming Language “Go”.

[IKEMEN Go - General Guide](../wiki_engine_guides/ikemengo/ikemengo-guide.md)

### Pico-8

<img src="../../wiki_images/logos/pico-8-logo.svg" width="125">

The fantasy console Pico-8.

[Pico-8 - General Guide](../wiki_engine_guides/pico8/pico8-guide.md)

---

## Components: Legacy

Legacy Components are components that remain included in RetroDECK but are no longer actively supported.  
This may be due to halted development by their creators, licensing changes that prevent further updates, or other limiting factors.

They are provided **as-is** and will not receive future updates or improvements.

### Duckstation (Legacy)

<img src="../../wiki_images/logos/duckstation-logo.png" width="50">

Playstation 1 (PSX) emulator Duckstation (has made licensing changes).

[Duckstation - General Guide](../wiki_emulator_guides/duckstation/duckstation-guide.md)

---

## Other

---

### Global Hotkeys and Steam Input Controller Templates

For all Global Hotkeys & Steam Inputs Templates included in RetroDECK.

**Read more here:**

[Supported Controllers / Hotkeys](../wiki_rd_controls/hotkeys-retrodeck.md).

---

### Supported Devices

The devices RetroDECK currently support.

**Read more here:**

[Supported Devices](../wiki_general/supported-devices.md)


---

### Folder Icons

Custom artwork folder icons.

---