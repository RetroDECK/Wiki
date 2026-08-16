# RetroDECK Architecture: Overview

A short overview of the RetroDECK Architecture.

---

## Architectural Overview: Non-Standard Flatpak "The Fatpak"

<img src="../../../wiki_images/flatpak/flatpakrdneo.drawio.png" width="300" alt="RetroDECK Flatpak architecture">

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

<img src="../../../wiki_images/flatpak/flatpak.drawio.png" width="300" alt="Minimal Flatpak architecture">

A minimal Flatpak obtains its required libraries and dependencies primarily from the Flatpak Runtime.

**Typical Flatpak application**

---

### Reference: Advanced Flatpak Design

<img src="../../../wiki_images/flatpak/flatpakadv.drawio.png" width="300" alt="Advanced Flatpak architecture with additional component layers">

An advanced Flatpak may require supplementary libraries and dependencies that are not provided by the Flatpak Runtime.

**Minority of Flatpak applications**

---

## What is a Subsandbox?

A **subsandbox** is a container-launching mechanism managed by the RetroDECK Framework. It uses the RetroDECK Flatpak container and Flatpak Runtime, which provide shared libraries and dependencies for components.

A subsandbox controls which libraries and files a component can access. This isolation allows RetroDECK to override Flatpak Runtime library versions when required, enabling support for components built against different environments.

RetroDECK manages the component environment through:

- `LD_LIBRARY_PATH` - Controls library search paths.
- `QT_PLUGIN_PATH` - Controls Qt plugin search paths.
- `QT_QPA_PLATFORM_PLUGIN_PATH` - Controls Qt platform plugin paths.
- `XDG_CONFIG_HOME` - Defines the location for component configuration data.
- `XDG_CACHE_HOME` - Defines the location for component cache data.
- `XDG_DATA_HOME` - Defines the location for component application data.
- **Component Configurations Files** - Components may provide their own configuration options for defining paths and storage locations in their config files.
- **Component CLI Options** - Components may provide command-line options for defining paths and storage locations.
- `HOME` - Where necessary, RetroDECK may override `HOME` and redirect it to a component-specific directory, typically under `XDG_DATA_HOME` or `XDG_CACHE_HOME`. This accommodates components that are hardcoded to store files directly in the home directory.

This approach ensures that components:

- Access the libraries and dependencies they require.
- Store configuration, cache, and application data within the Flatpak architecture.
- Avoid scattering files throughout the user's filesystem.
- Can be cleanly removed along with the RetroDECK installation.

The result is a controlled, isolated environment that improves compatibility while keeping the host filesystem clean.

#### XDG Base Directory in a Flatpak

The Flatpak sandbox already defines the XDG Base Directory locations within the Flatpak environment.

- `XDG_CONFIG_HOME` - Maps to `/var/config` inside the Flatpak and `~/.var/app/net.retrodeck.net/config` in the user's filesystem.
- `XDG_CACHE_HOME` - Maps to `/var/cache` inside the Flatpak and `~/.var/app/net.retrodeck.net/cache` in the user's filesystem.
- `XDG_DATA_HOME` - Maps to `/var/data` inside the Flatpak and `~/.var/app/net.retrodeck.net/data` in the user's filesystem.

