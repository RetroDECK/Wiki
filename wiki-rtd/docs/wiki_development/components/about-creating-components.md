# About RetroDECK Component Creation

### Decription

Creating a new RetroDECK component is a flexible process that varies depending on the source of the component. However, the final structure of the component remains consistent, regardless of its origin.

### Prerequisites 

Before adding a new component talk to the RetroDECK Team about your intention. Some components might not fit the Teams design intent of the project.

## Component Building: Cooking Philosophy

The base philosophy is to make a new component is:

1. Make a `recipe.sh` (tells RetroDECK where the source is and how-to build it).

2. Add the ingredients: `component_manifest.json`, `component_functions.sh`, `component_prepare.sh`, `component_launcher.sh` (Details about the Component on it's features and functions).

3. Put it all together `tar -czf "component-artifact.tar.gz" "component"` and put it on the [RetroDECK/components](https://github.com/RetroDECK/components) ready to cook.

4. Later it will be part of the build process of [RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repo. 

5. In the end it will be served as your favorite dish on [Flathub](https://flathub.org/apps/net.retrodeck.retrodeck) as part of RetroDECK Stable.

## Source Format Prioritization

When multiple source formats are available for a component, prioritize them in the following order for ease of integration:

1. **AppImage**
2. **Flatpak**
3. **Precompiled Binary**
4. **Build from Source**

## Component Types

Components can broadly be categorized by from the application you want to add:

- Emulator
- Engine
- Port
- System

Read the Development Glossary for more details here: [Development Glossary](../development-glossary.md) 

### On Adding Ports

[PortMaster](https://portmaster.games/) is the standard way to add a Port into RetroDECK. It's better to contribute to that PortMaster then to add a port directly into RetroDECK to reduce bloat and more people will benefit outside of RetroDECK. 

Follow the [PortMaster: Porting Guide](https://portmaster.games/porting.html).

**BUT that said**

In rare occasions there could be a benifit to add a port into RetroDECK if the following criteria are met.

The Port is in need of one or more of the following:

- Online Multiplayer.
- Launchers.
- Speedy Updates or Updates (sometimes they just add the port once, to have it running).
- Mod Support / Downloader.
- Certain Tech PortMaster can't support (Newer SDL/OpenGL, Vulkan, Wine etc...).

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

📄 **Read more here:** [recipe.sh](component-recipe.md)

### Component Ingredient Files

The **Components Ingredient Files** is to feed details about the Component to the RetroDECK Framework on it's features and functions.

These files will be stored along side the rest of the component data in specific location.

The following files are required by every component:

- `component_manifest.json`

- `component_functions.sh` 

- `component_prepare.sh`

- `component_launcher.sh`

📄 **Read more here:** [About Component Ingredient Files](about-component-ingredient-files.md)
