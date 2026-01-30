# RetroDECK FAQ

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="75">

Welcome to the RetroDECK FAQ your all-in-one place for quick answers about installation, usage, features, and more.

---

## FAQ: Cooker

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **What is RetroDECK Cooker?** | [RetroDECK Cooker](https://github.com/RetroDECK/Cooker) is a development build of [RetroDECK](https://github.com/RetroDECK/) designed for testing and development purposes. These builds represent the latest commits and may be unstable as they have not always been fully reviewed. RetroDECK Cooker is intended for developers and testers who wish to try cutting-edge features. Please note that the Cooker is not supported for general user use. |
| **Why the name "Cooker"?** 🍲 | The name "Cooker" signifies something that's currently being developed, like a dish that's cooking but not yet ready to be served. This term was also historically used by Linux Mandrake and Mandriva for their bleeding-edge development channels. |
| **Why do the Cooker releases have strange names?** | Cooker releases have randomly generated names to help users easily identify which version they are running. |
| **Can I help with testing?** | Yes! You can offer to help with testing by posting in the `💙-i-want-to-help` channel on our [Discord](https://discord.gg/WDc5C9YWMx). While anyone can download and use the cooker builds, we recommend informing the RetroDECK team and flagging yourself as a tester. This ensures the team can provide you with proper support during the testing process. |
| **How do I start with testing?** | To get started with testing, please read the [Testing Guide](../wiki_development/testing/retrodeck-testing.md). |
| **How do I upgrade from one Cooker version to another?** | You can update to the latest Cooker version via the auto-updater prompt when launching RetroDECK Cooker. However, the auto-updater might not always function correctly during testing. In such cases, manually download the latest release from the [RetroDECK Cooker GitHub page](https://github.com/RetroDECK/RetroDECK-cooker). After updating, verify that you're on the correct Cooker version by checking the version in the ES-DE menu. **Note:** Always ensure you are on the latest Cooker version before reporting any bugs. |
| **How do I uninstall RetroDECK Cooker?** | You can uninstall RetroDECK Cooker through your application manager (e.g., Discover) by searching for RetroDECK and clicking "Uninstall." Alternatively, you can uninstall it via the terminal with the following command: `flatpak remove RetroDECK`. |

---

## FAQ: Documentation & Wiki

<img src="../../wiki_icons/pixelitos/accessories-notes.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **What is `sudo`?** | The command `sudo` stands for "superuser do." It allows a permitted user to execute a command as the superuser (or another user). In the context of `sudo`, `su` refers to the **superuser**. |
| **In the Windows world, what is the equivalent of `sudo`?** | Think of `sudo` as equivalent to "Run as Administrator" in Windows. Here’s the comparison: <br> `administrator` = `superuser` <br> `run as administrator` = `sudo` |
| **What does the `~` character mean?** | The tilde (`~`) represents the home directory of the currently logged-in user in UNIX-based systems. For example, on the Steam Deck: <br> `~ = /home/deck` <br> For more information, see [Wikipedia: Home Directory](https://en.wikipedia.org/wiki/Home_directory). |
| **What does the acronym `SA` stand for?** | `SA` stands for **Standalone**, meaning the emulator is a separate program that runs within RetroDECK, rather than being integrated as a core inside RetroArch. |
| **What does the acronym `CLI` stand for?** | `CLI` stands for **Command-Line Interface**, which refers to a way of interacting with a computer program by typing commands in a terminal or console. |
| **What does it mean when a guide tells me to create a `.XYZ` file?** | When a guide asks you to create a `.XYZ` file (e.g., `.ps3`, `.psvita`, `.scumm`, `.m3u`), it typically means you need to create an empty file with the given extension. You can do this by: <br> 1. Right-click → **Create New** → **Text File** <br> 2. Open the file with a text editor (e.g., Kate, Kwrite, or any text editor you prefer). <br> **Note:** This process is typically done in KDE. |
| **What are "WIP (Work in Progress) Articles"?** | "WIP" stands for **Work in Progress**. These articles are either: <br> - Preparations for an upcoming update. <br> - Incomplete articles that are still being written or developed. |

---

## FAQ: Emulation

<img src="../../wiki_icons/pixelitos/retroarch.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **What is a ROM file used by emulators?** | A ROM file is a digital copy of data from a read-only memory (ROM) chip, typically found in computers or video game cartridges. For arcade systems, data often comes from multiple chips, combined into a *ROM set*. Emulators use ROM files to replicate the functionality of the original hardware, allowing classic games to run on modern devices. |
| **What are the types of Arcade ROM sets?** | **Non-Merged Sets**: Each game has everything required in a single ZIP file-simple but space-inefficient.<br> **Split Sets**: The parent ROM contains core data, while clones include only differences. More space-efficient.<br> **Merged Sets**: Parent and clone ROMs are packaged together into one ZIP-space-efficient but harder to manage. |
| **What are CD image formats and disc images?** | Disc images are exact digital copies of physical discs and allow games to be played without the original media. Common disc image formats include:<br><br> **.iso** - Standard uncompressed optical disc image.<br> **.nrg** - Nero-generated CD/DVD image format.<br> **.bin + .cue** - `.bin` contains data/audio; `.cue` contains disc layout and should be loaded by the emulator.<br> **.mdf + .mds** - `.mdf` holds disc data; `.mds` stores track structure.<br> **.chd** - Compressed, lossless format developed for MAME; recommended for systems like 3DO, Dreamcast, Sega CD, Neo Geo CD, PC Engine CD, PSX, PS2, and Saturn. |
| **Why are all emulation games called ROMs?** | Historically, emulation began with cartridge dumps-**ROM** chips. Over time, “ROM” became a general term for any emulated game file, even disc images (which are often called ISOs). Today, “ROM” is commonly used as a catch-all term for all emulated game formats. |
| **Save States or In-Game Saves-what should I use?** | Always prefer **In-Game Saves** for reliability and compatibility. Save states are bound to a specific emulator version / core version, making them vulnerable to breakage after updates, configuration changes, or errors. Additionally, save states are not cross-compatible between different emulators / cores.  <br><br> **Save States**: Emulator-generated snapshots of the exact game state at a specific moment. <br> **In-Game Saves**: The game’s built-in save system, designed for stability and consistency. |
| **What are Save States in emulation?** | Save states allow you to capture the precise game state at any moment-health, items, location, etc.-and resume instantly from that point.<br><br> **Benefits**:<br> • Convenient for retrying difficult sections.<br> • Useful for experimenting without losing progress.<br><br> **Drawbacks**:<br> • May bypass intended game mechanics.<br> • More prone to corruption than in-game saves, and may break after emulator updates. <br> • Not transferable between emulators. |

---

## FAQ: Feature Requests - General

<img src="../../wiki_icons/pixelitos/retrodeck.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **Will you implement X/Y/Z system?** | Our goal is to implement and configure the best possible version of each system supported by ES-DE and beyond. If your preferred system is not currently integrated, you can request it by opening an issue on GitHub. Existing suggestions can be viewed here:<br><br> [The Great List](https://github.com/orgs/RetroDECK/projects/4) |
| **I have an idea for a new feature. How do I suggest it?** | First, check whether the idea already exists in the GitHub issue list. If it does not, you may create a new issue and describe your suggestion. You may also discuss your idea within the community before submitting it. |
| **Will you add Windows versions of emulators via Wine/Proton?** | There are currently no plans to support Windows-based emulators through Wine or Proton. |
| **Will you implement Cloud Sync/Backup?** | Yes, this is planned for a future update. Users will be able to integrate their own services through easy-to-use tools built into the Configurator. |
| **What can I use now while waiting for Cloud Sync/Backup?** | Recommended open-source alternatives include:<br>• **Rsync** - https://linux.die.net/man/1/rsync <br>• **Nextcloud** - https://nextcloud.com/ <br>• **Syncthing** - https://github.com/syncthing/syncthing <br>• **Syncthing GTK GUI** - https://flathub.org/apps/me.kozec.syncthingtk |


---

## FAQ: Feature Requests - OS

<img src="../../wiki_icons/pixelitos/linux.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **Will you support ARM Linux devices like the Steam Frame or Nvidia N1X?** <br><img src="../../wiki_icons/pixelitos/distributor-logo-knoppix.png" width="15"> | The RetroDECK Team is actively investigating the feasibility of supporting these devices. |
| **Will you support RISC-V?** <br><img src="../../wiki_icons/pixelitos/distributor-logo-debian.png" width="15"> | RISC-V support is an exciting idea, but it would require major development work and additional contributors experienced with the platform. Support may become possible as RISC-V matures and gains broader compatibility. |
| **Will you support Windows?** <br><img src="../../wiki_icons/pixelitos/distributor-logo-windows.png" width="15"> | No, RetroDECK does not currently support Windows. Alternatives include **RetroBat** (https://www.retrobat.org/). You may also install a Linux distribution on your device to use RetroDECK. Supporting Windows would require significant development resources. |
| **Will you support macOS?** <br><img src="../../wiki_icons/pixelitos/distributor-logo-macos.png" width="15"> | No, RetroDECK does not currently support macOS. Alternatives include **OpenEmu** (https://openemu.org/). Using RetroDECK on macOS would require a large engineering effort and additional macOS-experienced developers. |
| **Will you support ARM mobile devices (iOS, Android)?** <br><img src="../../wiki_icons/pixelitos/android.png" width="15"> | No, RetroDECK does not currently support ARM mobile devices. Supporting mobile ARM platforms would require rewriting major parts of the system due to different emulators, licensing models, and closed-source components (especially on Android). Substantial ARM-experienced development resources would be required. |
| **Will you support other Linux distribution methods such as Snap, AppImage, AUR, etc.?** | This is not part of the current roadmap. RetroDECK’s build system is based entirely on Flatpak and relies on Flathub for distribution. The team is not large enough to maintain alternative package formats nor do we see any need to in this moment. |


---

## FAQ: Flatpak Questions

<img src="../../wiki_icons/pixelitos/balena-etcher-electron.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **What is Flatpak?** | Flatpak is a system for building, distributing, and running sandboxed desktop applications on Linux. It ensures consistent behavior across distributions and protects apps from system updates. It is the recommended distribution method for immutable systems such as **SteamOS**. <br> Learn more: **[Introduction to Flatpak](https://docs.flatpak.org/en/latest/introduction.html)** |
| **What is Flathub?** | Flathub is the primary repository for Flatpak applications, offering a wide selection of software that can be installed and updated across all Flatpak-enabled distributions. <br> Visit: **[Flathub](https://flathub.org/)** |
| **Is RetroDECK sandboxed?** | Yes. RetroDECK writes only to:<br>• `retrodeck/` (userdata)<br>• `~/.var/net.retrodeck.retrodeck/` (configs & defaults)<br>This isolation prevents conflicts with other systems, and uninstalling RetroDECK does *not* remove your `retrodeck/` folder. <br><br>Since RetroDECK 0.10.0b, all components inside the platform are also sub-sandboxed, further improving security and isolation. Learn more here: [RetroDECK: Flatpak Details](https://retrodeck.readthedocs.io/en/latest/wiki_development/flatpak/retrodeck-flatpak/) |
| **Why does RetroDECK require the `filesystem=host` permission?** |  This permission was recommended by Flathub maintainers directly to RetroDECK. It lets users select the location for their RetroDECK data directory and sub‑directories via the Configurator and Finit, granting access to the home directory and external storage (SD cards, HDDs, NAS) for moving, storing, and managing data based on user input. A complete overview of all permissions is available in the [net.retrodeck.retrodeck.yml](https://github.com/RetroDECK/RetroDECK/blob/main/net.retrodeck.retrodeck.yml) file on GitHub.   |

---

## FAQ: Retro Gaming Platform Questions

<img src="../../wiki_icons/pixelitos/folder-green-games.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **Are you related to ES-DE?** | RetroDECK and ES-DE are separate projects, but they collaborate to provide the best possible experience. ES-DE includes RetroDECK-specific integrations. <br> Learn more: **[ES-DE FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#what-is-the-relationship-between-es-de-and-retrodeck)** |
| **Will you add another frontend like Pegasus in the future?** | Possibly. The team is open to exploring additional frontend options, but we are currently highly dependent on ES-DE for the internal framework. |
| **How does RetroDECK differ from ES-DE and decide which components to include?** | RetroDECK focuses on a curated selection of the best components rather than including all components supported by ES-DE. It integrates additional components that are hard to compile for end-users, such as XRoar, directly into the app, and supports custom formats like `.doom` (UZDoom) and `.bor` (OpenBOR), among others, for easier use and management. Occasionally, RetroDECK also includes components outside ES-DE’s scope to further enhance the user experience. |
| **Why create RetroDECK when EmuDeck, Batocera, and others exist?** | RetroDECK predates EmuDeck. Each solution has its own philosophy. RetroDECK aims to sit between EmuDeck and Batocera by providing a **Batocera-like integrated experience** directly inside your OS, without replacing it. |
| **Are you related to Batocera?** | No. RetroDECK and Batocera are separate projects, but they share knowledge and maintain positive dialogue. |
| **Can I symlink Batocera ROM folders to RetroDECK?** | Batocera uses different system folder names. Symlinking entire ROM folders is not recommended; link them **system-by-system** instead. |
| **Are you related to EmuDeck?** | No. RetroDECK and EmuDeck are separate projects. |
| **What’s the difference between RetroDECK and EmuDeck?** | **EmuDeck**: A shell script interface that installs external emulators and plugins into your system. <br> **RetroDECK**: An all-in-one Flatpak application with all supported systems internally contained and configurable. |
| **Can I install RetroDECK if I already have EmuDeck?** | Yes. RetroDECK is entirely standalone and can run alongside EmuDeck. |
| **Can I symlink EmuDeck ROMs to RetroDECK?** | Maybe. As with Batocera, symlink **system-by-system**, not the entire ROM folder tree. |
| **Batocera, EmuDeck, RetroDECK - I still don’t get it.** | • **Batocera** - A full operating system for emulation. Replaces or boots separately from your main OS.<br>• **EmuDeck** - A setup script that configures and installs standalone emulators within your OS.<br>• **RetroDECK** - An all-in-one Retro Gaming Platform Flatpak delivering a preconfigured environment while staying within your existing OS, keeping all userdata in `retrodeck/`. |

---

## FAQ: RetroDECK - General Questions

<img src="../../wiki_icons/pixelitos/accessories-clock.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **What does the “b” stand for in the version number?** | It stands for **Beta**. |
| **What software is included in RetroDECK?** | See: **[RetroDECK: What’s Included?](../wiki_about/what-is-included.md)** |
| **Does RetroDECK include any games?** | No, RetroDECK does not include any games. |
| **Does RetroDECK include Firmware or BIOS files?** | RetroDECK only includes BIOS/Firmware that are **Open-Source** or **Free to use**. All other files must be provided by the user. |
| **Can you point me to where I can find games, firmware, or BIOS?** | For legally purchased titles, use your own game backups and extract firmware/BIOS from your own consoles. Many classic games can also be purchased through **itch.io**, **GOG**, or **Steam**. |
| **When does the next RetroDECK version come out?** | When it’s ready. |
| **When does the version after the upcoming version come out?** | After the upcoming version. |
| **When will version 1.0 be released?** | In the future. |
| **Can I manually add a system RetroDECK doesn’t support yet?** | Not easily. RetroDECK is sandboxed and designed to include all relevant components internally. The best approach is to wait for official support or contribute to development. |
| **Is RetroDECK just about emulation?** | No. RetroDECK is a full retro gaming platform designed to provide a complete retro gaming experience by integrating a variety of components, including: clients, ports, emulators, multi-emulators, systems, and more. |

---

## FAQ: RetroDECK - Usage Questions

<img src="../../wiki_icons/pixelitos/drive-optical.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **Do I need to partition or format my Disk for RetroDECK?** | No. RetroDECK installs as a Flatpak. Simply install it like any other application and launch it from your desktop or Steam library. |
| **Where is RetroDECK installed?** | **`retrodeck/`** - Stores user data (ROMs, saves, mods, themes and more). This folder remains after uninstallation.<br> **`~/.var/app/net.retrodeck.retrodeck/`** - Contains the main Flatpak and settings. This folder **is removed** when uninstalling RetroDECK. |
| **Can I move the RetroDECK folders?** | Yes. You can move them using the **Move Tools** in the RetroDECK Configurator. <br> Read more: **[RetroDECK Configurator 🛠️](../wiki_configurator_guides/configurator/configurator.md)** |
| **Is there a way to reset RetroDECK?** | Yes. The RetroDECK Configurator includes several reset functions that allow you to reset different parts of the software. <br> Read more: **[RetroDECK Configurator 🛠️](../wiki_configurator_guides/configurator/configurator.md)** |
| **How do I update RetroDECK?** | Follow the instructions in: **[How-to: Update RetroDECK](../wiki_management/retrodeck-update/retrodeck-update.md)** |
| **How do I remove RetroDECK?** | Follow the instructions in: **[How-to: Remove RetroDECK](../wiki_management/retrodeck-remove/retrodeck-remove.md)** |
| **How do I move RetroDECK to a new device?** | Follow the instructions in: **[How-to: Move RetroDECK to a New Device](../wiki_management/retrodeck-move/retrodeck-move.md)** |
| **Where can I find logfiles?** | Log files are located in the hidden folder: **`retrodeck/.logs/`** |
| **Does RetroDECK ship with stable or nightly versions of systems?** | RetroDECK includes whichever version is best for compatibility and performance. For example:<br>• **RPCS3** → Nightly builds<br>• **RetroArch** → Stable releases (nightly cores only when no stable version exists) |
| **How can I recover deleted folders (BIOS, Saves, etc.) but not the files?** | Perform a **Full Reset** using the Configurator and redo the initial setup. This will recreate all missing folder structures. |
| **My `.bin + .cue` games appear twice in ES-DE - why?** | ES-DE detects both the `.bin` and `.cue` files. Use the built-in compression tool in the Configurator to convert them to `.chd`. This eliminates duplicate entries and saves storage space. |
| **How does RetroDECK handle mods, texture packs, shaders, cheats, and miscellaneous data?** | RetroDECK makes it easy to apply and manage mods, texture packs, shaders, and cheats by exposing dedicated folders in `retrodeck/texture_packs/`, `retrodeck/mods/`, `retrodeck/shaders/`, and `retrodeck/cheats/`. Additionally, a `retrodeck/storage/` folder serves as a catch‑all for miscellaneous user-accessible data, eliminating the need to search for internal Flatpak locations. |

---

## FAQ: SD Cards

<img src="../../wiki_icons/pixelitos/drive-optical.png" width="30">

| **Question** | **Answer** |
|--------------|------------|
| **Do I need to prepare my SD card in a specific way for RetroDECK?** | Yes. SD cards can behave unpredictably if not formatted properly or if they contain unsafe characters in their names. It is highly recommended to format your SD card correctly and give it a safe, simple name. |
| **How should I format my SD card?** | **Steam Deck:**<br>• `Steam` → `Storage` → choose your SD card → press **Y** → **Format Drive**.<br><br>**Other Linux OS:**<br>• Follow the SD card formatting instructions provided by your OS or desktop environment. |
| **How should I name my SD card?** | Use **only letters and numbers**:<br>• Allowed: `A-Z`, `a-z`, `0-9`<br>• Avoid: spaces, emojis, accents (`é`, `ñ`), punctuation, and symbols. |
| **Why avoid special characters in SD card names?** | Special characters often cause issues in Linux environments:<br>• **Command-line breakage** (e.g., spaces, `!`, `?`, `&`)<br>• **Script failures** when tools can’t parse unusual characters<br>• **Transfer/backup errors** in some protocols that can’t handle special characters |
| **How do I choose a good SD card?** | Follow these tips to avoid fake or poor-quality cards:<br>• Buy **reputable brands** (SanDisk, Samsung, Kingston)<br>• Purchase from **trusted retailers**, not unknown sellers<br>• Inspect packaging and printing quality<br>• Ensure metal contacts look clean and consistent<br>• Be wary of prices that are **too low**<br>• Test capacity with **F3** (Linux) or **H2testw** (Windows)<br>• Read **recent reviews** for speed & reliability<br>• Check the seller’s reputation before purchase |

---
