# Steam ROM Manager (SRM) - General Guide

<img src="../../../wiki_images/logos/srm-logo.png" width="150">

Steam ROM Manager is a bulk game importer and artwork manager for Steam. It has been built into RetroDECK since version 0.9.0b.

It adds separate games to Steam, incorporates artwork from [SteamGridDB](https://www.steamgriddb.com/) , and configures the RetroDECK Steam Input layouts. 

RetroDECK uses Steam ROM Manager as part of its backend for the Steam Sync feature.

**Notice: Flatpak Steam Not Yet Supported**

We have not yet added support for the Flatpak version of Steam.

### SRM Links:

[Steam Rom Manager - Webpage](https://steamgriddb.github.io/steam-rom-manager/)

[Steam Rom Manager - Github](https://github.com/SteamGridDB/steam-rom-manager)

[SteamGridDB](https://www.steamgriddb.com/)

## Where are the files located? 

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Scripts Folder | `retrodeck/roms/.sync/`   |  This hidden folder contains the auto generated launch scripts for ES-DE as `.sh` files.   |         | 
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/config/steam-rom-manager/`         |   |

## How-to enable Steam Sync?

<img src="../../../wiki_images/systems/srm/sync-config.png" width="800">

You can enable the Steam Sync feature inside the Configurator.

<img src="../../../wiki_images/systems/srm/sync-prompt.png" width="800">

All the games you have marked as favorites in ES-DE (marked with a ⭐) will be synced to Steam upon exiting the application, along with their artwork.

Depending on your device, Steam might need to be restarted before the games show up in your library.

## Can I tweak images or other settings in SRM?

`Configurator` -> `Open Emulator / Component` -> `Steam Rom Manager`. 

Yes, you can open the entire SRM interface from the Configurator, just like all other components, and tweak it to your heart's content.

<img src="../../../wiki_images/systems/srm/srm-window.png" width="800">


### Help - I broke everything after my tweaking

If you break things you could always reset it to default via:

`Configurator` -> `Troubleshooting` -> `Reset` -> `Component` -> `Steam Rom Manager`. 

## How does it work? 

When the sync function is activated launch scripts are generated in a hidden folder:

`retrodeck/.sync/`  those scripts are then added to Steam with the ability to launch your games.

Inside the script there are two types of launch commands:

`flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>`'

This is the regular launch command 

`flatpak-spawn --host flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>'`

This one is for future Steam Flatpak support, as they need the `flatpak-spawn` permission to launch the games and have to be manually enabled by the user. 

Currently the games are not added to Flatpak Steam via Steam Sync. 

## Warning - Exotic ROMS filenames can break the scripts

Some games have exotic symbols in their name that could break so the parser and the game won't launch, `( ) [ ]` are fine. 

The symbols that could cause issues are: 

/ \ { } < > ' * `

It might be worth to rename those games if it contains them.
