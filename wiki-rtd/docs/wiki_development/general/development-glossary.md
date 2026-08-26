# Development Glossary

This glossary documents the development terminology, concepts, tools and features used throughout the **RetroDECK Project**.

*RetroDECK uses a lot of terminology inspired by cooking, food and alchemy, combined with technology jargon and technobabble.*

---

## GitHub Repositories

<img src="../../../wiki_icons/pixelitos/github.png" width="50" alt="">

### Main / Main Releases

Stable, feature-frozen **pre-release** and **release candidate** builds. 

`main`

### Cooker / Cooker Releases

Unstable, cutting-edge builds intended for **Community Testers**, developers and other testers.

`cooker`

Cooker is also used to develop and publish **minor versions** of the current Main release.

### Version Branches

Unstable, cutting-edge builds intended for **Community Testers**, developers and other testers.

Version branches are used for the development of **major upcoming RetroDECK releases** before they are merged into Cooker as the final development phase.

`<version>`

These branches provide a dedicated development target for an upcoming major release. They can contain feature and component branches specific to that release.

### Feature Branches

Unstable, cutting-edge builds intended for developers.


A **Feature Branch** is a subdivision of the **Cooker** branch or an upcoming **Version Branch**. It is used to develop and test new features before they are merged back into the corresponding branch.

**Branch format:**

`feat/<name>`

### Component Branch

Unstable, cutting-edge builds intended for developers.

A **Component Branch** is a subdivision of the **Cooker** branch or an upcoming **Version Branch**. It is used to develop and test new components before they are merged back into the corresponding branch.

**Branch format:**

`component/<name>`



### Selected Repositories

