# How-to: Add a Component to RetroDECK - A Cooking Philosophy

<img src="../../../../wiki_icons/retrodeck/icon-component.svg" width="75">

This is the first step of creating a component and adding it into RetroDECK.

### Description

Creating a new RetroDECK component is a flexible process that can vary depending on the source of the component. However, the final structure remains consistent across all components. Building a new component in RetroDECK is like preparing a gourmet dish.

**Note:**

There’s no one-size-fits-all guide for adding a component. Each component is unique software with its own quirks, requirements, and integration challenges. Use this guide as a starting point, but expect to adapt based on the specifics of what you're working with.

---

## About the Components

**Component Type: What is it?**

Components can broadly be categorized by from the application you want to add:

- **Client**
- **Emulator**
- **Engine**
- **Multi-Emulator**
- **Port**
- **System**

Read here for more details: 

- [Development Glossary](../../general/development-glossary.md) 
- [What is RetroDECK?](../../../wiki_about/what-is-retrodeck.md)

---

## Component Source Format: What to Prioritize?

When multiple source formats are available for a component, prioritize them in the following order for ease of integration with RetroDECK:

| Priority | Format              | Description                                                                 |
|----------|---------------------|-----------------------------------------------------------------------------|
| 1        | Flatpak             | A sandboxed package format commonly used on Linux for app distribution , published on flathub     |
| 2        | AppImage            | A portable, self-contained executable that runs without installation        |
| 3        | Precompiled Binary  | A ready-to-run executable built for a specific platform                     |
| 4        | Build from Source   | Raw source code that must be compiled manually before use                   |

---

## On Adding Ports

[PortMaster](https://portmaster.games/) is the recommended method for integrating ports into RetroDECK. Contributing to PortMaster instead of directly adding a port to RetroDECK helps:

- Reduce bloat in the RetroDECK ecosystem.
- Broaden the benefit to users beyond RetroDECK.
- There might be other methods in the future outside of PortMaster to add ports that don't fit within PortMasters scope.

Follow the [PortMaster: Porting Guide](https://portmaster.games/porting.html).

### When to Add a Port Directly to RetroDECK?

In rare cases, it may be beneficial to include a port directly in RetroDECK if one or more of the following criteria are met:

- The port requires **online multiplayer** support.
- The port benefits from **custom launchers**.
- The port needs **frequent or rapid updates**.
- The port supports **modding or includes a mod downloader**.
- The port depends on **technologies not supported by PortMaster**, such as: Newer versions of SDL/OpenGL, Vulkan, Wine or other.
- There might be other methods in the future that can facilitate this in a easier manner inside of RetroDECK.

---

## Beginning: Issue, Vision, Goals and Research

### Create an Issue and Talk to the Team

If you want to add a new component, start by opening an [Issue on Github](https://github.com/RetroDECK/RetroDECK/issues) or check if there already is an issue of the component you want to add. 

Use the issue to explain your idea and get feedback from the RetroDECK team.

Some components might not fit with RetroDECK’s design goals or technical direction. The RetroDECK team will review each proposal and has the final say on whether a component gets included or not.


### Check Licensing

Make sure the component you're suggesting has a license that is compatible with RetroDECK.

### Test & Research the Component

Before proposing anything, download and run the component locally. Understand how it behaves in its native environment.

- **Settings**: What options does it support? Look for things like hotkeys, fullscreen, widescreen, auto-close launcher, etc.
- **CLI/Launch Commands**: Are there any command-line options or launch arguments?
- **Configuration**: Where are settings saved? Identify any config files or folders used.


### How should users access it?

- Is it an component already supported by ES-DE native but not yet added to RetroDECK?
- Is it a new component that needs custom menu entries and formats?
- Is it a port that should go into the ES-DE port menu?
- Should it be launched via the Configurator?
- Is there cli launch command for the component and what are they?
- Other things that might be unique for just that component when it comes to access.

### Where do the files go?

- What files does the component use?
- How can you map them into the `retrodeck/` directory structure?

### What needs to be user-editable?

- Which files or folders should be exposed to the user?
- Think about what should go into `/home/<user>/.var/app/net.retrodeck.retrodeck/` - under `data`, `cache`, or `config`.


---

## Prerequisites

### Install Development Tools 

Make sure the following tools are installed on your system:

- `flatpak-builder`
- `git`
- `gh` *(optional, for GitHub CLI tasks)*

Install them using your distribution’s package manager (e.g. `apt`, `dnf`, `pacman`, etc.).

### Install Latest RetroDECK Cooker

[RetroDECK/Cooker](https://github.com/RetroDECK/Cooker)

```
flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak 
```

### How-to: Enter the Flatpak Shell & Folders

```
flatpak run --command=bash net.retrodeck.retrodeck --debug
```

`app/` corresponds to your local Flatpak system environment.

`var/` corresponds to your local Flatpak user environment.

While the runtime itself is the "OS" of the flatpak.

**Read more here:** 

- [Folders & Filepaths](../../general/folders-filepaths.md)
- [Debug Mode](../../general/debug-mode.md)

---

##  Guides for Component Creation

After you have taken all into account follow the one of these General Guides and begin the second step of your journey to add a Component into RetroDECK:

- **Source: AppImage:** [Creating Component: AppImage](component-create-appimage.md)

- **Source: Flatpak:** [Creating Component: Flatpak](component-create-flatpak.md)
