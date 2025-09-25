# Development Glossary 

Here we are listing all the development lingo and features of the RetroDECK Project.

*"RetroDECK uses a lot of words from Cooking / Foods in combination with Technology Jargon / Technobabble."*


## Github Repositories

<img src="../../../wiki_icons/pixelitos/github.png" width="50">

**Main / Main Releases**

Stable, feature‑frozen builds (pre‑releases). Full releases are on Flathub.

**Cooker / Cooker Releases**

Unstable, cutting‑edge branch for testers and developers.

**Feature Branches**

New features are developed here before merging into Cooker.

**Component Branch**

Holds shared component artifacts used throughout the project.

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


## RetroDECK Development to Publication Process 

<img src="../../../wiki_icons/pixelitos/folder-blue-games.png" width="50">

How the publication process works:

1. **Feature Branches (GitHub)** / **Component Branch (GitHub)** - Initial local testing of a specific feature branch or testing a specific new component.
2. **Cooker (GitHub)** -  Merged and publication of the cooker build. Testing starts with the help of Community Testers and the rest of the RetroDECK Team. When the cooker is stable (mostly bug free 🙏) and feature complete for the scope of the release it moves on to main.
3. **Main (GitHub)** - The main release is a pre-release. After everything looks good a RetroDECK Team member will trigger the flathub publication process.
4. **Flathub Testing** - RetroDECK will first do a testbuild on flathub, the testbuild can be downloaded for the final test to verify that everything was built correctly on flathub. If all goes well it will redo the build on stable and publish.
5. **Flathub Stable** - RetroDECK is out!

### When is RetroDECK considered Released?

