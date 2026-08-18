# RetroDECK Architecture: Overview

A short overview of the RetroDECK Architecture.

---

## Architectural Overview: Non-Standard Flatpak "The Fatpak"

<img src="../../../wiki_images/flatpak/flatpakrd.drawio.png" width="300" alt="RetroDECK Flatpak architecture">

The following flowchart illustrates how multiple components interact within RetroDECK. Components can use different architectural layers depending on their individual requirements; not every component requires every layer.

The architecture is designed to:

- Minimize dependency overhead.
- Eliminate unnecessary library duplication.
- Provide precisely isolated subsandbox environments.
- Keep application data contained within the Flatpak filesystem.
- Maintain strong isolation between components and the host system.

While RetroDECK shares some conceptual similarities with technologies such as Docker and Valve's Steam Proton Pressure Vessel, its framework, subsandboxing model and component architecture are distinct solutions developed by the RetroDECK Team. The entire system operates within a **single Flatpak application**.

---

### Reference: Minimal Flatpak

<img src="../../../wiki_images/flatpak/flatpakrd.drawio.png" width="300" alt="Minimal Flatpak architecture">

A minimal Flatpak obtains its required libraries and dependencies primarily from the Flatpak Runtime.

**Typical Flatpak application**

---

### Reference: Advanced Flatpak Design

<img src="../../../wiki_images/flatpak/flatpakadv.drawio.png" width="300" alt="Advanced Flatpak architecture with additional component layers">

An advanced Flatpak may require supplementary libraries and dependencies that are not provided by the Flatpak Runtime.

**Minority of Flatpak applications**

---

## What is a Subsandbox?

<img src="../../../wiki_icons/retrodeck/icon-container-sub-sandbox.svg" width="75" alt="RetroDECK Flatpak architecture">

A **subsandbox** is a container-launching mechanism managed by the RetroDECK Framework. It uses the RetroDECK Flatpak container and Flatpak Runtime, which provide shared libraries and dependencies for internal components.

A subsandbox controls which libraries and files a component can access. This isolation allows RetroDECK to override Flatpak Runtime library versions when required, enabling support for components built against different environments.

RetroDECK manages the component environment through:

- `LD_LIBRARY_PATH` - Controls library search paths.
- `QT_PLUGIN_PATH` - Controls Qt plugin search paths.
- `QT_QPA_PLATFORM_PLUGIN_PATH` - Controls Qt platform plugin paths.
- `XDG_CONFIG_HOME` - Defines the location for component configuration data.
- `XDG_CACHE_HOME` - Defines the location for component cache data.
- `XDG_DATA_HOME` - Defines the location for component application data.
- `HOME` - Where necessary, RetroDECK may override `HOME` and redirect it to a component-specific directory, typically under `XDG_DATA_HOME` or `XDG_CACHE_HOME`. This accommodates components that are hardcoded to store files directly in the home directory.
- **Component Configurations Files** - Components may provide their own configuration options for defining paths and storage locations in their config files.
- **Component CLI Options** - Components may provide command-line options for defining paths and storage locations.
- **Directory and file operations:** Move, create and manipulate directories and files.
- **Symbolic links** - Used as a last resort when other path-management mechanisms simply don't work.

This approach ensures that components:

- Access the libraries and dependencies they require.
- Store configuration, cache and application data within the Flatpak architecture.
- Avoid scattering files throughout the user's filesystem.
- Can be cleanly removed along with the RetroDECK installation.

The result is a controlled, isolated environment that improves compatibility while keeping the host filesystem clean.

---

### XDG Base Directory in a Flatpak

The Flatpak sandbox already defines the XDG Base Directory locations within the Flatpak environment.

- `XDG_CONFIG_HOME` - Maps to `/var/config` inside the Flatpak and `~/.var/app/net.retrodeck.net/config` in the user's filesystem.
- `XDG_CACHE_HOME` - Maps to `/var/cache` inside the Flatpak and `~/.var/app/net.retrodeck.net/cache` in the user's filesystem.
- `XDG_DATA_HOME` - Maps to `/var/data` inside the Flatpak and `~/.var/app/net.retrodeck.net/data` in the user's filesystem.

---

### Flatpak RO Filesystem

Internal Component subsandboxes are stored alongside their binaries with RetroDECK on read-only filesystem.

The filesystem is located at `/app/retrodeck/` inside the Flatpak

Depending on whether RetroDECK is installed as a user or system Flatpak, this maps to:

- **User installation:** `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/`
- **System installation:** `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` 

