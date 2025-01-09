# SRM - General Guide

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
