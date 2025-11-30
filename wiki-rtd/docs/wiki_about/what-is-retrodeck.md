# What is RetroDECK?

<img src="../../wiki_images/logos/rd-esde-logo.svg" width="400">

For a quick overview check the website.

[retrodeck.net]( https://retrodeck.net/)

## What is RetroDECK?

RetroDECK is a powerful all-in-one retro gaming platform designed for handheld gaming PCs like the Steam Deck, full Linux desktops, Linux HTPC setups, and Linux-based PC consoles such as the Steam Machine. 

Delivered as a self-contained Flatpak app, it gives you everything you need for retro gaming right out of the box, no manual setup required. 

By integrating a wide range of components such as emulators, game engines, ports, and built-in tools, RetroDECK brings all your favorite games together in one streamlined, easy-to-use package.



---

## Definition of Components

RetroDECK categorizes all software inside the platform as distinct **components**, organized into the following groups:

### Clients

A client is a system or application that connects to a server or online service to access multiplayer features, streaming, or remote content. Clients rely on an external host to function.

**Examples:** 

- **Mudlet** – A MUD client for connecting to text-based multiplayer servers.

### Emulators

An emulator is software that replicates the behavior of a specific system, whether it is real hardware (like a console or arcade machine) or a virtual/fantasy platform. Emulators allow games or applications designed for that system to run on a different device or operating environment. They aim to reproduce the original system’s behavior as accurately as possible, including its quirks, limitations, and performance characteristics.

**Examples:** 

- **RetroArch** – Multi-emulator frontend.  
- **PCSX2** – PlayStation 2 emulator.  
- **Pico-8** – Fantasy console.  
- **Vita3k** – PSVITA emulator.  

### Engines

Engines are game engines or runtime environments designed to run games built specifically for them. This can include native engines as well as **engine re-implementations** modern rewrites that replace the original engine while preserving compatibility with classic games.

**Examples:** 

- **Solarus** – Action-RPG engine.  
- **UZDoom** – Source port for Doom-engine games.  
- **OpenBOR** – Open-source Beat ’em Up engine.  

### Systems

Systems are non-gaming platforms or software environments supported within RetroDECK. These may include tools, utilities, frontends, media systems that enhance functionality but are not games themselves.

**Examples:** 

- **Steam Rom Manager** – Tool for managing and importing ROMs into Steam.  
- **ES-DE** – RetroDECK’s chosen frontend.  
- **Flips** – Tool for handling ROMs and patches.  
- **PortMaster** – Application for managing game ports and installations.  

### Ports

Ports are individual games that have been adapted to run natively through a specific engine, framework, or platform. They do not require emulation since the game has been reworked or recompiled to run directly on modern systems.

**Examples:** 

- All games installed via **PortMaster**. 
- Games built directly into **RetroDECK**.  

--- 

## What Software and Features Are Included?

To see the full list on what is included so far, read:

**[RetroDECK: What is included?](../wiki_about/what-is-included.md)**

---

## Key Main Features of RetroDECK

We believe that all functionality should be self-contained within the RetroDECK application, with no need for additional external software or dependencies.

Below is a concise overview of RetroDECK’s major features and core concepts:

| Feature / Concept                     | Description                
|---------------------------|----------------------------------------------------------------------------------------------------------------------|
| **RetroDECK Framework**   | Enhances emulators and the ES-DE interface for deeper integration and expanded functionality.                        |
| **RetroDECK RetroENGINE** | A headless game runner designed for power users and developers.                                                      |
| **RetroDECK Configurator**| A multi-tool settings utility accessible directly from the **ES-DE main menu**, allowing you to manage and adjust system configurations from a single, unified interface. |
| **Easy to Install**       | Available on **Flathub** and installable via **KDE Discover**, **Bazaar**, and **GNOME Software**.                  |
| **Easy to Update**        | Updates automatically through your software center like any other Flatpak application.                               |
| **All-in-one Contained Design**      | Distributed as a **sandboxed Flatpak**, keeping all important files in minimal locations for easy maintenance and cleanup. |

---

## Key Features of the RetroDECK Framework & Configurator

A multi-tool with a powerful backend. 

| Feature                          | Description                                                                                                   |
|---------------------------------|---------------------------------------------------------------------------------------------------------------|
| **Sync games with Steam**        | Seamlessly integrate your favorite titles into your Steam library via built-in SRM and ES-DE favorites integration. |
| **Run games with RetroENGINE**   | Launch any supported title with a simple double-click through RetroDECK’s streamlined headless game runner.  |
| **Automatic BIOS handling**      | RetroDECK can check for required BIOS files and auto-install supported ones to simplify setup.                |
| **Game compression tools**       | Reduce file sizes with built-in compression utilities to save storage space.                                  |
| **File-management utilities**    | Tools for organizing or moving folders and components within RetroDECK.                                       |
| **Troubleshooting helpers**      | Diagnose issues using tools like the Multi-File Structure Checker, environment repair options, and one-click reset functions. |
| **Prebuilt Steam Input Templates** | Quickly apply controller templates tailored for Steam Deck, external controllers, and more.                 |
| **Full content management**      | Organize ROMs, scraped media, screenshots, save files, save states, gamelists, texture packs, mods, ports, and other data. |
| **Global presets**               | Configure multiple components at once with universal presets, including: <br> - RetroAchievements <br> - Borders and overlays <br> - Widescreen enhancements <br> - Swapped A/B or X/Y buttons for Nintendo platforms <br> - Additional system-wide options |
| **Unique Component Wrappers** | Some components, like **UZDoom** and **OpenBOR**, use custom wrappers to simplify launching. UZDoom supports a custom `.doom` format for easier mod integration, while OpenBOR uses `.bor` or `.openbor` formats for its games. |

---

## Key Component Backend Features inside of RetroDECK

RetroDECK organizes all software as isolated components, each running within a layered, self-contained environment. This architecture provides stability, flexibility, and efficient management of emulators, engines, ports, and other systems.


| Feature / Benefit           | Details                                                                                                          |
|-----------------------------|------------------------------------------------------------------------------------------------------------------|
| **Isolated Environments**   | Each component only sees the libraries it needs, preventing cross-component interference and ensuring stability. |
| **Dynamic Layer Stacking**  | When a component runs, RetroDECK dynamically assembles its runtime from the base layer upward—like constructing a lightweight container on demand. |
| **Docker-Inspired Flow**    | The architecture behaves like launching small Docker-style containers built from reusable layers, but inside Flatpak. |
| **Flexibility**             | New components can be added or customized without altering the base runtime.                                     |
| **Scalability**             | Easy to expand with more components, each remaining isolated yet efficiently layered.                            |

---

## RetroDECK Is Currently in BETA

RetroDECK is actively evolving. It is stable enough for daily use, but major updates may still introduce significant changes, new features, or adjustments.

### Missing Features 

The following features are planned for future RetroDECK releases to enhance functionality, usability, and system support:

| Feature                              | Description                                                                                       |
|-------------------------------------|---------------------------------------------------------------------------------------------------|
| **Cloud synchronization**            | Sync saves, states, configurations, and more across devices for seamless gameplay.               |
| **USB transfer support**             | Easily transfer files and manage RetroDECK content offline via USB.                               |
| **SFTP support**                     | Access and manage files remotely using SFTP for flexible workflow.                                |
| **Enhanced gyro support**            | Improved motion control functionality across compatible systems.                                  |
| **Dynamic external display resolution** | Adjust resolution automatically for docked setups or multiple displays.                          |
| **Additional ES-DE supported systems** | Expand compatibility with more emulators, engines, and ports.                                     |
| **Rebuilt Configurator & first-run installer** | Modernized setup experience developed in Godot for a unified, intuitive interface.          |
| **Improved art assets**              | Updated mascot, logos, icons, and new easter eggs for a polished visual experience.               |
| **Multi-user profile system**        | Support for multiple users on a single device, keeping settings, saves, and preferences separate. |

---

## Main Version vs. Cooker Version

What are the versions?

| Version            | Description                                                                                           |
|-------------------|-------------------------------------------------------------------------------------------------------|
| **Main Version**   | The stable build published on Flathub, recommended for all users. Designed for reliability and everyday use. |
| **Cooker Version** | The development build that updates frequently and includes experimental or in-progress features. Highly unstable and intended only for testers and developers. |


---

## What Are We Working on Right Now?

To stay up-to-date with the latest RetroDECK developments:  

- **Follow us on social media** – Links are available on the [Wiki Start Page](../index.md).  
- **Check the RetroDECK Blog** – Read updates and announcements on the [blog](../blog/index.md).  
- **Explore GitHub issues** – See ongoing work, planned features, and community discussions on [GitHub](https://github.com/XargonWan/RetroDECK/issues/).  

## Patch Notes and Known Issues

[Version History](../wiki_rd_versions/version-history.md)

[Known Issues](../wiki_general/known-issues.md)

[Get help with a problem / support](../wiki_general/support-guide.md)

---

## The FAQs❔

Could answers several questions you might have about the project as well.

[FAQ: General Questions](../wiki_faq/faq-rd-general.md)

[FAQ: Usage Questions](../wiki_faq/faq-rd-usage.md)

[FAQ: Feature Requests](../wiki_faq/faq-feature.md)

[FAQ: Documentation Questions](../wiki_faq/faq-documentation.md)

---