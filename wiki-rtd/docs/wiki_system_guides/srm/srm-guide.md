# Steam ROM Manager (SRM) - General Guide

<img src="../../../wiki_images/logos/srm-logo.png" width="150">

Steam ROM Manager is a bulk game importer and artwork manager for Steam. It has been built into RetroDECK since version 0.9.0b.

It adds separate games to Steam, incorporates artwork from [SteamGridDB](https://www.steamgriddb.com/) , and configures the RetroDECK Steam Input layouts. 

RetroDECK uses Steam ROM Manager as part of its backend for the `Steam Sync` feature.

### SRM Links:

[Steam Rom Manager - Webpage](https://steamgriddb.github.io/steam-rom-manager/)

[Steam Rom Manager - Github](https://github.com/SteamGridDB/steam-rom-manager)

[SteamGridDB](https://www.steamgriddb.com/)

### Warning - Flatpak Steam not yet supported

We have not yet added support for the Flatpak version of Steam.

### Warning - Exotic ROMS filenames can break the scripts

Some games have exotic symbols in their name that could break so the parser and the game won't launch, `( ) [ ]` are fine. 

The symbols that could cause issues are: 

/ \ { } < > ' * `

It might be worth to rename those games if it contains them.

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Launch Scripts Folder | `retrodeck/roms/.sync/`   |  This hidden folder contains the auto generated launch scripts for Steam as `.sh` files.   |         | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/config/steam-rom-manager/`         |   |

## How-to enable Steam Sync?

All the games you have marked as favorites in ES-DE (marked with a ⭐ or another icon depending on theme) will be synced to Steam upon exiting the application, along with their artwork and will show up after Steam is restarted.

### Mark games as ⭐ favorites in ES-DE

<img src="../../../wiki_images/systems/srm/es-de-favorite.png" width="800">

Navigate to a game in ES-DE and press the press the `north button` to mark a game as favorite in ES-DE (Xbox `Y` button, Playstation `Triangle`, Nintendo `X`).

### Enable in Configurator

<img src="../../../wiki_images/systems/srm/sync-config.png" width="800">

<img src="../../../wiki_images/systems/srm/sync-prompt.png" width="800">


Enable the Steam Sync feature inside the Configurator by pressing `Yes`.

### Exit RetroDECK to start the Sync

<img src="../../../wiki_images/systems/srm/sync-loading.png" width="800">

**Note:** If you have a massive roms library this can take a while. But you can leave the sync window in the background and play other things while it runs. The speed also depends on the Device you are using.

Just wait until the Sync is finished and the window closes.


### Restart / Reload Steam

Steam needs to be restarted before the games show up in your library.

For the Steam Deck you can either restart the Steam Deck or from `Game Mode`  enter `Desktop Mode` and directly go back to `Game Mode` as this will also relaunch Steam.  

If you are on a PC just `Exit Steam` and relaunch it as normal. 

## How do I disable Steam Sync?

Just go into the Configurator and press Steam Sync if you got it enabled it will now ask if you want to disable it. Just press `Yes` in the prompt.

## Can I tweak images or other settings in SRM?

`Configurator` -> `Open Emulator / Component` -> `Steam Rom Manager`. 

Yes, you can open the entire SRM interface from the Configurator, just like all other components, and tweak it to your heart's content.

<img src="../../../wiki_images/systems/srm/srm-window.png" width="800">

### Help - I broke everything after my tweaking

If you break things you could always reset it to default via:

`Configurator` -> `Troubleshooting` -> `Reset` -> `Component` -> `Steam Rom Manager`. 

## Adding RetroDECK .doom files to Steam - Grid and Tear Project

<img src="../../../wiki_images/systems/srm/brutaldoom.png" width="800">

[SteamGridDB: Grid and Tear](https://www.steamgriddb.com/projects/grid-and-tear) is a project for adding art for various doom mods. 

They work with RetroDECK's `.doom` files.

[Guide: RetroDECK .doom file](../../wiki_engine_guides/gzdoom/retrodeck-doomfile.md)

### How-to add .doom files with art?

You need to match the names of the `.doom` files with how they are called on `SteamGridDB` for the art to be correctly scraped.

Use the the link above to search for what mods are supported currently with art. 

[Example - SteamGridDB: Brutal DOOM](https://www.steamgriddb.com/game/5249817)

The file in this case is called `Brutal Doom.doom`. 

## How does it work? 

When the sync function is activated launch scripts are generated in a hidden folder:

`retrodeck/.sync/`  those scripts are then added to Steam with the ability to launch your games.

Inside the script there are two types of launch commands:

`flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>`'

This is the regular launch command 

`flatpak-spawn --host flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>'`

This one is for future Steam Flatpak support, as they need the `flatpak-spawn` permission to launch the games and have to be manually enabled by the user. 

Currently the games are not added to Flatpak Steam via Steam Sync. 
