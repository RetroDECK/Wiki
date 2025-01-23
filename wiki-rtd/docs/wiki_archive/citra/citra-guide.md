# Citra - General Guide (Archive)

<img src="../../../wiki_images/logos/citra-logo.svg" width="150">

Citra was a Nintendo 3DS Emulator.

**Note: Archived Emulator**

Citra was a Switch emulator and was removed as part of the `0.8.0b` update.

The last version that shipped with Citra was `0.7.6b`.

## Where to put the games
3DS games should be put under the `retrodeck/roms/3ds/` directory.

## What file formats are supported?

```
.3ds
.cxi
.cia
```

## Does Citra require BIOS or Firmware?

Yes, if the games are encrypted then keyfiles are needed: `aes_keys.txt`


## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/3ds/` |                               |  
| Saves Folder |`retrodeck/saves/n3ds/citra/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/citra/`         |  |
| BIOS Folder | `/retrodeck/bios/citra/` |  |
| Data Folder |`~/.var/app/org.retrodeck.retrodeck/data/citra` |     |
| Mods Folder |`retrodeck/mods/citra/` |     |
| Texture Packs Folder |`retrodeck/texture_packs/citra/`|     |

## Guide - Adding mods

**Note:**<br>

- The `~/retrodeck/mods/citra/` represents the `/load/mods/` folder in Citra.
- `TITLEID` is different for every game.

On the Steam Deck this could be easier to do in `Desktop Mode`.

There are two ways of adding mods into Citra

### Add mods from Citra

1. Extract any mod from compressed `.zip` or any other format to folders.
2. Open up Citra inside `RetroDECK Configurator` by pressing `Open Emulator` - `Citra`.
3. Right click on the game you want to add mods into.
4. Click on `Open Mods Location`.
5. Paste the mod files inside that directory, each folder is stored by the `TITLLEID` of the game.
6. Quit Citra

### From the mod folder directly

1. Extract any mod files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/mods/citra/`. The folders are all named by `TITLEID`.
3. Past the mods into the right `~/retrodeck/mods/yuzu/<TITLEID>` folder.


## Guide - Adding texture packs

**Note:** <br>

Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

On the Steam Deck this could be easier to do in `Desktop Mode`.

- The `~/retrodeck/texture_packs/citra/` represents the `/load/textures` folder in Citra.
- `TITLEID` is different for every game.

There are two ways of adding texture packs into Citra

### Enable Custom Textures

1. Open up Citra inside `RetroDECK Configurator` by pressing `Open Emulator` - `Citra`.
2. Press `Emulation` -> `Configure` -> `Graphics` -> `Use Custom Textures` and set it to `On`.

### Add texture packs from Citra

1. Extract any texture files from compressed `.zip` or any other format to folders.
2. Open up Citra inside `RetroDECK Configurator` by pressing `Open Emulator` - `Citra`.
3. Right click on the game you want to add textures into.
4. Click on `Open Custom Textures Location`.
5. Paste the texture folders inside that directory, each folder is stored by the `TITLLEID` of the game.
6. Quit Citra

### From the texture folder directly

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/texture_packs/citra/`. The folders are all named by `TITLEID`.
3. Move textures into the right `~/retrodeck/texture_packs/citra/<TITLEID>` folder.

**Example:**

* You have a `.zip` file for a game that contains the `/load/textures/0000001000` folders.
* All you need to do is take the TITLEID folder: `0000001000` and put it into `~/retrodeck/texture_packs/citra/`
* So the end result looks like: `~/retrodeck/texture_packs/citra/0000001000`