For more information, see **[RetroDECK: Flatpak Directory Structure](#)** on the wiki.

#### Flatpak RO Filesystem

Component subsandboxes are stored alongside their binaries with RetroDECK on read-only filesystem.

The filesystem is located at `/app/retrodeck/` inside the Flatpak

Depending on whether RetroDECK is installed as a user or system Flatpak, this maps to:

- **User installation:** `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/`
- **System installation:** `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` 

For more information, see **[RetroDECK: Flatpak Directory Structure](#)** on the wiki.
 
---

## Simplified Architecture: RetroDECK

A simplified RetroDECK architecture looks like this, but the pathings in the layers are different per component.

### Component Container: Environment

The **Component Container: Environment** contains the application binaries, resources and supporting files used by a RetroDECK component.

These files are combined with RetroDECK's **Component Files**, which define the component's runtime behavior, installation and update procedures, application sourcing, metadata, configuration and other integration logic.

**Example: ScummVM**

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
│   └── (configuration files)    <--- Adapted from ScummVM and adjusted
│                                    for the RetroDECK environment
│
├── share/
│   └── (shared resources)       <--- Sourced from ScummVM's Flatpak
│
├── component_functions.sh       <--- RetroDECK Component Ingredient File
├── component_launcher.sh        <--- RetroDECK Component Ingredient File
├── component_manifest.json      <--- RetroDECK Component Ingredient File
└── component_recipe.json        <--- RetroDECK Component Recipe File
```

⬇️

---

### Component-Specific: Libraries & Files

A small number of components require a dedicated environment when their libraries cannot be decoupled or when they are hardcoded to expect files or libraries at paths such as `/lib` or other system locations.

⬇️

---

### Component-Shared: Shared Libraries

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

⬇️

---

### Component: Additional Dependencies

A small number of components require additional dependencies that are not provided by the shared library environment. These dependencies are maintained specifically for the components that require them.

⬇️

---

### Flatpak Runtime: `org.kde.Platform`

The Flatpak Runtime provides the remaining host OS-level libraries and interfaces required by components.

In practice, the Flatpak Runtime acts as an abstraction layer between RetroDECK components and the host operating system, providing interfaces such as:

```
│
├── system libraries
├── graphics drivers
├── audio system
└── other system interfaces
```

---

## Simplified Architecture: Component and RetroDECK Building

A simplified overview of the RetroDECK component and build architecture is shown below.

---

### RetroDECK GitHub: Components Repository

The Components Repository stores component definitions under `component/<component_files>/` directories.

Each component is organized around the following files:

**Component Recipe**

- `component_recipe.json` - Defines the component's sources, dependencies and build requirements.

**Component Ingredients**

- `component_functions.sh` - Component-specific functions and helper logic.
- `component_launcher.sh` - Defines how the component is launched.
- `component_manifest.json` - Defines component metadata and runtime configuration.

#### `component/rd_assets/<extra_assets>`

Contains additional assets that cannot be conveniently sourced through the component recipe. These may include graphical assets, mods, patches, or supplementary software or other paths within the flatpak enviroment.

#### `component/rd_assets/rd_config/<component_config_files>`

Contains pre-configured configuration files adapted for the RetroDECK environment.

#### `component/rd_assets/bin/<binary>`

Contains pre-built binaries used by a small number of components. These are typically lightweight applications, such as minimal retro PC emulators or tiny utilties.

⬇️

---

### RetroDECK Components Repository: RetroDECK Alchemist

The **RetroDECK Alchemist** is both a GitHub module and an internal RetroDECK module responsible for processing component recipes.

It reads `component_recipe.json` to determine:

- Application source locations.
- Required libraries, dependencies and assets.
- External resources that need to be retrieved.
- How the component should be assembled.

The Alchemist supports multiple source types, including:

- Flatpak packages from Flathub.
- AppImages from GitLab and other sources.
- Pre-built binaries from services such as SourceForge.
- Source code from upstream websites and repositories.

Based on the recipe, the Alchemist retrieves and assembles the required resources into a functional RetroDECK component.

**As long as the recipe is correct, the Alchemists magic handles the rest.**

⬇️

---

### RetroDECK Components Repository: RetroDECK Assembler

The **RetroDECK Assembler** is the collective term for the GitHub Actions runners and Linux build environments used to build component releases.

Working together with the Alchemist, the Assembler packages the processed components into distributable RetroDECK component releases.

Components are distributed according to their target release channel:

- **Cooker Feature Branches** - Development branches merged into Cooker when ready.
- **Cooker** - Bleeding-edge testing environment.
- **Main** - Stable production releases.

⬇️

---

### RetroDECK Main Repository: RetroDECK Assembler

When a RetroDECK build is triggered, the Assembler sources the required components alongside the RetroDECK application and produces the final Flatpak release.

The source branch determines the target release channel:

- **Cooker Feature Branches** - Published through the Cooker Releases Repository.
- **Cooker** - Published through the Cooker Releases Repository.
- **Main** - Published through the RetroDECK Main Repository.

---