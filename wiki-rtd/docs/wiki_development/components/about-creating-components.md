# About RetroDECK Component Creation

### Description

Creating a new RetroDECK component is a flexible process that can vary depending on the source of the component. However, the final structure remains consistent across all components.

### Prerequisites 

Before adding a new component:

- **Talk to the RetroDECK Team** - Share your idea and get feedback. Some components may not align with the project's design goals or technical direction.

- **Check Licensing** - Check the licensing of the component.


## 🍳 Component Building: Cooking Philosophy

Building a new component in RetroDECK is like preparing a gourmet dish. 

0. Mise en place

Before you begin, check in with the RetroDECK Team and verify the licenses of the component you want to add.

1. Write the Recipe

Create a `recipe.sh` file — this tells RetroDECK where to find the source and how to cook (build) it.

2. Add the Ingredients

Include the following files in your component folder:

- `component_manifest.json`
- `component_functions.sh`
- `component_prepare.sh`
- `component_launcher.sh`

These define the component’s features and how it behaves.

3. Package It Up

Bundle everything together:

```
tar -czf "component-artifact.tar.gz" "component"
```

Then upload it to the [RetroDECK/components](https://github.com/RetroDECK/components).

4. Assemble the Release

The `RetroDECK Assembler` building process (think of it like a cake assembler) takes all your ingredients and layers them into as a part of a RetroDECK release.

5. Into the Cooker

Your component becomes part of the [RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repository.

6. Serve to Flathub

Finally, your creation is served to users as part of the stable RetroDECK release on [Flathub](https://flathub.org/apps/net.retrodeck.retrodeck).

## Source Format Prioritization

When multiple source formats are available for a component, prioritize them in the following order for ease of integration:

1. **AppImage**
2. **Flatpak**
3. **Precompiled Binary**
4. **Build from Source**

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

## Requirements

You will need to create the check the licences, add ingredients and recipe files for a component in addition to the folder structure as structured on the components repo.

### Check the Licences

Check the licence of the component you want to add, also check any other licences within the project website/repo/within the application itself. 

If all is **OK** make a note and it will need to be added in full to:

[other_licenses.txt](https://github.com/RetroDECK/RetroDECK/blob/main/other_licenses.txt) 


### RetroDECK Components Repository

The general component repository is available at:

🔗 [RetroDECK/components](https://github.com/RetroDECK/components)

### Component Recipe File

The **Component Recipe File** `recipe.sh` purpose is to tell the RetroDECK build automation system what needs to happen to take the components base source and turn it into a RetroDECK Component.

The recipe file is **NOT** included in the final component package. 

**Read more here:** [recipe.sh](component-recipe.md)

### Component Ingredient Files

The **Components Ingredient Files** is to feed details about the Component to the RetroDECK Framework on it's features and functions.

These files will be stored along side the rest of the component data in specific location.

The following files are required by every component:

- `component_manifest.json`

- `component_functions.sh` 

- `component_prepare.sh`

- `component_launcher.sh`

**Read more here:** [About Component Ingredient Files](about-component-ingredient-files.md)
