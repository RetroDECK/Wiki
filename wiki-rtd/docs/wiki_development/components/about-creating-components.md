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

### Step 0: Mise en place

- **Talk to the RetroDECK Team** - Share your idea and get feedback. Some components may not align with the project's design goals or technical direction. You can do this by creating an issue on Github.

- **Check Licensing** - Check the licensing of the component. If all is **OK** make a note and it will need to be added in full to before a stable release is made:

[other_licenses.txt](https://github.com/RetroDECK/RetroDECK/blob/main/other_licenses.txt) 

### Step 1: Write the Recipe

The **Component Recipe File** `recipe.sh` purpose is to tell the RetroDECK build automation system what needs to happen to take the components base source and turn it into a RetroDECK Component.

The recipe file is **NOT** included in the final component package. 

**Read more here:** [recipe.sh](component-recipe.md)


### Step 2: Add the Ingredients

Include the following files in your component folder:

The **Components Ingredient Files** is to feed details about the Component to the RetroDECK Framework on it's features and functions.

These files will be stored along side the rest of the component data in specific location.

The following files are required by every component:

- `component_manifest.json`

- `component_functions.sh` 

- `component_prepare.sh`

- `component_launcher.sh`

**Read more here:** [About Component Ingredient Files](about-component-ingredient-files.md)


### Step 3: Put It Together

Bundle everything together:

```
tar -czf "component-artifact.tar.gz" "component"
```

Then upload it to the [RetroDECK/components](https://github.com/RetroDECK/components).


### Step 4: Assemble the Release

The `RetroDECK Assembler` building process (think of it like a cake assembler). Follows the recipe and takes all your ingredients and puts into a RetroDECK Release.


### Step 5: Into the Cooker

Later your component becomes part of the [RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repository. This is used by the RetroDECK Community Beta (Taste) Testers and the RetroDECK Team. 


### Step 6: Serve to Flathub

Finally, your creation is served to users as part of the stable RetroDECK release on [Flathub](https://flathub.org/apps/net.retrodeck.retrodeck).
