# Cemu - General Guide

<img src="../../../wiki_images/logos/cemu-logo.png" width="150">


### Cemu Links:

[Cemu Compatibility Guide](https://compat.cemu.info/)

[Cemu Wiki](https://wiki.cemu.info/wiki/Main_Page)

[Cemu Github](https://github.com/cemu-project/Cemu)

[Cemu Webpage](https://cemu.info/)


## Where to put the games?

WiiU games should be put under the `retrodeck/roms/wiiu/` directory.

## What file formats are supported?

**Encrypted formats:**

```
.wud 
.wux 
```

**Decrypted formats**

```
.wua 
.rpx 
```

**Note:** 

`.wua` is the preferred format to use for Wii U games. 

## Does Cemu require BIOS or Firmware?

Yes, `keys.txt` if the file format is encrypted.

`otp.bin` and `seeprom.bin` if you want to play Online.

### Where to put the BIOS / Firmware files?

`~/.var/app/net.retrodeck.retrodeck/data/Cemu`

This will be changed in a later update to the `retrodeck/bios/cemu` folder.

## Folder structure

| Type    | Folder                 |  Emulator Folder      |    Comment     | 
|  :---:  | :---:                  | :---:                 |      :---:     |
| Saves Folder |`retrodeck/saves/wiiu/cemu/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/Cemu/`         |   `settings.xml`, `gameProfiles` folder, `controllerProfiles` folder|
| BIOS Folder | `retrodeck/bios/Cemu` | Contains `usr` and `sys` folders |
| Data folder |`~/.var/app/org.retrodeck.retrodeck/data/Cemu` |     |

## Guide - How to install DLC and Updates

**NOTE:**

Do not keep DLC and Update files in: `retrodeck/roms/wiiu/`

**Instructions:**

1. Open the `Configurator` and Open `Cemu`
2. `Press File` -> `Install game title, update, or DLC...`
3. Navigate to where you have your files.
4. Choose the DLC or Update file and press `Open` and it will install.
5. Repeat for each DLC / Update you want to install.

## Guide - How make .wua files and install the games

**NOTE:** 

- Encrypted ROMs can't be converted to `.wua`. 
- Before you make the `.wua` install any updates or DLC first to the base game. 

**Instructions:**

1. Open the `Configurator` and Open `Cemu`
2. `Press Tools` -> `Title Manager`
3. Search for the game you want to convert and check so the `Type` colum says: `base`.
4. Right click and press the `Convert to compressed Wii U archive`.
5. Verify in the prompt that everything you want is there: base game, updates and DLC.
6. Select the output target folder: `retrodeck/roms/wiiu/`.


## Pretendo Account for online play

To create a Pretendo Network account use the following link: [Pretendo: Register Account](https://pretendo.network/account/register).

Then follow the following link: [Pretendo: Install WiiU](https://pretendo.network/docs/install/wiiu) to log in with your Pretendo Network account on a Wii U.

- Existing NNID are not usable on Pretendo Network, you must create a Pretendo account for Pretendo Network.

Follow the [Cemu: Online Play Guide](https://cemu.cfw.guide/online-play.html) to generate and dump the required user files for your Pretendo Account.

**RetroDECK specific file locations:**

-  Wii U User Account’s `usr` and `sys` folders
    - Whatever `MLC Path` in `Options` -> `General settings` is configured to
    - by default it’s `retrodeck/bios/cemu`
  
- `otp.bin` and `seeprom.bin`
    - `~/.var/app/org.retrodeck.retrodeck/data/Cemu` 

## Known issues
    
### Certain Cemu UI elements are cramped on the Steam Deck

If you are trying to change settings in Cemu on a Steam Deck in Game Mode, some UI elements might be cramped or the buttons are outside of the screen. 

This has to do with resolution scaling of the Cemu application and the Steam Deck's resolution, to solve it you can temporally increase the resolution in Steam of RetroDECK:

1. Exit RetroDECK.
2. Go to RetroDECK in Steam.
3. Click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`
4. Set the Resolution from `Default` to `1920x1080`
5. Also turn on `Set resolution for internal and external display` (this might be hidden sometimes just go back one menu and go in again to make it show up).
6. Open `Configurator` - `Cemu`
7. Make the changes you want and save.
8. Exit RetroDECK and revert the display changes.
9. Click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`.
10. Set the Resolution from `1920x1080` to `Default`.
