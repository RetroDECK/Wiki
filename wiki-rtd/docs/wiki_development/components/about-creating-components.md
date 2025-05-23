# About RetroDECK Component Creation

### Description

Creating a new RetroDECK component is a flexible process that can vary depending on the source of the component. However, the final structure remains consistent across all components.

---

## Component Types

Components can broadly be categorized by from the application you want to add:

- **Emulator**
- **Engine**
- **Port**
- **System**

Read the Development Glossary for more details here: [Development Glossary](../development-glossary.md) 

### On Adding Ports

[PortMaster](https://portmaster.games/) is the recommended method for integrating ports into RetroDECK. Contributing to PortMaster instead of directly adding a port to RetroDECK helps:

- Reduce bloat in the RetroDECK ecosystem.
- Broaden the benefit to users beyond RetroDECK.

Follow the [PortMaster: Porting Guide](https://portmaster.games/porting.html).

**When to Add a Port Directly to RetroDECK?**

In rare cases, it may be beneficial to include a port directly in RetroDECK if one or more of the following criteria are met:

- The port requires **online multiplayer** support.
- The port benefits from **custom launchers**.
- The port needs **frequent or rapid updates**.
- The port supports **modding or includes a mod downloader**.
- The port depends on **technologies not supported by PortMaster**, such as: Newer versions of SDL/OpenGL, Vulkan, Wine or other.

---

## Component Source Format Prioritization

When multiple source formats are available for a component, prioritize them in the following order for ease of integration:

1. **AppImage**
2. **Flatpak**
3. **Precompiled Binary**
4. **Build from Source**

---


## 🍳 Building Components: A Cooking Philosophy 

Building a new component in RetroDECK is like preparing a gourmet dish. 

### Step 0: Before you start 

- **Talk to the RetroDECK Team** - Share your idea and get feedback. Some components may not align with the project's design goals or technical direction. You can do this by creating an [Issue on Github](https://github.com/RetroDECK/RetroDECK/issues) and also communicating on social platforms.

- **Check Licensing** - Check the licensing of the component. If all is **OK** make a note and it will need to be added in full to before a stable release is made: [other_licenses.txt](https://github.com/RetroDECK/RetroDECK/blob/main/other_licenses.txt).

### Step X: Test the Component 

Download & install the source component files locally and check how it behaves in it's intended environment. 

- **Check what settings it support:** Look into the settings and see what it supports and make a note of settings of interest such as: Hotkeys, Fullscreen, Widescreen, Close the Launcher when the game is launched or other of note. 

- **Check what CLI or launch commands there is:** See if there are any specific launch commands or CLI documentation. 

- **Check how configurations are saved** Check what config files there are that used to save various settings used by the component. 

### Step X: Prepare the component_launcher.sh

**Read more here:** 

[component_launcher.sh](ing-component-launcher.md)

### Step X: Test the Component inside the Flatpak

Now it's time to test it inside the RetroDECK Flatpak Environment. 

1. Have a local copy of RetroDECK Cooker installed.

Create a new component folder in the RetroDECK Flatpak files.,
Structure the new component application files as they would be when unpacked from a component artifact (.../retrodeck/components/<component name>/bin, lib and share folders etc. as needed.,
Create component_launcher.sh script and verify that component can launch properly when run through the launcher script while inside the flatpak (flatpak run --command=bash net.retrodeck.retrodeck),

**Read more here:**

### Step X: Prepare the Metadata Files

**Read more here:** 

-[component_functions.sh](ing-component-functions.md)

-[component_manifest.json](ing-component-manifest.md)

-[component_prepare.sh](ing-component-prepare.md)

### Step X: Tweak Configurations

Configure initial component settings to make sure controls work, performance is good on Steam Deck etc. When done, the components config file will become the shipped "RetroDECK defaults" config.,

### Step X: Write the recipe.sh Build File

**Read more here:** 

- [recipe.sh](component-recipe.md)

### Step X: Compress the Artifact

Bundle everything together:

```
tar -czf "component-artifact.tar.gz" "component"
```

Then PR it to the [RetroDECK/components](https://github.com/RetroDECK/components).


### Step X: Assemble the Release

The `RetroDECK Assembler` building process follows the recipe.sh and builds the artifact with the ingredients files into:

[RetroDECK/components/releases](https://github.com/RetroDECK/components/releases) 


### Step X: Into the Cooker

The `RetroDECK Assembler` will take the finished component artifacts and they becomes part of the:

[RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repository. 

At this stage the RetroDECK Community Beta (Taste) Testers and the RetroDECK Team will check for bugs, tweak configurations, give feedback and more. Until it leaves cooker into a Stable Release of RetroDECK.

