# RetroDECK Architecture: Overview

A short overview of the RetroDECK Architecture.

---

## What is a Subsandbox?

A subsandbox is a container-launching mechanism managed by the RetroDECK Framework. It leverages the RetroDECK Flatpak container and Flatpak Runtime, which contain shared libraries and dependencies for components to use.

A subsandbox controls which libraries and files a component can access. This isolation allows RetroDECK to override the Flatpak Runtime's default library versions when needed.

This enables RetroDECK to support components built for diverse environments.

**Example**

The Flatpak Runtime may ship with `libSomething.so.5`, but a component may have been designed or tested against a different version. The RetroDECK Framework configures the environment so the component uses the appropriate version rather than accepting whatever the runtime provides.

---

## Simplified Architecture: RetroDECK

A simplified RetroDECK architecture looks like this, but the pathings in the layers are different per component.

    +---------------------------+
    |        Component          |        
    |  Container / environment  |           
    +-------------+-------------+            

Binaries and application files stored here with RetroDECK's component environment with component files. 
Component files define runtime behavior, update/installation and metadata used by the RetroDECK Framework.
                  |
                  v
    +---------------------------+
    |    Component Specific     |
    |                           |
    |      libaries/files       |
    +-------------+-------------+

A minimal set of the components require this enviroment when they cannot have their libraries decoupled and are hardcoded to expect paths under `/lib` or other locations.
                  |
                  v
    +---------------------------+
    |    Component Shared       |
    |                           |
    |   shared-libaries/files   |
    +-------------+-------------+

The `shared-libs` component is a standalone module that maintains a centralized library repository, storing all dependencies required across components. This enables consistent version referencing from a single source while supporting multiple Flatpak runtime sources. As a result, RetroDECK maintains only the minimum libraries necessary for each component.

                  |
                  v
    +---------------------------+
    |   Additional Depedenices  |
    +-------------+-------------+

A minimal set of the components require this enviroment require specific decpendecies.
                  |
                  v
    +---------------------------+
    |      Flatpak Runtime      |
    |     org.KDE.Platform      |
    +-------------+-------------+

The Flatpak environment supplies all remaining host OS-level libraries required by the components. In essence, the Flatpak Runtime simulates the Host OS layer, providing:

```
│
├── system libraries
├── graphics drivers
├── audio system
└── other
```

This Flatpak abstraction layer ensures components interact with standardized system interfaces rather than direct host hardware.

---

## Architectural Overview: Non-Standard Flatpak aka The Fatpak

<img src="../../../wiki_images/flatpak/flatpakrdneo.drawio.png" width="600" alt="RetroDECK Flatpak">

The following flowchart illustrates how multiple components interact within RetroDECK. Components route to different layers, though not all utilize every layer.

Each component has unique requirements. The goal is to minimize dependency overhead and eliminate library duplication, conserving user-space while ensuring each application operates within its precisely configured subsandbox environment.

While conceptually similar to Docker and Valves Steam's Proton Pressure Vessel. RetroDECK's framework, subsandboxing and architecture is a distinct solution developed by the RetroDECK Team that operates entirely within a single Flatpak application.


### Reference: A minimal flatpak

<img src="../../../wiki_images/flatpak/flatpak.drawio.png" width="600" alt="RetroDECK Flatpak">

A minimal Flatpak retrieves all required libraries and dependencies from the Flatpak Runtime. 

**Most Flatpak applications**


### Reference: Advanced Flatpak Design

<img src="../../../wiki_images/flatpak/flatpakadv.drawio.png" width="600" alt="Diagram showing advanced Flatpak structure with additional component layers beyond Flatpak Runtime">

An advanced Flatpak requires supplementary libraries and dependencies beyond those provided by the Flatpak Runtime. 

**Only a minority of Flatpaks**

---

## Simplified Architecture: Component and RetroDECK Building


A simplified RetroDECK building architecture looks like this.

    +---------------------------+
    |   RetroDECK Components    |        
    |           Repo            |           
    +-------------+-------------+   

Component repository store data in `component/<component_files>/` directories organized as follows:

**The Component Recipe**
- component_recipe.json

**The Component Ingredients** 
- component_functions.sh  
- component_launcher.sh
- component_manifest.json

`component/rd_assets/<extra_assets>`

The repo hosts extra assets that cannot be easily sourced from the recipe. These may include graphical assets, mods, or supplementary software that complement the component.

`component/rd_assets/rd_config/<component_config_files>`

Components may include pre-configured configuration files tailored for the RetroDECK environment.

`component/rd_assets/bin/<binary>`

A few exceptions store pre-built binaries compiled from source. These are typically minimal components, such as lightweight retro PC emulators.

                  |
                  v
    +---------------------------+
    |   RetroDECK Alchemist     |        
    |                           |           
    +-------------+-------------+            
    
The Alchemist functions as both a GitHub module and an internal RetroDECK module. It reads `component_recipe.json` to determine:

- Application source location
- Required dependencies (libraries, assets)
- External resources requiring retrieval

The Alchemist supports diverse sources: Flatpak packages from Flathub, AppImages from GitLab, binaries from SourceForge, or source code from various websites. Based on the recipe, it synthesizes all components into a functional application. As long as the recipe is correct magic will happen.

                  |
                  v
    +---------------------------+
    |    RetroDECK Assembler    |
    |     Component Releses     |
    +-------------+-------------+

The RetroDECK Assembler is the collective term for GitHub Runners that build releases within their Linux build environments.

Combined with The Alchemist, it assembles these builds into RetroDECK component releases. Depending on the release type, components are distributed to one to the correct release channel:

- Components Cooker - Feature Branches (merged into Cooker upon readiness) 
- Components Cooker - (bleeding-edge testing environment)
- Components Main (stable production releases)

                  |
                  v
    +---------------------------+
    |    RetroDECK Assembler    |
    |     RetroDECK Releses     |
    +-------------+-------------+

When the RetroDECK build is triggered, the Assembler sources components alongside the RetroDECK Application to produce a Flatpak release. The target channel depends on the source branch:

- Cooker - Feature Branches (Published on the Cooker Releases Repository) 
- Cooker - (Published on the Cooker Releases Repository) 
- Main (Published on RetroDECK Main Repository) 

---