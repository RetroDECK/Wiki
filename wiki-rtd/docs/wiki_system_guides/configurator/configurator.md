# RetroDECK Configurator

<img src="../../../wiki_icons/retrodeck/icon-configurator.svg" width="100">

**Please note that we are going to rebuild the Configurator into a controller friendly GODOT application and that the current version is not the final design.**

## Information 

<img src="../classic-configurator.png" width="800">

The `RetroDECK Configurator` is a unique multi-use utility that exists within RetroDECK to manage many aspects of the application and exposes functions from the `RetroDECK Framework` to the user.

The `RetroDECK Configurator` can be opened from:

- The main menu inside the ES-DE interface and choose `RetroDECK Configurator`.

<img src="../configurator-esde.png" width="500">

* From the `RetroDECK Configurator.desktop` desktop shortcut, available in your application menu.

<img src="../configurator-kde.png" width="500">

* From CLI by calling `flatpak run net.retrodeck.retrodeck --configurator`

What follows are the commands you can use inside the Configurator (more commands will be added during development).

## Settings

<img src="../classic-configurator-settings.png" width="800">

In this menu you can set various settings.

### Borders

Enable / Disable borders across the RetroArch cores you choose.

### Widescreen

Enable / Disable Widescreen in all supported emulators and cores.

### Ask-to-Exit 

Enable / Disable Ask-to-Exit prompts in all supported emulators and cores.

If you disable this, the emulators will directly exit.

### Rewind

Enable / Disable rewind across of RetroArch (this may impact performance on some more demanding systems).


### RetroAchivements: Login

Login to RetroAchievements in all supported emulators and cores.

### RetroAchivements: Logut

Logut from RetroAchievements in all supported emulators and cores.

### RetroAchivements: Hardcore Mode

Enable / Disable `Hardcore Mode` from RetroAchievements in all supported emulators and cores.

### Swap A/B and X/Y

Swaps `A/B` `X/Y` in supported emulators and cores.

### Quick Resume

Enable / Disable `Quick Resume` aka  `Auto Save` + `Auto Load` on exit in supported emulators and cores.

### Universal Dynamic Input: Dolphin

Enable / Disable Venomalias's Universal Dynamic Input Texture for Dolphin.

### Universal Dynamic Input: Primehack

Enable / Disable Venomalias's Universal Dynamic Input Texture for Primehack.

### PortMaster: Hide

Enable / Disable the PortMaster entry in ES-DE. 

## Open Component

<img src="../classic-configurator-open.png" width="800">

Launch and configure each components settings. The chosen option opens the components GUI. 

The Components are all:

- Emulators 
- Systems
- Engines

Shipped with RetroDECK.

**Steam Deck Note:**  

Most component interfaces are not designed for controller input for the GUI. You may need to use the Steam Deck's touchscreen or a mouse and keyboard.


## Reset Component

<img src="../classic-configurator-reset.png" width="800">

This menu allows you to reset various components in RetroDECK or reset the entire application to its default settings. There is also a factory reset option.

## Tools

<img src="../classic-configurator-tools.png" width="800">

### BIOS Checker

Launches the `BIOS Checker` tool that scans for needed BIOS files.

### Games Compressor

Launches the `Games Compressor` tool that compresses games into smaller formats.

You can compress into:

- CHD
- ZIP
- RVZ

You can choose to compress one game or many. 

### Install: RetroDECK Controller Layouts

This option installs the RetroDECK Steam Input Controller Templates into Steam. 

### Install: PS3 Firmware

This option downloads and installs the latest PS3 firmware. After the download, RPCS3 will prompt you to install it.

### Install: PS Vita Firmware

This option downloads and installs the latest PS Vita firmware. 

### Update Notification 

Enable / Disable the Update Notification for new RetroDECK versions.

### M3U Multi-File Validator

A tool that checks the validity of `.m3u` files.

### Repair Paths

A tool that Repairs RetroDECK's folder paths without needing a reset. 

### Change logging level 

A tool that lets the user generate more or less logs.

## Steam Tools

<img src="../classic-configurator-steam-tools.png" width="800">

### Add RetroDECK to Steam

A tool that adds RetroDECK to Steam with Art.

### Automatic Steam Sync

This enables or disables the Steam Sync feature.

Read more here: 

[SRM Guide](../srm/srm-guide.md) 

### Manual Steam Sync

Performs a Manual Steam Sync.

Read more here: 

[SRM Guide](../srm/srm-guide.md) 


### Purge Steam Sync Shortcuts

A tool that removes all Steam Synced Shortcuts. This is useful if something is wrong and you want to resync again. 


## Data Mangement

<img src="../classic-configurator-data.png" width="800">

### Backup RetroDECK

Creates backup .zip files of various userdata you choose in RetroDECK.

### Move Tools

Several move tools allow you to move specific folders to a new location.

`Internal Storage` - Moves the folder to the internal storage.
`SD CARD` - Moves the folder to the SD CARD
`Custom Location` - Choose where you want the RetroDECK folder to be.

### Clean Empty ROM Folders

This tool removes some or all the ROM folders under `retrodeck/roms/` that are empty, leaving only those populated with content.

### Rebuild All ROM Folders

This tool rebuilds ROM folders you have accidentally removed or used the `Clean Empty ROM Folders` tool.

## About RetroDECK

<img src="../classic-configurator-about.png" width="800">

### Credits

Displays Credits.

### Version History

Menu for Patch Notes.

(Note: The patch notes are always more detailed on the wiki due to character limits during publication.)



