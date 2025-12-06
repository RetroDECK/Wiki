# RPCS3 - General Guide

<img src="../../../wiki_images/logos/rpcs3-logo.png" width="75">

RPCS3 is a multi-platform open-source Sony PlayStation 3 emulator and debugger.

---

### RPCS3 Links:

[RPCS3 Quickstart Guide](https://rpcs3.net/quickstart)

[RPCS3 Wiki](https://wiki.rpcs3.net/index.php?title=Main_Page)

[RPCS3 Github](https://github.com/RPCS3/rpcs3)

[RPCS3 Webpage](https://rpcs3.net/)

[RPCS3 Save States](https://wiki.rpcs3.net/index.php?title=Help:Save_State)

---

## Where to put the games?

PS3 games comes either as a Blu-ray rip folder with a bunch of different files or a digital PSN title that needs to be installed (see guide on this page).

PS3 games should be put under the `retrodeck/roms/ps3/` folder.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .desktop    | Desktop entry file **(Recommended)** |
| .ps3  / .PS3       | PlayStation 3 Directory |
| .ps3dir / .PS3DIR    | PlayStation 3 Directory (alternative)  |

---

## Does RPCS3 require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, the `PS3UPDAT.PUP` firmware needs to be installed in the emulator.

### How-to: Install the PS3UPDAT.PUP firmware

There are two ways to install the firmware:

**Install PS3 firmware from RetroDECK Configurator**

1. Open RPCS3 `RetroDECK Configurator` - `RetroDECK: Tools` - `Install: RPCS3 Firmware`.
2. Press `OK` and this will download the PS3 Firmware and open RPCS3.
3. You will get a prompt asking if you want to install the firmware from the /tmp/ folder, say `Yes`
4. Wait for the installation to finish
5. Exit RPCS3 from the GUI under `File -> Exit`

**Manual Download**

1. Download the latest PS3 firmware `PS3UPDAT.PUP` from Sony [here](https://www.playstation.com/en-us/support/hardware/ps3/system-software/)
2. Open RPCS3 `RetroDECK Configurator -> Open Emulator -> RPCS3`.
3. In the RPCS3 interface navigate to `File -> Install Firmware`.
4. In the file browser navigate and select the file `PS3UPDAT.PUP` file.
5. The firmware should now be installed.

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/ps3/` |                               |  
| Saves Folder |`retrodeck/saves/ps3/rpcs3/` |                               |  
| States Folder |`retrodeck/states/ps3/rpcs3/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/rpcs3/`         |  Various config `.yml` and system folders |

---

## How-to: Get games to show up inside RetroDECK

There are two methods of adding the games. For more details read here: [ES-DE RPCS3 Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-3)

### Method 1: Game shortcuts .desktop files (recommended and default)

<img src="../rpcs3-create-shortcut.png" width="800">

This method can be used for all types of rips/dumps, both directories and installed digital titles. It's the default method for RetroDECK.

1. **Open RPCS3 via the Configurator:** Launch the RPCS3 emulator using the RetroDECK Configurator.
2. **Add the game to RPCS3:** Click on `File` in the menu bar, select `Add Game`, and browse to the location of the game you want to add.
3. **Verify the game in RPCS3:** The game will now appear in the RPCS3 game list.
4. **Create a desktop shortcut:** `Right-click` on the game in the RPCS3 game list, select `Manage Game`, and click on `Create Desktop Shortcut`.
5. **Move the shortcut to the roms/ps3 folder:** This will create a shortcut to the game on your Desktop. Move that shortcut into the `retrodeck/roms/ps3` folder.
6. **Launch RetroDECK:** The game will now show up in RetroDECK.

### Method 2: Folders as .ps3 files (not recommended)

This method can only be used for folder type game dumps. To get the games to show up, you need to rename the folder to end with a `.ps3` file extension.

**Prerequisite:** You will need to change the ES-DE Settings from `RPCS3 Shortcut (Standalone)` to `RPCS3 Directory (Standalone)` in ES-DE.

1. **Open RetroDECK and access ES-DE settings:** Launch RetroDECK and in the ES-DE Frontend, navigate to **ES-DE Configurations**.
2. **Modify the PS3 emulator settings:** Go to **Other Settings**, select **Alternative Emulators**, and choose **PS3**.
3. **Change the emulator type:** Change the value from `RPCS3 Shortcut (Standalone)` to `RPCS3 Directory (Standalone)`, and exit RetroDECK to save the changes.
4. **Locate the game folder:** Go to the `retrodeck/roms/ps3` folder and place your folder dumps there.
5. **Rename the folder:** Change the name of the folder so it ends with `.ps3`.
6. **Launch RetroDECK:** The game will now show up in RetroDECK.

**Example:** 

You have a folder dump of a Blu-ray PlayStation 3 game called Hockey World. 

The folder is named `Hockey World`. To get it to show up, you need to rename it to `Hockey World.ps3`. 

The game will then appear in RetroDECK.


---

## How-to: Install DLC or patches on disc based games

If you want to install some DLC or patch you can do that through RPCS3 itself.

1. **Open RPCS3:** Open RPCS3 from the Configurator.
2. **Navigate to the installation option:** In the RPCS3 interface, go to `File` -> `Install Packages/Raps/Edats`.
3. **Select the file to install:** In the file browser, navigate and select the file you want to install.
4. **Launch the game:** The game can be launched via RetroDECK with patches and DLC already installed.

### (OPTIONAL) If you use .ps3 folders

Some users may want to include their DLC or PATCH files inside the game folder for archiving purposes, or just to avoid having these contents spread in the RPCS3 filesystem. It's fully optional but to do so, follow these steps:

1. **Locate the installed files:** The files will be installed inside a new game folder on the RPCS3 hard drive under `retrodeck/bios/rpcs3/dev_hdd0/game/GAMEID` where `GAMEID` is unique for each game.
2. **Verify the installation:** The patches or DLC should now be installed inside the `GAMEID` folder.
3. **Move the content:** Move the content of the GAMEID folder into the games folder inside the `retrodeck/roms/ps3/GAMENAME` folder and overwrite & replace the files.
4. **Remove the old folder:** You can now remove the `retrodeck/bios/rpcs3/dev_hdd0/game/GAMEID` folder as the files have been moved.

**Example:** 

The game Hockey World.

1. **Install the DLC or patch:** Follow this guide to install the files.
2. **Locate the new folder:** The installation creates a new folder called `BCA111111` under `retrodeck/bios/rpcs3/dev_hdd0/game/`.
3. **Copy the content:** Open the folder `retrodeck/bios/rpcs3/dev_hdd0/game/BCA111111` and copy all of its content.
4. **Paste the content:** Paste the copied content into the `retrodeck/roms/ps3/Hockey World` folder and replace/overwrite the files.
5. **Remove the old folder:** You can then remove the `BCA111111` folder in `retrodeck/bios/rpcs3/dev_hdd0/game/`.

---

## How to: Install digital PSN titles

The procedure is almost identical to the procedure above.

**NOTE:** On the Steam Deck, this could be easier to do in Desktop Mode. If you want to do it in Game Mode, you need to press the Steam button and switch between windows using the window switcher.

If you want to install some PSN titles, you can do that through RPCS3 itself.

1. **Open RPCS3:** Open RPCS3 from the Configurator.
2. **Navigate to the installation option:** In the RPCS3 interface, go to `File` -> `Install Packages/Raps/Edats`.
3. **Select the file to install:** In the file browser, navigate and select the file you want to install.
4. **Verify the installation:** The file will be installed inside the games folder on the RPCS3 hard drive under `retrodeck/bios/rpcs3/dev_hdd0/game/GAMEID` where `GAMEID` is unique for each game.
5. **Install patches or DLC:** Install any patches or DLC for the game by repeating steps 2 and 3 for each file.
6. **Launch the game:** The game should now show up and be playable inside the ES-DE interface.

### (OPTIONAL) If you use .ps3 folders

Similarly to how it is written above with the DLC and PATCHES, the user can decide to move the digital games outside the RPCS3 filesystem. To do so:

1. **Move the digital games folder:** After the game is ready, move the digital games folder from `retrodeck/bios/rpcs3/dev_hdd0/game/GAMEID` to `retrodeck/roms/ps3`.
2. **Rename the folder:** Rename the folder to the name of the game and add the `.ps3` file extension to the end of the folder.

**Example:**

1. **Install the digital game:** You installed a file that contained the digital game `Hockey World 2`, which created a folder called `BCA123456` under `retrodeck/bios/rpcs3/dev_hdd0/game/`.
2. **Move the folder:** After that, you moved `BCA123456` from `retrodeck/bios/rpcs3/dev_hdd0/game/` to `retrodeck/roms/ps3`.
3. **Rename the folder:** The folder `BCA123456` is renamed to `Hockey World 2.ps3`.

---

## RPCS3 and Save States

Save States don't work the same as other emulators you might be used to and are `disabled by default` in RetroDECK. 

You can enable them but first read up on the lastest information and how-to's on RPCS3 wiki page.

Link: [RPCS3 Save States](https://wiki.rpcs3.net/index.php?title=Help:Save_State)

---

## Failed to set RLIMIT_MEMLOCK size to 2 GiB

Some Linux distributions gets this error.

To solve it

1. Edit this limits.conf file under 

`/etc/security/limits.conf`

(You need sudo and can use a text editor like nano: `sudo nano /etc/security/limits.conf`)

2. Add the following at the end of the file, save and exit.

```
*        hard    memlock        unlimited
*        soft    memlock        unlimited
```

3. Reboot your device