For more information, see **[RetroDECK: Flatpak Directory Structure](https://retrodeck.readthedocs.io/en/latest/wiki_development/general/folders-filepaths)** on the wiki.
 
--- 

## What are the component files?

<img src="../../../wiki_icons/retrodeck/icon-component.svg" width="75" alt="RetroDECK Flatpak architecture">

In a broad sence component files tell the `RetroDECK Framework` and `RetroDECK Alchemist` how to build, install, configure, update and launch a component. They contain the component's metadata, scripts, configuration logic, capabilities and library information required for it to be displayed, configured and launched correctly.

All component-specific logic should live within the component's own component files rather than being stored centrally in RetroDECK. This keeps components self-contained: when a component is removed, all of its associated logic is removed with it.

---

### The Recipe

<img src="../../../wiki_icons/retrodeck/icon-alchemist.svg" width="35" alt="RetroDECK Flatpak architecture">

Read by the `RetroDECK Alchemist`.

**`component_recipe.json`**

Defines how RetroDECK Alchemist should source a component's from AppImage, Flatpak, pre-compiled binary or compile from source code and turn it into a fully packaged RetroDECK component artifact.

---

### The Ingredients

<img src="../../../wiki_icons/retrodeck/icon-framework.svg" width="35" alt="RetroDECK Flatpak architecture">

Read by the `RetroDECK Framework`.

**`component_launcher.sh`**

Defines how the component is launched, including the binary location, libraries and other required resources, additional command-line arguments and any paths or launch options required for the optimal user experience.

**`component_manifest.json`**

Contains the component's metadata and integration information, including its name, supported systems, ES-DE launch commands, compatible preset actions, backup behavior and other information used by RetroDECK and other components when interacting with it like the `RetroDECK Configurator`.

**`component_functions.sh`**

Contains the component-specific logic and functions, including path creation and management, file operations, configuration editing, update instructions and other functions required to configure and integrate the component.

---

## RetroDECK's Flatpak Enviroment 

The pathings in the layers are different per component.

### Component Container: Subsandbox Environment

<img src="../../../wiki_images/flatpak/flatpakrd-component.png" width="300" alt="RetroDECK Flatpak architecture">

The **Subsandbox Environment** contains the application binaries, resources and supporting files used by a RetroDECK component.

These files are combined with RetroDECK's **Component Files**, which define the component's runtime behavior, installation and update procedures, application sourcing, metadata, configuration and other integration logic.

**Example: ScummVM's Subsandbox Enviroment**

```
┌── scummvm/
│
├── bin/
│   └── (executable files)       <--- Sourced from ScummVM's Flatpak
│
├── docs/
│   └── (documentation files)    <--- Sourced from ScummVM's Flatpak
│
├── rd_config/
│   └── (configuration files)    <--- Adapted from ScummVM and adjusted for the RetroDECK environment
│                                    
├── share/
│   └── (shared resources)       <--- Sourced from ScummVM's Flatpak
│
├── component_functions.sh       <--- RetroDECK Component Ingredient File
├── component_launcher.sh        <--- RetroDECK Component Ingredient File
├── component_manifest.json      <--- RetroDECK Component Ingredient File
└── component_recipe.json        <--- RetroDECK Component Recipe File
```


---

### Component-Specific: Libraries & Files

<img src="../../../wiki_images/flatpak/flatpakrd-lib.png" width="300" alt="RetroDECK Flatpak architecture">

A small number of components require a dedicated environment when their libraries cannot be decoupled or when they are hardcoded to expect files or libraries at paths such as `/lib` or other system locations.


---

### Component-Shared: Shared Libraries

<img src="../../../wiki_images/flatpak/flatpakrd-shared-libs.png" width="300" alt="RetroDECK Flatpak architecture">

The `shared-libs` component is a standalone module that maintains a centralized repository of libraries shared across components.

This provides:

- A single source for shared library versions.
- Consistent dependency references across components.
- Support for libraries sourced from multiple component sources including other Flatpak runtime enviroments.


**References**

Shared libraries are referenced using `$rd_shared_libs`, which is the root directory where shared libraries are stored.

Specific runtimes and their associated libraries are stored in subdirectories and can be referenced using their runtime-specific paths.

In general, applications use the same KDE runtime version as RetroDECK or remain compatible with the libraries provided by the built-in runtime. Only in rare cases should an application require a specific runtime version. In those cases, the entire runtime is not included; instead, only the specific libraries required by the component are sourced from it.

**Example: GNOME Platform runtime version 49**

```
$rd_shared_libs/org.gnome.Platform/49/
```

**Example: Qt plugins for the KDE Platform runtime version 6.10**

```
$rd_shared_libs/org.kde.Platform/6.10/plugins/
```


---

### Component: Additional Dependencies

<img src="../../../wiki_images/flatpak/flatpakrd-additional.png" width="300" alt="RetroDECK Flatpak architecture">

A small number of components require additional dependencies that are not provided by the shared library environment. These dependencies are maintained specifically for the components that require them.


---

### Flatpak Runtime: `org.kde.Platform`

<img src="../../../wiki_images/flatpak/flatpakrd-runtime.png" width="300" alt="RetroDECK Flatpak architecture">

The Flatpak Runtime provides the remaining host OS-level libraries and interfaces required by components.

In practice, the Flatpak Runtime acts as an abstraction layer between RetroDECK components and acts as their Host OS.

```
│
├── system libraries
├── graphics drivers
├── audio system
└── other system interfaces
```

---

## RetroDECK User-Data Directory

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

The `/retrodeck` directory contains the user's persistent data and other important files shared with RetroDECK components. This data is intended to remain available even if RetroDECK is uninstalled.

**Location**

The location of `/retrodeck` is dynamic and determined by the user during installation. It may reside in any supported storage location, including:

- The user's home directory
- An SD card
- An external HDD or SSD
- Other storage devices like a NAS

RetroDECK exposes the relevant `/retrodeck` paths to the components so they can access the user's persistent data.

### RetroDECK User-Data Directory Structure

```
/retrodeck
├── backups/          # RetroDECK backup data used during upgrades.
├── bios/             # BIOS and firmware files.
├── borders/          # Borders and related artwork.
├── cheats/           # Cheat files.
├── ES-DE/            # ES-DE user data, including downloaded media, gamelists and more.
├── logs/             # Symlink to XDG_CACHE_HOME/retrodeck/logs; component log output is redirected here.
├── mods/             # Component-specific mod directories.
├── PortMaster/       # PortMaster data and installed ports.
├── roms/             # Game ROMs and other game files.
├── saves/            # Persistent game save data.
├── screenshots/      # Captured screenshots.
├── shaders/          # Shader files.
├── states/           # Save states.
├── storage/          # Component-specific persistent data or exposed directories.
├── texture_packs/    # Texture packs and related assets.
└── videos/           # Captured video files.
```

For more information, see **[RetroDECK: User-data Directory Structure](https://retrodeck.readthedocs.io/en/latest/wiki_management/retrodeck-folders/)** on the wiki.

### Path Management

Components can receive their paths through the following mechanisms, listed in order of compatibility:

- **Component configuration files** - Components may provide configuration options for defining paths and storage locations. In most cases, these configuration files are located under `XDG_CONFIG_HOME/<component_name>`.

- **Component CLI options** - Components may provide command-line options for defining paths and storage locations.

- **Directory and file operations:** Move, create and manipulate directories and files.

- **Symbolic links** - Used as a last resort when configuration files and CLI options cannot provide the required path mapping. In most cases, symbolic links are created under `XDG_DATA_HOME/<component_name>`, but some components may require them under `XDG_CONFIG_HOME/<component_name>`.

Each component is **unique** and may require a different approach to accommodate its requirements while keeping its data as accessible and user-friendly as possible.

RetroDECK aims to go beyond the minimum required integration for every component it supports. In addition to essential paths such as game files and save data, RetroDECK tries to expose other files and directories that may provide value to users. 

All component-specific path management and integration logic is defined in the component's `component_functions.sh` file.


### Example: RPCS3 Path Management via `component_functions.sh`

This example shows how RPCS3's `component_functions.sh` manages configuration, storage, save data, save states, captures, patches and other user-accessible paths within RetroDECK.

Together, in the case of RPCS3 these operations form a cohesive path-management layer that utilises configuration editing, symlinks, file copying and directory creation to expose RPCS3 to different parts of user space.

```
# Create the RPCS3 configuration directory and copy and RetroDECK-provided configuration files into it.
create_dir -d "$XDG_CONFIG_HOME/rpcs3/"
cp -fr "$component_config/"* "$XDG_CONFIG_HOME/rpcs3/"

# Configure RPCS3's virtual filesystem paths against the RPCS3 own config_vfs file.
set_setting_value "$rpcs3_config_vfs" '$(EmulatorDir)' "$storage_path/rpcs3/" "rpcs3"
set_setting_value "$rpcs3_config_vfs" "/games/" "$roms_path/ps3/" "rpcs3"

# Redirect PS3 save data and save states to their corresponding RetroDECK user-data directories.
dir_prep "$saves_path/ps3/rpcs3" "$storage_path/rpcs3/dev_hdd0/home/00000001/savedata"
dir_prep "$states_path/ps3/rpcs3" "$XDG_CONFIG_HOME/rpcs3/savestates"

# Create the targeted directories required by the RPCS3 filesystem and the config_vfs edits.
create_dir "$storage_path/rpcs3/dev_hdd0"
create_dir "$storage_path/rpcs3/dev_hdd1"
create_dir "$storage_path/rpcs3/dev_flash"
create_dir "$storage_path/rpcs3/dev_flash2"
create_dir "$storage_path/rpcs3/dev_flash3"
create_dir "$storage_path/rpcs3/dev_bdvd"
create_dir "$storage_path/rpcs3/dev_usb000"

# Redirect RPCS3 captures and patches to persistent RetroDECK storage.
dir_prep "$storage_path/rpcs3/captures" "$XDG_CONFIG_HOME/rpcs3/captures"
dir_prep "$storage_path/rpcs3/patches" "$XDG_CONFIG_HOME/rpcs3/patches"
```

---

## RetroDECK's Build Enviroment

<img src="../../../wiki_icons/pixelitos/cpu.png" width="75" alt="">

A simplified overview of the RetroDECK component and build architecture is shown below.

---

### RetroDECK GitHub: Components Repository

The Components Repository stores component definitions under `component/<component_files>/` directories.

Each component is organized around the the four component files.

#### `component/rd_assets/<extra_assets>`

Contains additional assets that cannot be conveniently sourced through the component recipe. These may include graphical assets, mods, patches, or supplementary software or other paths within the flatpak enviroment.

#### `component/rd_assets/rd_config/<component_config_files>`

Contains pre-configured configuration files adapted for the RetroDECK environment.

These files are copied to `XDG_CONFIG_HOME/<component_name>` and referenced by the component as its active configuration.

The original configuration files are always stored in the read-only (RO) filesystem. This provides a clean source for the reset function if the user modifies or corrupts their configuration.

When a configuration is reset, RetroDECK copies the original file back to the user's configuration directory and applies any required RetroDECK-specific path changes.

#### `component/rd_assets/bin/<binary>`

Contains pre-built binaries used by a small number of components. These are typically lightweight applications, such as minimal retro PC emulators or tiny utilties.


---

### RetroDECK Components Repository: RetroDECK Alchemist

<img src="../../../wiki_icons/retrodeck/icon-alchemist.svg" width="50" alt="RetroDECK Flatpak architecture">

The **RetroDECK Alchemist** is both a GitHub module and an internal RetroDECK module responsible for processing component recipes.

It reads each `component_recipe.json` on the repo to determine:

- Application source locations.
- Required libraries, dependencies and assets.
- External resources that need to be retrieved.
- How the component should be assembled.

The Alchemist supports multiple source types, including:

- Flatpak packages from Flathub or other source.
- AppImages from GitLab and other sources.
- Pre-built binaries from services such as SourceForge.
- Source code from upstream websites and repositories.

Based on the recipe, the Alchemist retrieves and assembles the required resources into a functional RetroDECK component compressed .zip artifact.

**As long as the recipe is correct, the Alchemists magic handles the rest.**


---

### RetroDECK Components Repository: RetroDECK Assembler


<img src="../../../wiki_icons/retrodeck/icon-assembler.svg" width="50" alt="RetroDECK Flatpak architecture">

The **RetroDECK Assembler** is the collective term for the GitHub Actions runners and Linux build environments used to build component releases.

Working together with the Alchemist, the Assembler packages the processed components artifacts into distributable RetroDECK component releases.

Components are distributed according to their target release channel:

- **Cooker `feat/<feature_name>` / `component/<component_name>`  Branches** - Development branches merged into Cooker when ready. One that focuses on new features and one that focuses on adding new internal components.
- **Cooker** - Bleeding-edge testing environment.
- **Main** - Stable production releases.


---

### RetroDECK Main Repository: RetroDECK Assembler

<img src="../../../wiki_icons/retrodeck/icon-assembler.svg" width="50" alt="RetroDECK Flatpak architecture">

When a RetroDECK build is triggered, the Assembler sources the required components alongside the RetroDECK application and produces the final Flatpak release.

The source branch determines the target release channel:

- **Cooker Feature Branches** - Published through the Cooker Releases Repository.
- **Cooker** - Published through the Cooker Releases Repository.
- **Main** - Published through the RetroDECK Main Repository.

---

