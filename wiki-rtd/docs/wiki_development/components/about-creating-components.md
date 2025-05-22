# About RetroDECK Component Creation

## Overview

Creating a new RetroDECK component is a flexible process that varies depending on the source of the component. However, the final structure of the component remains consistent, regardless of its origin.

## Component Building: Cooking Philosophy

The base philosophy is to make a new component is:

1. Make a `recipe.sh` (tells RetroDECK where the source is and how-to build it).

2. Add the ingredients: `component_manifest.json`, `component_functions.sh`, `component_prepare.sh`, `component_launcher.sh` (Details about the Component on it's features and functions).

3. Put it all together `tar -czf "component-artifact.tar.gz" "component"` and put it on the [RetroDECK/components](https://github.com/RetroDECK/components) ready to cook.

4. Later it will be part of the build process of [RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repo. 

5. In the end it will be served as your favorite dish on [Flathub](https://flathub.org/apps/net.retrodeck.retrodeck)     as part of RetroDECK Stable.

## Source Format Prioritization

When multiple source formats are available for a component, prioritize them in the following order for ease of integration:

1. **AppImage**
2. **Flatpak**
3. **Precompiled Binary**
4. **Build from Source**



## Requirements

You will need to create the ingredients and recipe files for a component in addition to the folder structure as structured on the components repo.

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
