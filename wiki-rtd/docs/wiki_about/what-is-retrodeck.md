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

## RetroDECK: Overarching Key Features

<img src="../../wiki_icons/retrodeck/icon-assembler.svg" width="75" alt="">

RetroDECK is designed to keep its functionality self-contained within the application, minimizing the need for additional software or external dependencies.

The following table provides a concise overview of RetroDECK's major features and core concepts:

| Feature | Description |
|---|---|
| **All-in-One, Self-Contained Design** | Distributed as a **sandboxed Flatpak**, keeping application components and files within the Flatpak environment. This simplifies installation, management and cleanup. |
| **Component Isolation** | Components run in their own **subsandbox**, exposing only the functionality they need through controlled interfaces. Clear boundaries between **user space** and the sandbox's **read-only filesystem** help prevent unintended system changes. |
| **Easy to Install** | Available on **Flathub** and installable through supported software centers, including **KDE Discover**, **Bazaar**, and **GNOME Software**. |
| **Easy to Remove** | Uninstalling RetroDECK removes its application files while keeping user data in `retrodeck/` intact. Application data is removed automatically through the software center. |
| **Easy to Update** | Updates are delivered automatically through the software center, like other Flatpak applications. |

---

## RetroDECK Framework: Features

<img src="../../wiki_icons/retrodeck/icon-framework.svg" width="75" alt="">

The **RetroDECK Framework** is the core backend of RetroDECK, providing the APIs and integration services used by the **RetroDECK Configurator** and other components.

| Feature / Benefit | Description |
|---|---|
| **Dynamic Layer Stacking** | When a component runs, RetroDECK assembles its required runtime from reusable layers with RetroDECK, providing the libraries and resources it needs. |
| **Flexibility in Isolation** | Components can be added, updated, or customized without modifying the base runtime or affecting unrelated components. |
| **Isolated Environments** | RetroDECK organizes its software into isolated components, each running within a layered, self-contained subsandbox environment. This architecture provides stability, flexibility, easy management and helps conserve storage space. |
| **Scalability** | The layered architecture makes it easier to add and maintain components while keeping them isolated, reusable, and independently manageable. |
| **Unique Component Wrappers** | Provides custom wrappers for components such as **UZDoom** and **OpenBOR** to simplify launching and integration. UZDoom supports the custom `.doom` format for easier mod integration, while OpenBOR supports `.bor` and `.openbor` game formats. |

---

## RetroDECK Configurator

<img src="../../wiki_icons/retrodeck/icon-configurator.svg" width="75" alt="">

The **RetroDECK Configurator** is a powerful **multi-tool** accessible directly from the **ES-DE main menu**. It provides a the user with a unified interface for configuring and managing RetroDECK.

| Feature | Description |
|---|---|
| **BIOS Checker** | Checks for required **BIOS, firmware and game data files** for components that require them. |
| **File Management Utilities** | Provides tools for organizing, moving and managing files and directories within RetroDECK. |
| **Full Content Management** | Provides dedicated folders for managing user-accessible RetroDECK content:<ul><li>`retrodeck/backups/`</li><li>`retrodeck/bios/`</li><li>`retrodeck/borders/`</li><li>`retrodeck/cheats/`</li><li>`retrodeck/ES-DE/`</li><li>`retrodeck/logs/`</li><li>`retrodeck/mods/`</li><li>`retrodeck/roms/`</li><li>`retrodeck/saves/`</li><li>`retrodeck/screenshots/`</li><li>`retrodeck/shaders/`</li><li>`retrodeck/states/`</li><li>`retrodeck/storage/`</li><li>`retrodeck/texture_packs/`</li><li>`retrodeck/videos/`</li></ul> |
| **Presets System** | Applies settings across multiple components or Libretro cores at once, including **RetroAchievements**, borders and overlays, widescreen enhancements, Nintendo controller layouts and other system-wide options. |
| **Steam Input Layouts** | Provides prebuilt **Steam Input layouts** for the Steam Deck, external controllers and other supported devices. |
| **Sync Games with Steam** | Integrates supported games with the Steam library using built-in **SRM** and **ES-DE Favorites** integration. |
| **Troubleshooting Helpers** | Provides diagnostic and repair tools, including the **Multi-File Structure Checker** and one-click component resets. |

---

## RetroDECK Is Currently in "Beta"

<img src="../../wiki_icons/retrodeck/icon-hunter.svg" width="75" alt="">

RetroDECK is actively evolving and is stable enough for daily use. It can be considered a **stable platform**, but major updates may still introduce significant changes, new features, and improvements as development continues toward the **Retro Gaming Platform** we envision.

We will continue to call RetroDECK **Beta** until the core features and functionality that make up our vision are fully implemented. The **Beta** designation reflects the ongoing development of the platform rather than its day-to-day stability.


### Planned Features

The following features are planned for future RetroDECK releases to improve functionality, usability and system support:

| Feature | Description |
|---|---|
| **Additional Features & Components** | Introduce new features and expand compatibility with additional components: `Clients`, `Emulators`, `Engines`, `Games`, `Multi-Emulators`, `Ports` and `Utilities`. |
| **Cloud Synchronization** | Sync saves, states, configurations and other data across devices. |
| **Godot-Based Configurator** | Replace the existing basic Zenity Configurator with a modern controller based **Godot-based** interface. |
| **Improved Art Assets** | Update logos, icons, and more. |
| **Mascot** | Make a RetroDECK mascot. |
| **Multi-User Profile System** | Support multiple users on a single device while keeping settings, saves and preferences separate. |
| **SFTP Support** | Access and manage RetroDECK files remotely using **SFTP**. |
| **USB Transfer Support** | Transfer and manage RetroDECK content offline using USB storage. |

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
