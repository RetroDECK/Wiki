# How-to: Add a Component to RetroDECK - A Cooking Philosophy

### Description

Creating a new RetroDECK component is a flexible process that can vary depending on the source of the component. However, the final structure remains consistent across all components. Building a new component in RetroDECK is like preparing a gourmet dish.

**Note:** 

It's impossible to write a 100% correct guide on how-to add a component as each of them are unique piece of software.

---

## About the Component

### Component Type: What is it?

Components can broadly be categorized by from the application you want to add:

- **Emulator**
- **Engine**
- **Port**
- **System**

Read the Development Glossary for more details here: [Development Glossary](../development-glossary.md) 

#### On Adding Ports

[PortMaster](https://portmaster.games/) is the recommended method for integrating ports into RetroDECK. Contributing to PortMaster instead of directly adding a port to RetroDECK helps:

- Reduce bloat in the RetroDECK ecosystem.
- Broaden the benefit to users beyond RetroDECK.

Follow the [PortMaster: Porting Guide](https://portmaster.games/porting.html).

#### When to Add a Port Directly to RetroDECK?

In rare cases, it may be beneficial to include a port directly in RetroDECK if one or more of the following criteria are met:

- The port requires **online multiplayer** support.
- The port benefits from **custom launchers**.
- The port needs **frequent or rapid updates**.
- The port supports **modding or includes a mod downloader**.
- The port depends on **technologies not supported by PortMaster**, such as: Newer versions of SDL/OpenGL, Vulkan, Wine or other.


### Component Source Format: What to Prioritize?

When multiple source formats are available for a component, prioritize them in the following order for ease of integration with RetroDECK:

1. **AppImage**
2. **Flatpak**
3. **Precompiled Binary**
4. **Build from Source**

---

## Beginning: Issue, Vision, Goals and Research

### Add an Issue, Communicate and Check Licensing

**Create an Issue & Talk to the RetroDECK Team**

Share your idea and get feedback and by creating an [Issue on Github](https://github.com/RetroDECK/RetroDECK/issues) of the component you want to add. Read up on GitHub on how to add issues and submit pull-requests if you need to.

Some components may not align with the project's design goals or technical direction. The RetroDECK Team decides if a component should be included or not and has the final say on this matter. 

**Check Licensing** 

Check the licensing of the component you want to include. 

### Test & Research the Component

Always download & install the source component files locally and check how it behaves in it's normal environment. 

- **Check what settings it support:** Look into the settings and see what it supports and make a note of settings of interest such as: Hotkeys, Fullscreen, Widescreen, Close the Launcher when the game is launched or other of note. 

- **Check what CLI or launch commands there is:** See if there are any specific launch commands or CLI documentation. 

- **Check how configurations are saved** Check what config files there are that used to save various settings used by the component. 

### How does the users interact with it?

**How do you vision it accessed within RetroDECK?** 

- Is it a already supported emulator / engine within ES-DE that RetroDECK has not added yet?

- Is it a new component that is not supported by standard ES-DE and needs custom menu entries in the RetroDECK ES-DE Theme and custom formats? 

- Is it a port that needs to go into the port menu of ES-DE?

- Is it a system that should be launched via the Configurator? 

**Where are the files stored within the retrodeck/ folder**

- What kind of files are there and how can the RetroDECK Folder structure be used with the component?

**What files needs to be exposed to the end-user?**

- What config files, folders or other files needs to be exposed to the end-user to edit/populate within userspace. `/home/<user>/.var/app/net.retrodeck.retrodeck/` data, cache or config.

---

## Prerequisites: Install Development Tools

You will need to have installed 

- `flatpak-builder`
- `git`
- `gh` *(optional)* 

to the distribution you are using.

---

## Guidelines for Component Creation

Follow the one of these General Guides and start your journey of adding a Component into RetroDECK:

- **AppImage:** [Creating Component: AppImage](component-create-appimage.md)

- **Flatpak:** [Creating Component: Flatpak](component-create-flatpak.md)
