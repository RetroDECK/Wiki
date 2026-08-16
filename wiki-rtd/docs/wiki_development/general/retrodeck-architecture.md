# RetroDECK Architecture

How RetroDECK works is that each component is subsandboxed into the flatpak.

wiki_images/flatpak/

flathub-logo.svg  flatpakadv.drawio.png  flatpak.drawio.png  flatpakrdclassic.drawio.png  flatpakrdneo.drawio.png


## What Is a Subsandbox?

A subsandbox is a container-launching mechanism managed by the RetroDECK Framework. It leverages the RetroDECK Flatpak container and Flatpak Runtime, which contain shared libraries and dependencies for components to use.

A subsandbox controls which libraries and files a component can access. This isolation allows RetroDECK to override the Flatpak Runtime's default library versions when needed.

This enables RetroDECK to support components built for diverse environments.

**Example**

The Flatpak Runtime may ship with `libSomething.so.5`, but a component may have been designed or tested against a different version. The RetroDECK Framework configures the environment so the component uses the appropriate version rather than accepting whatever the runtime provides.

## Simplified Architecture

A simplified RetroDECK architecture looks like this, but the pathings are different per component.

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

│
├── system libraries
├── graphics drivers
├── audio system
└── other

This abstraction layer ensures components interact with standardized system interfaces rather than direct host hardware.