A version of RetroDECK is only considered released when it is published on [Flathub](https://flathub.org/apps/net.retrodeck.retrodeck).

**Communication:**

If a user asks:

*Is a new version of RetroDECK out?*

You can only answer **YES** when it has been verified that it is out on Flathub. 

## RetroDECK Framework

<img src="../../../wiki_icons/retrodeck/icon-framework.svg" width="50">

The `RetroDECK Framework` is the entire back-end system of RetroDECK.  
It includes everything that powers the platform, such as:

- Build system
- Functions
- Code
- Scripts
- And more...

In short, it's the engine that makes RetroDECK run.

### RetroDECK API

<img src="../../../wiki_icons/retrodeck/icon-api.svg" width="50">

The `RetroDECK API` allows external applications to interact with the `RetroDECK Framework`, enabling them to operate like the RetroDECK Configurator.

Currently, the API is only accessible through:

- **Named pipes**.
- **Internal calls** within the `RetroDECK Framework`.

**Read more here:**

### RetroEngine

<img src="../../../wiki_icons/retrodeck/icon-engine.svg" width="50">

`RetroENGINE` lets you launch games directly from your desktop using RetroDECK — no need to open the full application.

- Supports file associations for common game file types.
- Allows launching games via the command line (CLI).

**Read more here:**

### RetroDECK Configurator

<img src="../../../wiki_icons/retrodeck/icon-configurator.svg" width="50">

The `RetroDECK Configurator` is a unique, multi-purpose utility built into RetroDECK.

- Manages many aspects of the RetroDECK application
- Gives users access to features and functions from the `RetroDECK Framework`

It acts as the main interface between the user and the powerful tools behind the scenes.

**Read more here:**

#### RetroDECK Tool 

A `RetroDECK Tool` is the name given to a function (or group of functions) that is exposed to the end-user through the `RetroDECK Configurator`.

**Example:** `BIOS Checker Tool` - While it consists of many back-end functions, users simply know it as the `BIOS Checker Tool` in the Configurator.

### Ponzu

<img src="../../../wiki_icons/retrodeck/icon-ponzu.svg" width="50">

Ponzu is an Legacy AppImage Loader / Integrator part of the `RetroDECK Framework`.

Lets users add certain specific legacy AppImages to RetroDECK and integrates these AppImages directly into the RetroDECK environment.

**Read more here:**

### RetroDECK Assembler

<img src="../../../wiki_icons/retrodeck/icon-assembler.svg" width="50">

The `RetroDECK Assembler` is just the building engine part of the `RetroDECK Framework`.

- It builds all aspects of RetroDECK.
- Packages them into official RetroDECK releases in various repositories.
- Publishes the final builds for distribution on Flathub Stable channels.

**Read more here:**

### Library Gather & Library Hunter

The library managers or `Library Gatherer & Library Hunter` are the part of the `RetroDECK Framework`. 

Their purpose is to reduce library dependency conflicts between components when libraries could be shared.

`The Gatherer` tries to gather all required extra libraries used by an component and output them into a structured json ingredient file called: `component_libs.json`

`The Hunter` then reads the `component_libs.json` and tries to "hunt" the location of the libraries and connect them.

### Rekku

Is [Rekku](https://github.com/apps/rekku-retrodeck) RetroDECK virtual assistant and the mascot of the RetroDECK Project.

She does GitHub bot announcements and will be more integrated into the project in the future **hopefully**.

Rekku is depicted as a "retro genie". 

Her design is not finished and just a concept. 

## RetroDECK Components

<img src="../../../wiki_icons/retrodeck/icon-component.svg" width="50">

RetroDECK is made by assembling various components.

**Read more here:**

### What are Components?

A component is a complete packaged executable of a:

- Emulator
- Engine
- Port
- System
- RetroDECK: Feature & Functions

They are built via a `recipe.sh` (the **Recipe**) that pulls and compiles the original source.

A component includes **Component Ingredient Files** that tell RetroDECK how to use it.

A component is stored in it's own isolated file structure under `/app/retrodeck/components/<component‑name>/`.


### What is a Engine?

A game engine is a software framework primarily designed for the development of video games which generally includes relevant libraries and support programs such as a level editor.

A Game Engine also in the context of RetroDECK is a program that allows you to run games files against that engine or via the engine executable itself:

**Examples:** 

- Solarus
- Ikemen GO 
- SCUMMVM

### What is a Emulator?

A video game console emulator is a type of emulator that allows a computing device to emulate a video game console's hardware and play its games on the emulating platform.

**Examples:**

- RetroArch
- PPSSPP

### What is a Port?

A source port is a software project based on the source code of a game engine that allows the game to be played on operating systems or computing platforms with which the game was not originally compatible. 

In the context of RetroDECK it is usually single games that are managed by the PortMaster system. 

On rare occasions RetroDECK can choose to build-in a port directly as an component.


### What is a System?

A system in the context of RetroDECK is a piece of software that is not running games but adding additional functionality in other ways.

**Examples:**

- Steam ROM Manager
- ES-DE
- PortMaster
- RetroEngine

### RetroDECK?!

RetroDECK itself with it's various tools and features is also an component.

## Component Recipe File (a.k.a. "Recipe")

**Purpose** 

Directs RetroDECK’s build automation on how to transform a component’s original source—whether an AppImage, Flatpak, pre‑compiled binary, or source code—into a fully packaged RetroDECK component.

**Note** 

`recipe.sh` is used only during the build process and is **not** shipped with the final component package.

## Component Ingredient Files (a.k.a. “Ingredients”)

**Purpose**

Provide the RetroDECK framework with all the metadata, scripts, and library info a component needs to be displayed, configured, and launched correctly.

**Key Contents**

- **Human‑readable info** (name, description, menu text) for UI menus.  
- **Preset actions** – steps to run when a user changes a preset.  
- **Component‑specific Bash helpers** (setup, firmware install, etc.).  
- **Config‑file paths** and other environment details.  
- **Launch instructions** – how RetroDECK should start the component.


### What are the Component Ingredient Files?

| Ingredient File                     | Role |
|--------------------------|------------------------------------------------------------|
| **component_launcher.sh** | Sets up the environment and launches the component in its sandbox. |
| **component_functions.sh** | Declares config‑file paths and component‑specific helper functions (e.g., firmware install, configurator actions). |
| **component_manifest.json** | Stores metadata and functional data for RetroDECK: name, description, supported systems, menu entries, preset options, actions, and optional core info. |
| **component_prepare.sh** | Handles one‑time setup: reset configs, prepare directories, move/backup data, and apply post‑move tweaks. |
| **component_libs.json** | Auto‑generated list of required libraries by `Library Gatherer`:  `shared_libs`, internal, or manual; used by `Library Hunter` to "hunt down" them in the final build. |
