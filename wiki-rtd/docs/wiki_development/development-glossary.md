# Development Glossary 

Here we are listing the lingo of the RetroDECK Project.

## RetroDECK Development to Publication Process 

How the process works:

`Feature Branches` -> `Cooker (GitHub)` -> `Main (GitHub)` -> `Main (GitHub) Pre-Release Testing` ->  `Flathub Testing` -> `Flathub Stable Publication`.

## RetroDECK Stable Releases

A version of RetroDECK is only considered released when it is published on [Flathub](https://flathub.org/apps/net.retrodeck.retrodeck).

## Github Repos

### Main / Main Releases

The main repo of the RetroDECK Project.

Is contains the feature freezed stable releases of the RetroDECK application. 

All releases here are considered as Pre-Releases, the full release is always on Flathub.

### Cooker / Cooker Releases

Cooker is a bleeding edge snapshot repository of the current commits (the action of uploading code to GitHub is called a commit).

The code may not be always reviewed and so the cooker it's unstable by its nature, it's just suggested to testers or developer to try bleeding edge functions.

### Feature branches

The feature branches repositories of the RetroDECK Project, are subbranches where specific component/feature/other development is happening before it gets merged into cooker proper.

## RetroDECK API

## RetroDECK Framework

## RetroEngine

## Ponzu

## Components

RetroDECK is made by assembling various components.

### What are components?

A component is a packaged executable of:

- Emulator
- Engine
- Port
- System
- RetroDECK: Features & Functions

A component is shipped with Component Recipe Files in addition to the libaries and binaries that make up the software that tells RetroDECK:

- How RetroDECK should build them.
- How RetroDECK should use them.
- What features/functions it has.

**Communication:**

When they are communicated about they are referred to as: 

- **Components** 
- **<Component Name> Component** 
- **<Component Name>** 

### Internal vs External components

- External components are stored within the external component space within writable userspace: `/app/retrodeck/components/<component name>/`.

- Internal components, such as RetroDECK itself are stored on the read-only filesystem.

### What is an Engine?

A game engine is a software framework primarily designed for the development of video games which generally includes relevant libraries and support programs such as a level editor.

A Game Engine also in the context of RetroDECK is a program that allows you to run games files against that engine or via the engine executable itself:

**Examples:** 

- Solarus
- Ikemen GO 
- SCUMMVM

### What is an Emulator?

A video game console emulator is a type of emulator that allows a computing device to emulate a video game console's hardware and play its games on the emulating platform.

**Examples:**

- RetroArch
- PPSSPP

### What is an Port?

A source port is a software project based on the source code of a game engine that allows the game to be played on operating systems or computing platforms with which the game was not originally compatible. 

In the context of RetroDECK it is usually single games that are managed by the PortMaster system. 

On rare occasions RetroDECK can choose to build-in a port directly as an component, the Port are in need of the following:

- Online Multiplayer.
- Launchers.
- Speedy Updates or Updates (sometimes they just add the port once, to have it running).
- Mod Support / Downloader.
- Certain Tech PortMaster can't support (Newer SDL/OpenGL, Vulkan, Wine etc...).


### What is an System?

A system in the context of RetroDECK is a piece of software that is not running games but adding additional functionality in other ways.

**Examples:**

- Steam ROM Manager
- ES-DE
- PortMaster
- RetroEngine

### What is RetroDECK: Features & Functions?

RetroDECK itself with it's various tools (Configurator) and features (Compressor) is also an component.

## Component Recipe Files

**What are Component Recipe Files?**

They are packaged files with an RetroDECK component are the information center for that component made from various scripts and json files.

It tells what tells RetroDECK how to build / use them and what features the component has. 

Even RetroDECK itself has Component Recipe Files.

**Example of features:**

- Contain human-friendly information shown in menus
- Actions to be taken when changing presets
- Per-component one-off Bash functions
- Config file path information and more. 

As these files are read in an iterative way by the code, it is imperative that their structure be correct.

**Communication:**

When they are communicated about they are referred to as: 

- **Recipes**
- **<Component Name> Recipe** 

**Read more over at:**

[Component Recipe Files](../wiki_development/components-api/component-recipe-files.md)

### What are the four component Recipe files?

These files will be stored along side the rest of the component data in specific location.

The following four files are required by every component:

- **manifest.json** 

- **functions.sh** 

- **prepare_component.sh** 

- **component_launcher.sh** 




