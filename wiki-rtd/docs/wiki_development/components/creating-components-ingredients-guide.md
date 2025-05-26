# Creating Component: Ingredient and Recipe Files Guide

Read the Development Glossary a more shot general explanation of each file: [Development Glossary](../development-glossary.md) 

**The Ingredient files:**

```
component_launcher.sh
component_functions.sh
component_manifest.json
component_prepare.sh
```

**The Recipe file:**

```
recipe.sh
```

## Prerequisites: A prepared component

**Note:**

This assumes you have already prepared a component folder from:

- **Source: AppImage:** [Creating Component: AppImage](component-create-appimage.md)

- **Source: Flatpak:** [Creating Component: Flatpak](component-create-flatpak.md)

## Step 1: Prepare the component_launcher.sh ingredient

**Read more here:** 

- [component_launcher.sh](ing-component-launcher.md)

## Step 2: Do a test run of component_launcher.sh 

1. Run: `flatpak run --command=bash net.retrodeck.retrodeck`.
2. Then from the terminal shell try to run your newly created `component_launcher.sh`.

Keep iterering until the file launches and works as excepted.

## Step 3: Configurations: Try to Optimize (If possible) 

Do a first pass and try to tweak configurations:

- **Tweak Controls:** Test the controls with Steam Input (if possible) and tweak from there.
- **Tweak Performance:** Check the performance: RetroDECK standard is the Steam Deck hardware as default.

## Step 4: Configurations: Set Folders & Filepaths

### Step 4a: Configure: Folders & Filepaths (If possible) 

See if you can set filepaths / folderpaths within the configuration files.

Use `$RDHome` variable for the filepaths / folderpaths.

**Examples:**

If the configuration allows you to specify several folders:

```
$RDHome/roms/<your component rom directory>
$RDHome/bios/<your component bios directory><subdirectory it might need>
$RDHome/mods/<your component mod directory>/<subdirectory it might need>
$RDHome/saves/<your component saves directory>
$RDHome/states/<your component states directory>

etc...
```

### Step 4b: Symlinks (If possible) 

If you can't configure filepaths / folderpaths from the config files you might need to create symlinks instead.

## Step 5: Prepare the Metadata Ingredients

**Read more here:** 

- [component_functions.sh](ing-component-functions.md)

- [component_manifest.json](ing-component-manifest.md)

- [component_prepare.sh](ing-component-prepare.md)

## Step 6: Add the INGREDIENT files

Add the INGREDIENT files to: `retrodeck/components/<component_name>`

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

## Step 7: Compress the artifact

Compress the RetroDECK: `retrodeck/components/<component_name>` folder into tar.gz. 

Name it: `<component_name>-artifact.tar.gz`

Command:

```
tar -czf "<component_name>-artifact.tar.gz" "<component_name>"
```

**Example:**

```
tar -czf "cemu-artifact.tar.gz" "cemu"
```

Then PR it to the [RetroDECK/components](https://github.com/RetroDECK/components) in it's own folder.

## Step 8: Write the recipe.sh Build File

**Read more here:** 

- [recipe.sh](component-recipe.md)

Then PR it to the [RetroDECK/components](https://github.com/RetroDECK/components) next to the artifact.


## Step 9: Assemble the Release

The `RetroDECK Assembler` building process follows the recipe.sh and builds the artifact with the ingredients files into:

[RetroDECK/components/releases](https://github.com/RetroDECK/components/releases) 

## Step 10: Into the Cooker

The `RetroDECK Assembler` will take the finished component artifacts and they becomes part of the:

[RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repository. 

The RetroDECK Team and Community (Taste) Testers will:

- Give you feedback
- Test and bug report
- Tweak configurations 

## Step 11: How-to access your component and run game/games (Engines, Emulators, Ports)? 

If the component is not a System that is only available via the Configurator. 

You need to make it accessible within ES-DE

**Read more:** ES-DE Edits

**Read more:** Custom Wrapper like GZDoom

 
