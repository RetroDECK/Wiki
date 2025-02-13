# RetroArch:  Beetle PSX HW - Texture Pack Guide (Vulkan Only)

This guide will help you set up texture replacements for the Beetle PSX HW core using the Vulkan renderer. Texture replacements can enhance the visual quality of your games by replacing the original textures with high-resolution ones.

Source: [Beetle PSX HW](https://docs.libretro.com/library/beetle_psx_hw/#texture-replacements-vulkan-only)

## Prerequisites: Set the Beetle PSX HW Core 

Use ES-DE to change game you want have textures on to use the Beetle PSX HW Core.

Follow the [ES-DE Frontend: General Guide](../../wiki_system_guides/es-de/esde-guide.md) on how to set alterantive emulators for specific games.


## Step-by-step Guide

### Step 1: Enable Texture Replacements

Open `RetroArch` while running the game from RetroDECK's ES-DE Frontend.

Navigate to `Quick Menu` -> `Options`.
Scroll down to find the option `Load Texture Replacements` and set it to `On`.

Then save the current configuration for that game under `Core Options` -> `Manage Core Options` -> `Save Game Options`

### Step 2: Prepare the Textures

Extract the textures you want to use into a folder named 

`[game_filename]-texture-replacements` next to your game in `retrodeck/psx/` directory.

Ensure `[game_filename]` matches the actual filename of the game you are loading. 

For example, if your game file is named `DragonFantasy7.bin`, the folder should be named `DragonFantasy7-texture-replacements`.

**Example:**

`retrodeck/psx/Dragon Fantasy 7/DragonFantasy7-texture-replacements/`

or 

`retrodeck/psx/DragonFantasy7-texture-replacements/`


### Step 3: Load the Game

Start the game as usual by selecting the game file in RetroDECK's ES-DE Frontend.

The emulator will automatically load the textures from the `[game_filename]-texture-replacements` folder.

### Step 4: Verify the Textures

Once the game is loaded, check if the new textures are being applied correctly.

If the textures are not applied, ensure that the textures are named correctly and placed in the right folder.
