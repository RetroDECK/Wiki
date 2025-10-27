# Creating Component: Ingredients, Libraries and Recipe Files Guide

<img src="../../../../wiki_icons/retrodeck/icon-assembler.svg" width="75">

## Description 

Read the Development Glossary a more shot general explanation of each file: [Development Glossary](../../general/development-glossary.md) 

**The Ingredient files:**

```
component_launcher.sh
component_functions.sh
component_manifest.json
component_prepare.sh
component_libs.json
```

**The Recipe file:**

```
recipe.sh
```

## Prerequisites: A tested component

**Note:**

This assumes you have already tested a component folder from:

- **Source: AppImage:** [Creating Component: AppImage](component-create-appimage.md)

- **Source: Flatpak:** [Creating Component: Flatpak](component-create-flatpak.md)

## Step 1: Prepare the component_launcher.sh ingredient

**Read more here:** 

- [component_launcher.sh](../component-files/component-ingredient-launcher.md)

Look at at the examples of other components and just copy from the one closest and start from there. 

## Step 2: Do a test run of component_launcher.sh 

1. Run: `flatpak run --command=bash net.retrodeck.retrodeck --debug`.
2. Then from the terminal shell try to run your newly created `component_launcher.sh`.

Keep tinkering until the file launches and works as excepted.

## Step 3: Libraries

**Read more here for general information on libraries:** 

[RetroDECK Libraries](../../general/retrodeck-libraries.md)

## Step 4: Write the recipe.sh Build File

**Read more here:** 

- [recipe.sh](../component-files/component-recipe.md)

Then PR it to the [RetroDECK/components/cooker](https://github.com/RetroDECK/components/tree/cooker) next to the artifact in the folder.


## Step 5: Create the rest of the  Ingredient Files

**Read more here:** 

- [component_functions.sh](../component-files/component-ingredient-functions.md)

- [component_manifest.json](../component-files/component-ingredient-manifest.md)

- [component_prepare.sh](../component-files/component-ingredient-prepare.md)

## Step 6: Add the Ingredient files

Add the Ingredient files to: `retrodeck/components/<component_name>`

```
components/<component_name>/component_launcher.sh 
components/<component_name>/component_manifest.json
components/<component_name>/component_functions.sh
components/<component_name>/component_prepare.sh
```

**Example:**

```
components/cemu/component_launcher.sh 
components/cemu/component_manifest.json
components/cemu/component_functions.sh
components/cemu/component_prepare.sh
```


## Step 7: Configurations: Try to Optimize (If possible) 

Do a first pass and try to tweak configurations:

- **Tweak Controls:** Test the controls with Steam Input (if possible) and tweak from there.
- **Tweak Performance:** Check the performance: RetroDECK standard is the Steam Deck hardware as default.


## Step 8: Assemble the Release & Into the Cooker

The `RetroDECK Assembler` building process follows the `recipe.sh` and builds the artifact with the ingredients files into:

[RetroDECK/components/releases](https://github.com/RetroDECK/components/releases) 

After that the `RetroDECK Assembler`  will take the finished component artifacts and make them part of: 

- [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker)
- [RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker)

The RetroDECK Team and Community (Taste) Testers will:

- Give you feedback.
- Test and bug report.
- Ask you to tweak configurations. 

## Step 10: How-to: Access your component? 

Now your component have been added into RetroDECK, but how do the users access it?

You need to make it accessible within ES-DE (unless your component is a system that should only be part of the Configurator).

**Read more:** 

[Component: Add to ES-DE](component-add-to-es-de.md)
 