| Name                                                                                   | Description                                           |
|----------------------------------------------------------------------------------------|-------------------------------------------------------|
| [RetroDECK/RetroDECK](https://github.com/RetroDECK/RetroDECK)                          | RetroDECK Repo: Main repo of the RetroDECK Project    |
| [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker)                                | Cooker Repo: Cooker Build publication repo            |
| [RetroDECK/Wiki](https://github.com/RetroDECK/Wiki)                                    | Wiki Repo: RetroDECK mkdocs-material Wiki source code |
| [RetroDECK/RetroDECK-website](https://github.com/RetroDECK/RetroDECK-website)          | Website Repo: Retrodeck.net source code               |
| [RetroDECK/ES-DE](https://github.com/RetroDECK/ES-DE)                                  | ES-DE Repo: RetroDECK's light fork of ES-DE           |
| [RetroDECK/components](https://github.com/RetroDECK/components)                        | Components Repo: RetroDECK's central for Components   |
| [RetroDECK/RetroDECK-theme](https://github.com/RetroDECK/RetroDECK-theme)              | Theme Repo: RetroDECK's ES-DE Theme                   |
| [flathub/net.retrodeck.retrodeck](https://github.com/flathub/net.retrodeck.retrodeck)  | Flathub Repo: net.retrodeck.retrodeck                 |
| [RetroDECK/repositories](https://github.com/orgs/RetroDECK/repositories)               | Full Org Repo : All other repos in RetroDECK          |


---

## RetroDECK Development to Publication Process

<img src="../../../wiki_icons/pixelitos/folder-blue-games.png" width="50" alt="">

The RetroDECK development and publication process moves through several stages, from initial development and testing to the final **Flathub Stable** release.

### Publication Process

1. **Feature Branches / Component Branches (GitHub)** - New features and components are developed and tested independently. Initial testing is performed locally before changes are merged into Cooker.

2. **Cooker (GitHub)** - Changes are merged into the Cooker branch and published as Cooker builds. Testing is performed by **Community Testers** and the **RetroDECK Team**. Once the Cooker build is sufficiently stable, mostly bug-free (hopefully) and feature-complete for the planned release scope, it can move to Main.

3. **Main (GitHub)** - Main represents the **pre-release** and **release candidate** version of RetroDECK. After final checks have passed, a RetroDECK Team member triggers the Flathub publication process.

4. **Flathub Testing** - RetroDECK is first built and published to the Flathub testing channel. The test build is downloaded and tested to verify that the Flathub build and packaging process completed correctly. A RetroDECK Team member calls for final testing to ensure that nothing went wrong during the Flathub build process. If everything passes, the build is rebuilt and submitted to Flathub Stable via a merge.

5. **Flathub Stable** - The release is published on Flathub Stable. **A new version of RetroDECK is officially released!**

### When Is RetroDECK Considered Released?

A version of RetroDECK is **only considered released once it has been published on Flathub**.

[RetroDECK on Flathub](https://flathub.org/apps/net.retrodeck.retrodeck)

When communicating with users about a new version:

**"Is a new version of RetroDECK out?"**

The answer can only be **YES** once the release has been verified as available on **Flathub Stable**.

A version existing on GitHub, Cooker, Main, or Flathub Testing does **not** mean that the version has been officially released.

---

## RetroDECK Framework

<img src="../../../wiki_icons/retrodeck/icon-framework.svg" width="50" alt="">

The **RetroDECK Framework** is the collective name for the entire backend system that powers RetroDECK.

It contains the underlying functions, code, scripts and supporting systems that make RetroDECK operate.

The RetroDECK Framework includes, but is not limited to:

- **Functions**
- **Code**
- **Scripts**
- **APIs**
- **Tools**
- **Component management**
- **Configuration and system management**

In short, the **RetroDECK Framework is the engine behind RetroDECK**. It provides the backend functionality that powers the application, its components and its user-facing tools.

---

## RetroDECK Components

<img src="../../../wiki_icons/retrodeck/icon-component.svg" width="50" alt="">

RetroDECK is made by assembling various components.

### What are Components?

A **component** is a complete, packaged and sandboxed seperate piece of software or feature that RetroDECK manages as an independent unit in a subsandbox.

Components are grouped into the following categories:

- **Client**
- **Emulator**
- **Engine**
- **Frontend**
- **Game**
- **Multi-Emulator**
- **Port**
- **Utility**
- **RetroDECK Features & Functions**


Components are built using a `component_recipe.sh` (the **Recipe**), which downloads, splits, configures and compiles the original upstream sources when required.

Each component also includes **Component Ingredient Files** that define how RetroDECK installs, configures, launches, and integrates the component.

Components are stored in their own isolated directory: `/app/retrodeck/components/<component-name>/`.

The combination of the **Recipe** and **Component Ingredient Files** is collectively referred to as the **Component Files**.


**Read more here about how we classify components:**

[What is RetroDECK](../../wiki_about/what-is-retrodeck.md) 

### RetroDECK?!

RetroDECK itself with it's various tools and features is also an component.

---

## Component Files


### Component Recipe File (a.k.a. "Recipe")

**Purpose**

The **Component Recipe** directs RetroDECK's build automation on how to transform a component's original source-whether an AppImage, Flatpak, pre-compiled binary, or source code-into a fully packaged RetroDECK component.

The Recipe is processed by **RetroDECK Alchemist**, which builds and packages the component into a compressed **component artifact archive**. These artifacts are then integrated into RetroDECK builds by the **RetroDECK Assembler**.

---

### Component Ingredient Files (a.k.a. "Ingredients")

**Purpose**

**Component Ingredient Files** provide the RetroDECK framework with the metadata, scripts, and configuration information required for a component to be installed, configured, displayed, and launched correctly.

**Key Contents**

- **Component Metadata** - Name, description, menu text, links, and other information used by RetroDECK.
- **Preset Actions** - Actions and steps performed when a user changes a preset.
- **ES-DE Rules / Launch Commands** - Defines how ES-DE launches and finds the component.
- **Launch Instructions** - Defines how RetroDECK starts the component.
- **Component Configuration Settings** - Configuration file paths, options, and other component-specific settings.
- **Install / Upgrade Instructions** - Defines how RetroDECK installs or upgrades the component, including directories, files, and symlinks that need to be created or maintained.

**What Are the Component Ingredient Files?**

| Ingredient File | Role |
| :--- | :--- |
| **`component_functions.sh`** | Declares configuration file paths and component-specific helper functions, such as firmware installation and configurator actions. It also handles one-time setup tasks, including resetting configurations, preparing directories, moving or backing up data, performing upgrade tasks between RetroDECK versions, and applying post-move adjustments. |
| **`component_launcher.sh`** | Sets up the required environment and launches the component within its sandbox. |
| **`component_manifest.json`** | Stores metadata and functional data for RetroDECK, including the component name, description, supported systems, menu entries, preset options, ES-DE launch commands, actions, preset compatibility, and optional core information. |

---

## RetroDECK API

<img src="../../../wiki_icons/retrodeck/icon-api.svg" width="50" alt="">

The **RetroDECK API** allows external applications and internal components to interact with the **RetroDECK Framework**, providing access to framework functionality without requiring the RetroDECK Configurator itself.

This allows compatible applications to perform operations through the same underlying framework functions used by the Configurator.

The RetroDECK API is currently accessible through:

- **Named Pipes** - Allows external applications to communicate with the RetroDECK Framework.
- **Internal Calls** - Allows components and functions within the RetroDECK Framework to communicate directly with each other.


---

## RetroEngine

<img src="../../../wiki_icons/retrodeck/icon-engine.svg" width="50" alt="">

**RetroENGINE** allows users to launch games directly from the desktop through RetroDECK without opening the full RetroDECK application.

It translates RetroDECK's internal game launch commands into **OS-level file integrations** for supported files in the ROM directory.

- **File Associations** - Registers supported game file types with the operating system, allowing games to be launched directly from the desktop or file manager.
- **Command-Line Interface (CLI)** - Allows games to be launched through the command line using RetroDECK's launch system.


---

## RetroDECK Configurator

<img src="../../../wiki_icons/retrodeck/icon-configurator.svg" width="50" alt="">

The **RetroDECK Configurator** is a multi-purpose toolbox built into RetroDECK.

It provides users with a central interface for managing RetroDECK and accessing features and functions provided by the backend **RetroDECK Framework**.

The Configurator acts as the main interface between the user and many of the tools and services operating behind the scenes.

Its responsibilities include:

- Managing various aspects of the RetroDECK application.
- Providing access to tools and functions from the RetroDECK Framework.
- Presenting complex backend functionality through a user-friendly interface.

### RetroDECK Tool

A **RetroDECK Tool** is the user-facing name given to a function, or group of related functions, that is exposed to the end user through the **RetroDECK Configurator**.

This abstraction allows complex backend operations to be presented as simple, user-facing **Tools**.

**Example:**

- **BIOS Checker** - A tool that reads the `component_manifest.json` of each component to identify required BIOS, game data and firmware files, then uses multiple backend functions to check their availability and provide the results to the user.


---

## RetroDECK Assembler

<img src="../../../wiki_icons/retrodeck/icon-assembler.svg" width="50" alt="">

The **RetroDECK Assembler** is the overall RetroDECK build and release system, consisting of the build engine and its various GitHub runners.

Its responsibilities include:

- Building RetroDECK into a Flatpak.
- Packaging RetroDECK releases for distribution through various repositories.
- Publishing final builds to the **Flathub Stable** channel.
- Sourcing pre-built component artifacts from **RetroDECK Alchemist**.

---

## RetroDECK Alchemist

<img src="../../../wiki_icons/retrodeck/icon-alchemist.svg" width="50" alt="">

The **RetroDECK Alchemist** toolkit is the component sourcing and building system within the **RetroDECK Assembler**.

Its job is to read each `component_recipe.json`, source the component according to the parameters defined in the recipe, and build it into a compressed **component artifact archive**. The resulting artifact is then picked up by the RetroDECK Assembler and integrated into the RetroDECK build.

The Alchemist uses `version_policy.sh` to determine which version of each component should be sourced.

**Version Selection**

For **Cooker** releases, the Alchemist uses the latest available component versions until the lockdown period for a mainline release begins.

Once the lockdown period starts, component versions are **pinned to specific versions**. These fixed versions define exactly which component builds are included in the upcoming RetroDECK release.

This ensures that mainline releases use reproducible and explicitly defined component versions, while Cooker releases can continue tracking newer upstream versions.

---

## RetroDECK Library Hunter

<img src="../../../wiki_icons/retrodeck/icon-hunter.svg" width="50" alt="">

The **Library Hunter** (`hunt_libraries.sh`) is a part of the **RetroDECK Framework**.

The Library Hunter helps reduce library dependency conflicts between components by identifying libraries that can potentially be shared or provided by the component itself.

The Hunter scans a component for its required additional libraries and compares them against the available **Flatpak runtimes**. It then outputs the required library information as a structured JSON Ingredient File:

`component_libs.json`

The resulting file can be referenced by the `libs` section of a `component_recipe.json`, allowing the component build process to include only the libraries that are actually required.

**Limitations**

The Library Hunter is a **helper tool, not a complete dependency resolver**. It can provide useful clues about which libraries a component requires, but it is not guaranteed to detect every dependency.

Some libraries may be missed, incorrectly identified, or require additional manual configuration. The generated `component_libs.json` should therefore be tested.

---

## RetroVERSE

<img src="../../../wiki_icons/retrodeck/icon-retroverse.svg" width="50" alt="">

RetroVERSE is a repository of instructions and resources for sourcing external **components, assets and other data** for RetroDECK. It is maintained and curated by the RetroDECK Team and Community and follows strict legal, licensing, and project guidelines.

Conceptually, RetroVERSE is similar to an **app store** or projects such as **PortMaster**, providing users with optional content that can be discovered and downloaded independently of the core application. However, RetroVERSE is neither an app store nor PortMaster; it is a purpose-built, curated external resource list for RetroDECK.

RetroVERSE provides optional downloads for resources that fit the RetroDECK scope but are not suitable as built-in components. This allows resources to be distributed and updated independently while keeping the core RetroDECK application focused, lightweight, and maintainable.

The goal is to provide useful resources without increasing the size, maintenance burden, or complexity of the core RetroDECK application.

Unlike internal RetroDECK components, RetroVERSE resources:

- Are **optional** and not required for the core RetroDECK experience.
- Have a **strictly retro-focused and limited scope**, with content that does not need to be part of the core application.
- Can be **updated independently** of the RetroDECK core application.
- Must comply with all applicable **legal, copyright, and licensing requirements**, as well as any **additional guidelines** established by the RetroDECK Team. Open-source content must comply with its applicable licence, while proprietary code or assets may only be included with explicit permission from the rights holder.
- Are **curated by the RetroDECK Team and Community**. RetroVERSE is not an unrestricted community repository; the RetroDECK Team has final authority over what content is accepted.

Examples of RetroVERSE content include:

- **Standalone components** - such as an engine-reimplementation project supporting a specific game also known as **Ports**.
- **Open-source games** - games that can legally be distributed under an appropriate open-source or permissive licence.
- **Art assets** - optional assets such as additional borders, themes, or other visual resources.
- **Other data** - supplementary resources that are useful to users but do not need to be part of the core application.

The RetroVERSE component directory is:

```
retrodeck/storage/retrodeck/retroverse/
```

---

## RetroLACE

<img src="../../../wiki_icons/retrodeck/icon-retrolace.svg" width="50" alt="">

**RetroLACE** (Local Add-on Component Environment)

Is a developer-oriented system for launching and testing local external components within RetroDECK.

Conceptually, RetroLACE provides a controlled way to use components that are **not part of the RetroDECK core** and **do not meet the requirements** for inclusion in RetroVERSE.

RetroLACE is primarily a **development and testing environment** for developers working on software and assets that cannot be included in RetroDECK or RetroVERSE. It can also be used by users to install and run **third-party modifications and add-ons** locally.

RetroDECK users can manually install external components through RetroLACE. This functionality is **disabled by default** and must be explicitly enabled by the user. When enabling **RetroLACE**, users must accept a **legal disclaimer**, that their RetroDECK installation will be considered **modified** and that The RetroDECK Team is not responsible for issues caused by externally installed components.

Users obtain these components directly from the **component author's website, repository, or distribution channel** and install them locally.

It can also be useful to users because it can support components that:

- Do not fit RetroDECK's **retro-focused scope**.
- Have **licensing restrictions** that prevent distribution through RetroDECK or RetroVERSE, but can legally be used by a user who has obtained the required licence.
- Require **proprietary software or assets** that RetroDECK cannot legally distribute.
- Are still in **development or testing** and are not ready for inclusion in RetroVERSE or RetroDECK.

The RetroLACE component directory is:

```
retrodeck/storage/retrodeck/retrolace/
```

---

## RetroDECK Mascot: Reiki the Cyber Shark

**Read more here:**

[Reiki the Cyber Shark](../graphics/reiki/reiki.md) 




