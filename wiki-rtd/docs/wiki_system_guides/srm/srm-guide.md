# Steam ROM Manager (SRM) - General Guide

<img src="../../../wiki_images/logos/srm-logo.png" width="150">

Steam ROM Manager is a tool that helps you import games in bulk and manage artwork for Steam. It has been integrated into RetroDECK since version 0.9.0b. 

This tool adds individual games to Steam, incorporates artwork from [SteamGridDB](https://www.steamgriddb.com/), and configures the RetroDECK Steam Input layouts.

**Note:**

Additionally, RetroDECK uses Steam ROM Manager as part of its backend for the `Steam Sync` feature that is documented here.

---

### SRM Links:

[Steam Rom Manager - Webpage](https://steamgriddb.github.io/steam-rom-manager/)

[Steam Rom Manager - Github](https://github.com/SteamGridDB/steam-rom-manager)

[SteamGridDB](https://www.steamgriddb.com/)

---

### Warning - Flatpak Steam not yet supported

We haven't added support for the Flatpak version of Steam yet.

### Warning - Exotic ROMs filenames can break the scripts

Some games have symbols in their names that can cause issues with the parser, preventing the game from launching. Symbols like ( ) [ ] are fine, but avoid using:

/ \ { } < > ' * `

Consider renaming games that contain these symbols.

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Launch Scripts Folder | `retrodeck/roms/.sync/`   |  This hidden folder contains the auto generated launch scripts for Steam as `.sh` files.   |         | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/config/steam-rom-manager/`         |   |

## How-to enable Steam Sync?

Games marked as favorites in ES-DE (with a ⭐ or another icon depending on theme) will sync to Steam with their artwork when you exit the application. They will appear in Steam after you restart it.

### Step 1: Mark games as ⭐ favorites in ES-DE

<img src="../../../wiki_images/systems/srm/es-de-favorite.png" width="800">

Navigate to a game in ES-DE and press the `north button` to mark it as a favorite. This corresponds to the `Y` button on Xbox, the `Triangle` button on PlayStation, and the `X` button on Nintendo.

### Step 2: Enable in Configurator

<img src="../../../wiki_images/systems/srm/sync-config.png" width="800">

<img src="../../../wiki_images/systems/srm/sync-prompt.png" width="800">


Enable the Steam Sync feature inside the Configurator by pressing `Yes`.

### Step 3: Exit RetroDECK to start the Sync

<img src="../../../wiki_images/systems/srm/sync-loading.png" width="800">


**Note:** This process might take a while based on your hardware and game library size.

You can leave the sync window running in the background and use another app or play another game.

### Step 4: Restart / Reload Steam

Steam needs to be restarted before the games show up in your library.

For the Steam Deck, you can either restart the device or switch from `Game Mode` to `Desktop Mode` and back to `Game Mode` to relaunch Steam.

On a PC, simply `Exit Steam` and relaunch it as usual.



### Step 5: Results

<img src="../../../wiki_images/systems/srm/steam-burger.png" width="800">

If everything went correctly, the games should now be added to Steam.

## How-to disable Steam Sync?

Go into the Configurator and press Steam Sync. 

If it's enabled, it will ask if you want to disable it. 

Just press `Yes` in the prompt. 

This will also remove your favorites from Steam.

## How to add RetroDECK doom files using Steam Sync - Grid and Tear Project

<img src="../../../wiki_images/systems/srm/brutaldoom.png" width="800">

[SteamGridDB: Grid and Tear](https://www.steamgriddb.com/projects/grid-and-tear) is a project for adding art for various doom mods. 

The Steam Sync feature can be used to add RetroDECK doom files. 

To add the `.doom` files, simply mark them as ⭐ favorites in ES-DE, and `Steam Sync` will pick them up.


**Search if the mod has art**

Go to [SteamGridDB: Grid and Tear](https://www.steamgriddb.com/projects/grid-and-tear) and search for what mods are supported currently with art. 

**Give the .doom file a matching name**

Match the names of the `.doom` files with how they are called on SteamGridDB for the art to be correctly scraped.

[Example - SteamGridDB: Brutal DOOM](https://www.steamgriddb.com/game/5249817)

The file in this case is called `Brutal Doom.doom`. 

**If you are unsure on how to create doom files**

[Guide: How to create RetroDECK .doom file](../../wiki_engine_guides/gzdoom/retrodeck-doomfile.md)

## Can I do advanced tweaking in SRM?

<img src="../../../wiki_images/systems/srm/srm-window.png" width="800">

Yes, you can open the entire SRM interface from the Configurator. You can tweak it as much as you like.

To access it, go to: 

`Configurator` -> `Open Emulator / Component` -> `Steam Rom Manager`. 

If you break something, you can reset it to default via:

`Configurator` -> `Troubleshooting` -> `Reset` -> `Component` -> `Steam Rom Manager`. 

## How does it work? 

When you activate the sync function, launch scripts are created in a hidden folder: `retrodeck/.sync/`. 

These scripts are then added to Steam to launch your games.

There are two types of launch commands in the script:

1. Regular launch command: `flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>`
2. Future Steam Flatpak support command: `flatpak-spawn --host flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>`

The second command is for future Steam Flatpak support, as it requires the flatpak-spawn permission to launch the games and must be manually enabled by the user.

Currently, games are not added to Flatpak Steam via Steam Sync.
