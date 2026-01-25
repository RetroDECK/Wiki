# Azahar - General Guide

<img src="../../../wiki_images/logos/azahar-logo.svg" width="75">

Azahar is a Nintendo 3DS Emulator.

---

### Azahar Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Azahar - Changes from Citra | [Link](https://azahar-emu.org/blog/game-loading-changes/) |
| Azahar Blog | [Link](https://azahar-emu.org/pages/bloglist/) |
| Azahar Github | [Link](https://azahar-emu.org/pages/bloglist/) |
| Azahar Webpage | [Visit](https://azahar-emu.org/) |


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

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type          | Directory                                | Comment         |
|:-------------:|:----------------------------------------|:---------------|
| Cheats        | `retrodeck/cheats/Azahar/`               |     azahar-emu/cheats            |
| Config        | `~/.var/app/net.retrodeck.retrodeck/config/azahar/` |                 |
| Data          | `~/.var/app/org.retrodeck.retrodeck/data/azahar/` |                 |
| Logs          | `retrodeck/logs/Azahar/`                 |  azahar-emu/log               |
| Mods          | `retrodeck/mods/Azahar/mods/`            |   azahar-emu/load/mods              |
| ROMs          | `retrodeck/roms/n3ds/`                    |                 |
| Saves         | `retrodeck/saves/n3ds/azahar/`           |                 |
| Shaders       | `retrodeck/shaders/Azahar/`              |    azahar-emu/shaders             |
| Texture Packs | `retrodeck/texture_packs/Azahar/textures/` |      azahar-emu/load/textures           |



---

## Adding Mods

**Notes:**

- The path `retrodeck/mods/azahar/` corresponds to the `/load/mods/` directory inside Azahar.
- Each game has a unique `TITLE_ID`.

There are two ways to add mods to Azahar.


### Add Mods Using Azahar

1. Extract the mod from its compressed format (`.zip` or similar) so that the files are in normal folders.
2. Open Azahar through the **RetroDECK Configurator** by selecting **Open Component** → **Azahar**.
3. Right-click the game you want to modify.
4. Select **Open Mods Location**.
5. Place the mod files into the directory that opens. Each folder corresponds to a game's `TITLE_ID`.
6. Close Azahar.


### Add Mods Directly from the Filesystem

1. Extract the mod from its compressed format (`.zip` or similar) into folders.
2. Navigate to `retrodeck/mods/azahar/`. Each folder inside represents a game's `TITLE_ID`.
3. Paste the mod files into the appropriate `retrodeck/mods/azahar/<TITLE_ID>/` directory.


---

## Adding Texture Packs

**Note:**

Some texture packs are designed for specific versions or regions of a game. Make sure you are using the correct game and corresponding texture pack.

- The path `retrodeck/texture_packs/azahar/` corresponds to the `/load/textures` folder in Azahar.  
- Each game has a unique `TITLEID`.

On the Steam Deck, performing these steps in **Desktop Mode** may be easier.

There are two ways to add texture packs to Azahar.


### Enable Custom Textures

1. Open Azahar through the **RetroDECK Configurator** by selecting **Open Component** → **Azahar**.  
2. Go to **Emulation** → **Configure** → **Graphics** → **Use Custom Textures** and set it to **On**.

### Add Texture Packs Using Azahar

1. Extract the texture pack from its compressed format (`.zip` or similar) into folders.  
2. Open Azahar through the **RetroDECK Configurator**.  
3. Right-click the game you want to add textures to.  
4. Select **Open Custom Textures Location**.  
5. Paste the texture folders into the directory. Each folder is organized by the game's `TITLE_ID`.  
6. Close Azahar.

### Add Texture Packs Directly from the Filesystem

1. Extract the texture pack from its compressed format (`.zip` or similar) into folders.  
2. Navigate to `~/retrodeck/texture_packs/azahar/`. Each folder corresponds to a game's `TITLE_ID`.  
3. Move the extracted texture folders into the appropriate `retrodeck/texture_packs/azahar/<TITLE_ID>/` directory.

### Example

- Suppose you have a `.zip` file containing `/load/textures/0000001000/`.  
- Copy the `0000001000` folder into `~/retrodeck/texture_packs/azahar/`.  
- The final structure should look like: `retrodeck/texture_packs/azahar/0000001000/`

---

## Configuring Language Settings

Follow the steps below to change the UI language in Azahar:

1. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
2. Press `Emulation` → `Configure` → `Graphics` → `General` → `UI`.
3. In the UI Tab under `General`, choose the language from the dropdown menu.

--- 


## Adding and Enabling Cheats

1. Open up Azahar inside `RetroDECK Configurator` by pressing `Open Component` - `Azahar`.
2. Right-click the game you want to modify and select `Properties`.  
3. Go to  `Cheats` → press `Add Cheat`.  
4. Enter a `Name` for the cheat, then paste the cheat code into the `Code` field.  
5. Click `Save` and enable the cheat by checking the box in the `Available Cheats` pane.
6. Press OK and and Quit Azahar.

### Finding Cheat Codes

- [CTRPF-AR-CHEAT-CODES](https://github.com/iSharingan/CTRPF-AR-CHEAT-CODES)
- [Sharkive](https://github.com/FlagBrew/Sharkive/tree/master/3ds)
- [GBATEMP: Action Replay](https://gbatemp.net/threads/ctrpluginframework-blank-plugin-now-with-action-replay.487729/)

---
