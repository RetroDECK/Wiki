# PCSX2 - General Guide

<img src="../../../wiki_images/logos/pcsx2-logo.png" width="100">

PCSX2 is a free and open-source PlayStation 2 (PS2) emulator.

---

### PCSX2 Links:

[PCSX2 Documentation](https://pcsx2.net/docs/)

[PCSX2 Website](https://pcsx2.net/)

[PCSX2 Github](https://github.com/PCSX2/pcsx2)

[PCSX2 Compability List](https://pcsx2.net/compat/)

---

## Where to put the games

Playstation 2 games should be put under the `retrodeck/roms/ps2/` directory.

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .iso        | Standard ISO disc image |
| .bin + .cue | Binary disc image file with cue sheet |
| .chd        | Compressed Hunks of Data **(Recommended)** |

## Does PCSX2 require BIOS or Firmware?

Yes check the:

[PCSX2 - BIOS Guide](https://pcsx2.net/docs/setup/bios/)


### Where to put the PSX BIOS?

Directly into the folder

`retrodeck/bios/`


## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/ps2/` |                               |  
| Saves Folder |`retrodeck/saves/ps2/pcsx2/memcards/` |                               |  
| States Folder |`retrodeck/states/ps2/pcsx2/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/PCSX2/`         |  |
| BIOS Folder | `retrodeck/bios/Cemu` | Contains `usr` and `sys` folders |
| Texture Pack Folder |`retrodeck/texture_packs/PCSX2/` |  Represents `PCSX2/textures/`    |


## How-to: Emulate the Multitap?

Multitap is a way to have up to 8 players on the Playstation 2, by hooking 4 players in each controller port.

Most games do not support this feature and some might not even work with it enabled.

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `Controllers` -> `Controller Multitap`
3. Enable/disable Multitap by clicking the checkbox for either Port 1, Port 2 or both.
4. Several new controllers called 1A to 1D and 2A to 2D will be enabled to map.

## How-to: Emulate in the EyeToy?

You need to have a `USB Webcam` connected or an `Integrated Webcam`.

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `Controllers` -> Select `USB Port` -> Select `Webcam (EyeToy)` from the Dropdown list -> Select the `Device Name` of your connected Camera from the Dropdown list.


##  Change in-game language or system language

### PCSX2 Interface

Normally it should follow your system locale if supported by PCSX2

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `Interface` -> `Interface`
3. Under `Preferences` you can change the language from the drop-down menu.
4. Close `PCSX2`.

### For the BIOS / Games

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `BIOS`
3. Under `Options and Patches` uncheck `Fast Boot` and close the menu.
4. Go to `System` -> `Start BIOS` to open the BIOS.
5. Within the BIOS navigate to `System Configuration` -> `Language` and change the language.
6. Close the BIOS go back to `Settings` -> `BIOS` -> `Options and Patches` and check `Fast Boot` checkbox again.
7. Close `PCSX2`.

## How to add texture packs?

The `~/retrodeck/texture_packs/PCSX2/` represents the `/PCSX2/textures/` folder in PCSX2.

**Note:** <br>

Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

`TITLEID` is different for every game.

### Enable Custom Textures

Open up PCSX2 from the `RetroDECK Configurator` by pressing `Open Emulator` - `PCSX2`.

You can either enable textures globally or per game.

**Globally for all games**

1. Go to `Settings` -> `Graphics` -> `Texture Replacement`
2. Enable `Load Textures` and `Async Texture Loading`.

**Per game**

1. In the main PCXS2 interface `Right Click` the game you want to bring up the menu.
2. Go to `Game Properties` -> `Graphic Settings` -> `Texture Replacement`
3. Enable `Load Textures` and `Async Texture Loading`.


### Add the texture packs to the correct folder

1. Extract any texture pack files from compressed `.zip` or any other compressed format.
2. Go into `~/retrodeck/texture_packs/PCSX2/`. 
3. Find the correct `TITLEID` that mactches your game.
4. Move textures into the right `~/retrodeck/texture_packs/PCSX2/<TITLEID>` folder.
5. If the textures match the game they should be loaded on next time you launch the game.
