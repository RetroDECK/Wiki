# Steam ROM Manager (SRM) - General Guide

<img src="../../../wiki_images/logos/srm-logo.png" width="75">

Steam ROM Manager is a tool that helps you import games in bulk and manage artwork for Steam. It has been integrated into RetroDECK since version 0.9.0b. 

This tool adds individual games to Steam, incorporates artwork from [SteamGridDB](https://www.steamgriddb.com/), and configures the RetroDECK Steam Input layouts.

**Note:**

Additionally, RetroDECK uses Steam ROM Manager as part of its backend for the `Steam Sync` feature that is documented here.

---

### SRM Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| SteamGridDB - Webpage | [Link](https://www.steamgriddb.com/) |
| Steam Rom Manager - Github | [Link](https://github.com/SteamGridDB/steam-rom-manager) |
| Steam Rom Manager - Webpage | [Link](https://steamgriddb.github.io/steam-rom-manager/) |

---

### ⚠️ Warning: Exotic Game Filenames Can Break Scripts

Some game game filenames contain symbols that may cause issues with the parser, preventing the game from launching.  

✅ **Safe symbols:** `( ) [ ]`  

❌ **Avoid using:** `/ \ { } < > ' * `  

If your game filenames contain any of the unsafe symbols, consider renaming them before running the scripts.


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type           | Directory                                                     | Comment                                                            |
|:--------------:|:-------------------------------------------------------------|:------------------------------------------------------------------|
| Config         | `~/.var/app/net.retrodeck.retrodeck/config/config/steam-rom-manager/` |                                                                    |
| Launch Scripts | `retrodeck/roms/.sync/`                                       | This hidden folder contains the auto-generated launch scripts for Steam as `.sh` files |


---


## Enable Steam Sync

Games marked as favorites in ES-DE (with a 🌟 or another icon depending on theme) will sync to Steam with their artwork when you exit the application. They will appear in Steam after you restart it.

### Step 1: Mark games as 🌟 favorites in ES-DE

<img src="../es-de-favorite.png" width="800">

Navigate to a game in ES-DE and press the `north button` to mark it as a favorite. This corresponds to the `Y` button on Xbox, the `Triangle` button on PlayStation, and the `X` button on Nintendo.

### Step 2: Enable in Configurator

<img src="../steam-tools-menu.png" width="800">

<img src="../sync-prompt.png" width="800">

Navigate to -> `RetroDECK Configurator` -> `Steam Tools` -> `Automatic Steam Sync` and enable it by pressing `Yes`.

### Step 3: Exit RetroDECK to start the Sync

<img src="../sync-loading.png" width="800">

This process might take a while based on your hardware and game library size. The Steam Sync will only happen when changes are made to the favorite lists. 

### Step 4: Restart / Reload Steam

Steam needs to be restarted before the games show up in your library.

For the Steam Deck, you can either restart the device or switch from `Game Mode` to `Desktop Mode` and back to `Game Mode` to relaunch Steam.

On a PC, simply `Exit Steam` and relaunch it as usual.

### Step 5: Results

<img src="../steam-burger.png" width="800">

If everything went correctly, the games should now be added to Steam.

---

## Disable Steam Sync

Go into the Configurator and press Steam Sync. 

If it's enabled, it will ask if you want to disable it. 

Just press `Yes` in the prompt. 

This will also remove your favorites from Steam.


---


### Do a Manual Sync

If you don't want to have `Automatic Steam Sync` you can then perform an `Manual Steam Sync` each time you want instead. 

Navigate to -> `RetroDECK Configurator` -> `Steam Tools` -> `Manual Steam Sync`.

---

## Steam Sync Tips & Troubleshooting

### Purge Tool

If you have for some reason messed up the synced games.

Then you can perform a purge of all synced games with the purge tool and then sync again.

Navigate to -> `RetroDECK Configurator` -> `Steam Tools` -> `Automatic Steam Sync` and enable it by pressing `Yes`.


### Games don't sync

If games don't sync check the following:

- Is [SteamGridDB](https://www.steamgriddb.com/) up?
- Are the games supported in [SteamGridDB](https://www.steamgriddb.com/) ?
- Sometimes SteamGridDB also only have one region of a game usually the US version in the database and you might need to rename the game to that name.
- Have you restarted Steam?
- Do the games contain any problematic symbols (check above)?
- Have you tried to used the purge tool and resynced? 
- Check

---

## Add RetroDECK .doom files with the Grid and Tear Project 

<img src="../brutaldoom.png" width="800">

[SteamGridDB: Grid and Tear](https://www.steamgriddb.com/projects/grid-and-tear) is a project for adding art for various doom mods. 

The Steam Sync feature can be used to add RetroDECK doom files. 

To add the `.doom` files, simply mark them as 🌟 favorites in ES-DE, and `Steam Sync` will pick them up.


**Search if the mod has art**

Go to [SteamGridDB: Grid and Tear](https://www.steamgriddb.com/projects/grid-and-tear) and search for what mods are supported currently with art. 

**Give the .doom file a matching name**

Match the names of the `.doom` files with how they are called on SteamGridDB for the art to be correctly scraped.

[Example - SteamGridDB: Brutal DOOM](https://www.steamgriddb.com/game/5249817)

The file in this case is called `Brutal Doom.doom`. 

**If you are unsure on how to create doom files**

[Guide: How to create RetroDECK .doom file](../../wiki_engine_guides/gzdoom/retrodeck-doomfile.md)

---

## Can I do advanced tweaking in SRM?

<img src="../srm-window.png" width="800">

Yes, you can open the entire SRM interface from the Configurator. You can tweak it as much as you like.

To access it, go to: 

`Configurator` -> `Open Component` -> `Steam Rom Manager`. 

If you break something, you can reset it to default via:

`Configurator` -> `Troubleshooting` -> `Reset` -> `Component` -> `Steam Rom Manager`. 

---

## How does it work? 

When you activate the sync function, launch scripts are created in a hidden folder: `retrodeck/.sync/`. 

These scripts are then added to Steam to launch your games.

There are two types of launch commands in the script:

1. Regular launch command: `flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>`
2. Future Steam Flatpak support command: `flatpak-spawn --host flatpak run net.retrodeck.retrodeck 'retrodeck/roms/<system>/<game>`

The second command is for future Steam Flatpak support, as it requires the flatpak-spawn permission to launch the games and must be manually enabled by the user.

Currently, games are not added to Flatpak Steam via Steam Sync.

---
