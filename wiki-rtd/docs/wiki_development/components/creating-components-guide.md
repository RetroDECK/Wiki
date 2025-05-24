# How-to: Add a Component to RetroDECK - A Cooking Philosophy

### Description

Creating a new RetroDECK component is a flexible process that can vary depending on the source of the component. However, the final structure remains consistent across all components. Building a new component in RetroDECK is like preparing a gourmet dish.

---

## Prerequisites: Before you start


### Communicate & Licensing

**Create an Issue & Talk to the RetroDECK Team**

Share your idea and get feedback and by creating an [Issue on Github](https://github.com/RetroDECK/RetroDECK/issues) of the component you want to add. Read up on GitHub on how to add issues and submit pull-requests if you need to.

Some components may not align with the project's design goals or technical direction. The RetroDECK Team decides if a component should be included or not and has the final say on this matter. 

**Check Licensing** 

Check the licensing of the component you want to include. 

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

**When to Add a Port Directly to RetroDECK?**

In rare cases, it may be beneficial to include a port directly in RetroDECK if one or more of the following criteria are met:

- The port requires **online multiplayer** support.
- The port benefits from **custom launchers**.
- The port needs **frequent or rapid updates**.
- The port supports **modding or includes a mod downloader**.
- The port depends on **technologies not supported by PortMaster**, such as: Newer versions of SDL/OpenGL, Vulkan, Wine or other.

---

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

**What files needs to be exposed to the enduser?**

- What config files, folders or other files needs to be exposed to the end user to edit/populate within userspace. `/home/<user>/.var/app/net.retrodeck.retrodeck/` data, cache or config.

### Component Source Format: What to Prioritize?

When multiple source formats are available for a component, prioritize them in the following order for ease of integration with RetroDECK:

1. **AppImage**
2. **Flatpak**
3. **Precompiled Binary**
4. **Build from Source**

---

## How-to: Guidelines on adding a Component

**Note:** It's impossible to write a 100% correct guide on how-to add a component as each of them are unique.

### Step X: Make a testitestingng folder 

1. Have a local copy of RetroDECK Cooker installed.
2. Create a components folder under retrodeck/ userdata folder.
3. **Result:** `retrodeck/components/`

### Step X: Get the Source Files

Navigate to `retrodeck/components/`

bin

1. **AppImage:** Link
2. **Flatpak:** Link
3. **Precompiled Binary:** Link
4. **Build from Source:** Link



### Step X: Prepare the component_launcher.sh wrapper (Ingredient File)

**Read more here:** 

[component_launcher.sh](ing-component-launcher.md)

### Test inside the RetroDECK Enviroment

flatpak run --command=bash net.retrodeck.retrodeck

**Read more here:**

### Step X: Prepare the Metadata (Ingredient Files)

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



## TODO / Ask Tweedledee and Tweedledum 

To answer the "How-to add a component to RetroDECK" 

We also need to go into how to modify the ES-DE file and other things.

We need to answer:

- How-to make it showup in ES-DE in general. 
- How-to: add an component that is already supported by ES-DE? (Just remove the #) 
- How-to: add an component that is NOT supported by ES-DE? It needs new folders? How does folder creation work in ES-DE?
- How-to: add an component needs a custom format or wrapper like GZDoom and have it work in ES-DE?
- How-to: add a launch able port script under  roms/ports like PortMaster or other ports we want to include. 
- How-to: Edit configurations to setup folders and what do look out for? (How does $RDHome work?)
- IF that is not possible how to create the symlinks when RetroDECK is installed.
- How-to: Expose config files, caches and folders into the userspace /home/<user>/.var/app/net.retrodeck.retrodeck/


Structure the new component application files as they would be when unpacked from a component artifact (.../retrodeck/components/<component name>/bin, lib and share folders etc. as needed.
Create component_launcher.sh script and verify that component can launch properly when run through the launcher script while inside the flatpak (flatpak run --command=bash net.retrodeck.retrodeck)

Close, I'll clarify a little. I guess it doesn't really matter where the <component name> folder is, as long as it is somewhere accessible to the Flatpak (which is pretty much anywhere right now). I've just been putting it in the Flatpak files (what would be the RO space when the Flatpak is running) for my own testing. That location differs depending on if the Flatpak is installed in user mode or not. The <component name> folder could just as easily be in $HOME. The structure of the folders inside the <component name> folder will depend completely on what the component needs. It should always have a "bin" folder where the binary will be, for consistency. It will only need a "lib" folder if the component needs libraries that are not included in the Flatpak runtime. There may not be a "share" folder either, if the component doesn't use one. All this depends on how the component was written, and needs to be evaluated on a per-component basis. Generally, if the component is coming from an AppImage, whatever structure is used in the AppImage will also work in the <component name> folder as well, but not always. I have been determining if the component needs extra libraries by trying to launch it from inside the Flatpak and see if it complains about missing libraries or otherwise fails to launch. Find the missing libraries (I've been pulling them from other Flatpak runtimes and making a note of what I pulled) and include them in the "lib" folder. Making sure to launch from the component wrapper (which will update the LD_LIBRARY_PATH env var), just keep doing that until the component runs.

Unfortunately there in no "one size fits all" process for this, because each components needs are a little bit different. But ultimately we are determining what structure and files need to be included in the <component name> folder for it to be able to launch.
[5:06 PM]IceNine451 | RetroDECK 🇺🇸(EST): I guess I should clarify that the <component name> folder can be anywhere for testing if the component launches, for testing if things like the manifest menu entries work it will need to be in the correct specific location.
