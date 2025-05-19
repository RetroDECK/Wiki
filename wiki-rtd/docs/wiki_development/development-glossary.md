# Development Glossary 

Here we are listing the lingo of the RetroDECK Project.

## RetroDECK Publication Process 

Feature Branches -> Cooker (GitHub) -> Main (GitHub) -> Main (GitHub) Pre-Release Testing ->  Flathub Testing -> Flathub Publication.

## RetroDECK Releases

A version of RetroDECK is only considered released when it is published on Flathub.

https://flathub.org/apps/net.retrodeck.retrodeck

## RetroDECK Github: Main / Main Releases

The main repo of the RetroDECK Project.

Is contains the feature freezed stable releases of the RetroDECK Application. 

All releases here are considered as Pre-Releases, the full release is always on Flathub.

## RetroDECK Github: Cooker / Cooker Releases

The cooker repo of the RetroDECK Project.

Cooker is RetroDECK's bleeding edge "nightly" releases. 

Done feature branches get merged into cooker.

## RetroDECK feat/ branches

The feature rep of the RetroDECK Project.

## RetroDECK API

## RetroEngine

## Ponzu

## Components

**What are components?**

A component is a packaged executable:

- Engine
- System
- Emulator

That is also shipped with Component Recipe Files that tells RetroDECK how to build / use them and what features the component has. 

### Internal vs External components

- External components are stored within the external component space within writable userspace. `/app/retrodeck/components/<component name>/`

- Internal components, such as RetroDECK itself are stored on the read-only filesystem.

## Component Recipe Files

**What are Component Recipe Files?**

They are packaged files with an RetroDECK component are the information center for that component made from various scripts and json files.

It tells what tells RetroDECK how to build / use them and what features the component has. 

**Example of features:**

- Contain human-friendly information shown in menus
- Actions to be taken when changing presets
- Per-component one-off Bash functions
- Config file path information and more. 

As these files are read in an iterative way by the code, it is imperative that their structure be correct.


Even the internal Component RetroDECK will also have manifest.json files, which contain any related information used in menus or API data gathering. As most internal components won't support things like presets, they will generally be shorter than actual emulator components.

**Read more over at:**

[Component Recipe Files](../wiki_development/components-api/component-recipe-files.md)

### What are the four component Recipe files?

These files will be stored along side the rest of the component data in specific location.

The following four files are required by every component:

- **manifest.json** 

- **functions.sh** 

- **prepare_component.sh** 

- **component_launcher.sh** 




