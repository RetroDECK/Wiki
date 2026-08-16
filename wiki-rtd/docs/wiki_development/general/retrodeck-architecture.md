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

A simplified RetroDECK architecture looks like this, but the pathings are different per component:

    +---------------------------+
    |        Component          |
    +-------------+-------------+
                  |
                  v
    +---------------------------+
    |         RetroDECK         |
    |         Framework         |
    |                           |
    |  Container / environment  |
    +-------------+-------------+
                  |
                  v
    +---------------------------+
    |    Component Specific     |
    |                           |
    |      libaries/files       |
    +-------------+-------------+
                  |
                  v
    +---------------------------+
    |    Component Shared       |
    |                           |
    |   shared-libaries/files   |
    +-------------+-------------+
                  |
                  v
    +---------------------------+
    |   Additional Depedenices  |
    +-------------+-------------+
                  |
                  v
    +---------------------------+
    |      Flatpak Runtime      |
    |     org.KDE.Platform      |
    +-------------+-------------+
                  |
                  v
               Host OS


## Structure

Think of it as the Flatpak Runtime simulates the Host OS

Flatpak Runtime (Host OS)
│
├── system libraries
├── graphics drivers
├── audio system




