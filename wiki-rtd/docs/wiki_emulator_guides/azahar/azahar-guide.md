# Azahar - General Guide

<img src="../../../wiki_images/logos/azahar-logo.svg" width="75">

Azahar is a Nintendo 3DS Emulator.

---

### Azahar Links:

[Azahar Webpage](https://azahar-emu.org/)

[Azahar Blog](https://azahar-emu.org/pages/bloglist/)

[Azahar Github](https://azahar-emu.org/pages/bloglist/)

[Azahar - Game Loading Changes from Citra](https://azahar-emu.org/blog/game-loading-changes/)

---

## Where to put the games

3DS games should be put under the `retrodeck/roms/3ds/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .app        | Nintendo 3DS application file |
| .axf        | Nintendo 3DS ARM executable file |
| .cci        | Nintendo 3DS cartridge image file **(Recommended)** |
| .cxi        | Nintendo 3DS executable file |
| .elf        | Executable and Linkable Format file |
| .7z         | Compressed archive file |
| .zip        | Compressed archive file |

### Unsupported File Formats in Azahar

Azahar does not support the following file formats:

| File Format | Description |
|-------------|-------------|
| `.3ds`      | Legacy Nintendo 3DS ROM format (requires conversion to `.cci` for use) |
| `.3dsx`     | Homebrew executable format for 3DS (requires conversion to `.cci` for use) |
| Encrypted ROMs | Any encrypted game dump; must be decrypted |

---

## Does Azahar require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/3ds/` |                               |  
| Saves Folder |`retrodeck/saves/n3ds/azahar/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/azahar/`         |  |
| BIOS Folder | `/retrodeck/bios/azahar/` |  |
| Data Folder |`~/.var/app/org.retrodeck.retrodeck/data/azahar` |     |
| Mods Folder |`retrodeck/mods/azahar/` |     |
| Texture Packs Folder |`retrodeck/texture_packs/azahar/`|     |

---

## Adding mods

**Note:**<br>

- The `~/retrodeck/mods/azahar/` represents the `/load/mods/` folder in Azahar.
- `TITLEID` is different for every game.

On the Steam Deck this could be easier to do in `Desktop Mode`.

There are two ways of adding mods into Azahar

### Add mods from Azahar

1. Extract any mod from compressed `.zip` or any other format to folders.
2. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
3. Right click on the game you want to add mods into.
4. Click on `Open Mods Location`.
5. Paste the mod files inside that directory, each folder is stored by the `TITLLEID` of the game.
6. Quit Azahar

### From the mod folder directly

1. Extract any mod files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/mods/azahar/`. The folders are all named by `TITLEID`.
3. Past the mods into the right `~/retrodeck/mods/yuzu/<TITLEID>` folder.

---

## Adding texture packs

**Note:** <br>

Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

On the Steam Deck this could be easier to do in `Desktop Mode`.

- The `~/retrodeck/texture_packs/azahar/` represents the `/load/textures` folder in Azahar.
- `TITLEID` is different for every game.

There are two ways of adding texture packs into Azahar

### Enable Custom Textures

1. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
2. Press `Emulation` -> `Configure` -> `Graphics` -> `Use Custom Textures` and set it to `On`.

### Add texture packs from Azahar

1. Extract any texture files from compressed `.zip` or any other format to folders.
2. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
3. Right click on the game you want to add textures into.
4. Click on `Open Custom Textures Location`.
5. Paste the texture folders inside that directory, each folder is stored by the `TITLLEID` of the game.
6. Quit Azahar

### From the texture folder directly

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/texture_packs/azahar/`. The folders are all named by `TITLEID`.
3. Move textures into the right `~/retrodeck/texture_packs/azahar/<TITLEID>` folder.

**Example:**

* You have a `.zip` file for a game that contains the `/load/textures/0000001000` folders.
* All you need to do is take the TITLEID folder: `0000001000` and put it into `~/retrodeck/texture_packs/azahar/`
* So the end result looks like: `~/retrodeck/texture_packs/azahar/0000001000`

---

## Configuring Language Settings

Follow the steps below to change the UI language in Azahar:

1. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
2. Press `Emulation` -> `Configure` -> `Graphics` -> `General` -> `UI`.
3. In the UI Tab under `General`, choose the language from the dropdown menu.

--- 


## Adding and Enabling Cheats

1. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
2. Right-click the game you want to modify and select `Properties`.  
3. Go to  `Cheats` -> press `Add Cheat`.  
4. Enter a `Name` for the cheat, then paste the cheat code into the `Code` field.  
5. Click `Save` and enable the cheat by checking the box in the `Available Cheats` pane.
6. Press OK and and Quit Azahar.

### Finding Cheat Codes

- [CTRPF-AR-CHEAT-CODES](https://github.com/iSharingan/CTRPF-AR-CHEAT-CODES)
- [Sharkive](https://github.com/FlagBrew/Sharkive/tree/master/3ds)
- [GBATEMP: Action Replay](https://gbatemp.net/threads/ctrpluginframework-blank-plugin-now-with-action-replay.487729/)