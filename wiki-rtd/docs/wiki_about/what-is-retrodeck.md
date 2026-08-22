# What is RetroDECK?

<img src="../../wiki_images/logos/rd-logo-box.png" width="400" alt="RetroDECK and ES-DE logo">

For a quick overview check the website.

[retrodeck.net]( https://retrodeck.net/)

## What is RetroDECK?

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="75" alt="">

RetroDECK is a powerful all-in-one retro gaming platform designed for handheld gaming PCs like the Steam Deck, full Linux desktops, Linux HTPC setups and Linux-based PC consoles such as the Steam Machine. 

Delivered as a self-contained Flatpak app, it gives you everything you need for retro gaming right out of the box, no manual setup required. 

By integrating a wide range of components such as emulators, game engines, ports and built-in tools, RetroDECK brings all your favorite games together in one streamlined, easy-to-use package.

---

## Definition of Components

<img src="../../wiki_icons/retrodeck/icon-component.svg" width="75" alt="">

RetroDECK categorizes software within the platform as distinct **components**, organized into the following groups:

### Clients

**Clients** are applications that connect to external servers or online services to provide access to multiplayer functionality, streaming, or other remotely hosted content. They rely entirely on an external host or service to function and their **primary functionality is online or LAN multiplayer**.

**Example:**

- **Mudlet** - A MUD client for connecting to text-based **Multi User Dungeon** servers.
- **Quake3e** - A Quake 3 engine re-implementation client for connecting to **Quake III Arena** multiplayer servers with mod support.

### Emulators

**Emulators** are applications that reproduce the hardware and behavior of a specific system, such as a game console or an arcade board. They allow software designed for one system to run on another by replicating the original system's functionality and characteristics.

**Examples:**

- **PCSX2** - PlayStation 2 emulator.
- **Vita3K** - PlayStation Vita emulator.

### Engines

**Engines** are **Game Engines** designed to run **multiple local games or mods** built for them. This includes native engines and **engine re-implementations** that replace the original engine while maintaining compatibility with existing games and requiring the original game's data or source assets.

**Examples:**

- **OpenBOR** - Open-source beat 'em up engine. <-- Game Engine
- **Solarus** - Action-RPG engine.  <-- Game Engine
- **PICO-8** - Fantasy console engine.  <-- Game Engine
- **UZDoom** - Source port for DOOM-engine games.  <-- Engine re-implementation

### Frontends

**Frontends** provide the primary user interface for browsing, launching, and managing games and other supported content.

**Example:**

- **ES-DE (EmulationStation Desktop Edition)** - The default RetroDECK frontend, with minor customizations.

### Games

**Games** are **standalone, unique titles** that can be launched and played as its own complete experience.

**Example:**

- Games built into or distributed through **RetroDECK**.

### Multi-Emulators

**Multi-emulators** are platforms capable of emulating multiple systems through a single application. They typically use modular cores or components and provide unified configuration and management across supported systems.

**Examples:**

- **MAME** - Multi-purpose emulation framework focused on preserving and emulating arcade hardware.
- **RetroArch** - Multi-system frontend and emulation platform supporting numerous systems through Libretro cores.

### Ports

**Ports** are **single games** adapted or recompiled to run natively on a specific engine,framework, or platform. Unlike emulated games, ports run directly on the target system without requiring emulation. A **Port** typically **requires the original game's data or source assets** to function. 

**Example:**

- Ports built into or distributed through **RetroDECK**.

### Utilities

**Utilities** are non-gaming applications software. They provide tools or functionality that complement the platform but do not themselves run games.

**Examples:**

- **FLIPS** - Tool for applying and creating .ips ROM patches.
- **PortMaster** - Application for managing and installing game ports.
- **Steam ROM Manager** - Tool for managing and importing ROMs into Steam.

--- 

## What Software and Features Are Included?

To see the full list on what is included so far, read:

**[RetroDECK: What is included?](../wiki_about/what-is-included.md)**

---

## Key Main Features of RetroDECK

<img src="../../wiki_icons/retrodeck/icon-assembler.svg" width="75" alt="">


RetroDECK is designed to keep its functionality self-contained within the application, minimizing the need for additional software or external dependencies.

The following table provides a concise overview of RetroDECK's major features and core concepts:

| Feature | Description |
|---|---|
| **All-in-One, Self-Contained Design** | Distributed as a **sandboxed Flatpak**, keeping application components and files within the Flatpak environment. This simplifies installation, management and cleanup. |
| **Component Isolation** | Components run in their own **subsandbox** container exposing their core functionality when needed. Clear boundaries between **user space** and the sandbox's **read-only filesystem**. |
| **Easy to Install** | Available on **Flathub** and installable via your software center, including **KDE Discover**, **Bazaar** and **GNOME Software**. |
| **Easy to Remove**  | Uninstalling RetroDECK safely removes all application files while keeping user data in `retrodeck/` intact. Everything else is removed automatically by clicking uninstall in your software center. |
| **Easy to Update**                    | Updates automatically through your software center like any other Flatpak application.                             |
| **RetroDECK Configurator** | A powerful **multi-tool** accessible directly from the **ES-DE main menu**, providing a unified interface for managing system configurations, using various tools and adding or removing functionality. |
| **RetroDECK Framework** | The heart and backend of RetroDECK, providing integration through APIs used by all features such as the **RetroDECK Configurator** and other components. |
| **RetroENGINE**             | A headless game runner designed for power users and developers.                                                    |


---

## Key Features of the RetroDECK Framework & Configurator

<img src="../../wiki_icons/retrodeck/icon-configurator.svg" width="75" alt="">

A multi-tool with a powerful backend. 

| Feature                          | Description                                                                                                   |
|---------------------------------|---------------------------------------------------------------------------------------------------------------|
| **Automatic BIOS handling**      | RetroDECK can check for required BIOS files and auto-install supported ones to simplify setup.                |
| **File-management utilities**    | Tools for organizing or moving folders and components within RetroDECK.                                       |
| **Full content management**      | Organize all user-accessible content in RetroDECK, including backups, BIOS, borders, cheats, ES-DE, logs, mods, ROMs, saves, screenshots, states, shaders, texture packs and storage. RetroDECK exposes dedicated folders for easy access: <br>• `retrodeck/backups/` <br>• `retrodeck/bios/` <br>• `retrodeck/borders/` <br>• `retrodeck/cheats/` <br>• `retrodeck/ES-DE/` <br>• `retrodeck/logs/` <br>• `retrodeck/mods/` <br>• `retrodeck/roms/` <br>• `retrodeck/saves/` <br>• `retrodeck/screenshots/` <br>• `retrodeck/states/` <br>• `retrodeck/shaders/` <br>• `retrodeck/texture_packs/` <br>• `retrodeck/storage/` - a catch-all for miscellaneous user-accessible data |
| **Game compression tools**       | Reduce file sizes with built-in compression utilities to save storage space.                                  |
| **Global presets**               | Configure multiple components at once with universal presets, including: <br> - RetroAchievements <br> - Borders and overlays <br> - Widescreen enhancements <br> - Swapped A/B or X/Y buttons for Nintendo platforms <br> - Additional system-wide options |
| **Prebuilt Steam Input Templates** | Quickly apply controller templates tailored for Steam Deck, external controllers and more.                 |
| **Run games with RetroENGINE**   | Launch any supported title with a simple double-click through RetroDECK’s streamlined headless game runner.  |
| **Sync games with Steam**        | Seamlessly integrate your favorite titles into your Steam library via built-in SRM and ES-DE favorites integration. |
| **Troubleshooting helpers**      | Diagnose issues using tools like the Multi-File Structure Checker, environment repair options and one-click component reset functions. |
| **Unique Component Wrappers**    | Some components, like **UZDoom** and **OpenBOR**, use custom wrappers to simplify launching. UZDoom supports a custom `.doom` format for easier mod integration, while OpenBOR uses `.bor` or `.openbor` formats for its games. |



---

## Key Component Backend Features inside of RetroDECK

<img src="../../wiki_icons/retrodeck/icon-framework.svg" width="75" alt="">

RetroDECK organizes all software as isolated components, each running within a layered, self-contained environment. This architecture provides stability, flexibility and efficient management of emulators, engines, ports and other systems.


| Feature / Benefit           | Details                                                                                                          |
|-----------------------------|------------------------------------------------------------------------------------------------------------------|
| **Docker-Inspired Flow**    | The architecture behaves like launching small Docker-style containers built from reusable layers, but inside Flatpak. |
| **Dynamic Layer Stacking**  | When a component runs, RetroDECK dynamically assembles its runtime from the base layer upward, like constructing a lightweight container on demand. |
| **Flexibility**             | New components can be added or customized without altering the base runtime.                                     |
| **Isolated Environments**   | Each component only sees the libraries it needs, preventing cross-component interference and ensuring stability. |
| **Scalability**             | Easy to expand with more components, each remaining isolated yet efficiently layered.                            |


---

## RetroDECK Is Currently in BETA

<img src="../../wiki_icons/retrodeck/icon-hunter.svg" width="75" alt="">

RetroDECK is actively evolving. It is stable enough for daily use, but major updates may still introduce significant changes, new features, or adjustments.

### Missing Features 

The following features are planned for future RetroDECK releases to enhance functionality, usability and system support:

| Feature                              | Description                                                                                       |
|-------------------------------------|---------------------------------------------------------------------------------------------------|
| **Additional Components** | Expand compatibility with more clients, emulators, multi-emulators, engines, ports and more.                                     |
| **Cloud synchronization**            | Sync saves, states, configurations and more across devices for seamless gameplay.               |
| **Dynamic external display resolution** | Adjust resolution automatically for docked setups or multiple displays.                          |
| **Enhanced gyro support**            | Improved motion control functionality across compatible systems.                                  |
| **Improved art assets**              | Updated mascot, logos, icons and new easter eggs for a polished visual experience.               |
| **Multi-user profile system**        | Support for multiple users on a single device, keeping settings, saves and preferences separate. |
| **Rebuilt Configurator & first-run installer** | Modernized setup experience developed in Godot for a unified, intuitive interface.          |
| **SFTP support**                     | Access and manage files remotely using SFTP for flexible workflow.                                |
| **USB transfer support**             | Easily transfer files and manage RetroDECK content offline via USB.                               |

---

## Main Version vs. Cooker Version

What are the versions?

| Version            | Description                                                                                           |
|-------------------|-------------------------------------------------------------------------------------------------------|
| **Cooker Version** | Development build that updates frequently and includes experimental or in-progress features. Highly unstable and intended only for testers and developers. |
| **Main Version**   | Stable build published on Flathub, recommended for all users. Designed for reliability and everyday use. |

---

## What Are We Working on Right Now?

To stay up-to-date with the latest RetroDECK developments:  

- **Follow us on social media** - Links are available on the [Wiki Start Page](../index.md).  
- **Check the RetroDECK Blog** - Read updates and announcements on the [blog](../blog/index.md).  
- **Explore GitHub issues** - See ongoing work, planned features and community discussions on [GitHub](https://github.com/RetroDECK/RetroDECK/issues/).  

## Patch Notes and Known Issues

[Version History](../wiki_rd_versions/version-history.md)

[Known Issues](../wiki_general/known-issues.md)

[Get help with a problem / support](../wiki_general/support-guide.md)

---

## The FAQ❔

Could answers several questions you might have about the project as well.

[RetroDECK: FAQ](../wiki_general/faq.md)


---
