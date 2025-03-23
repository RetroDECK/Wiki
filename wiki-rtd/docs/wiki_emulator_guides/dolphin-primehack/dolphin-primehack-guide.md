# Dolphin / Primehack - General Guide

<img src="../../../wiki_images/logos/dolphin-logo.png" width="75">  <img src="../../../wiki_images/logos/primehack-logo.png" width="75">

Dolphin feature rich a GameCube and Wii Emulator.

Primehack is a fork of Dolphin intended just to give Metroid Prime Trilogy mouselook controls and other improvements.

---


### Dolphin Links:

[Dolphin - Webpage](https://dolphin-emu.org/)

[Dolphin - Wiki](https://wiki.dolphin-emu.org/index.php?title=Main_Page)

[Dolphin - Game Compatibility](https://dolphin-emu.org/compat/)

[Dolphin - Performance Guide](https://dolphin-emu.org/docs/guides/performance-guide/)

[Dolphin - Github](https://github.com/dolphin-emu/dolphin)


### Primehack Links

[Primehack - Wiki](https://github.com/shiiion/dolphin/wiki/)

[Primehack - FAQ](https://github.com/shiiion/dolphin/wiki/Frequently-Asked-Questions)

[Primehack - Github](https://github.com/shiiion/dolphin)

---


## Where to put the games?

**Gamecube:**

Should be put under the `retrodeck/roms/gc/` directory.

**Wii:**

Should be put under the `retrodeck/roms/wii/` directory.

## What file formats does Dolphin / Primehack support?

| File Format | Description |
|-------------|-------------|
| .ciso       | Compressed ISO image file |
| .dff        | Digital Forensics File |
| .dol        | GameCube executable file |
| .elf        | Executable and Linkable Format |
| .gcm        | GameCube disc image file |
| .gcz        | Compressed GameCube disc image |
| .iso        | Standard ISO disc image |
| .json       | JavaScript Object Notation file |
| .m3u        | Playlist file |
| .rvz        | Compressed GameCube/Wii disc image **(Recommended)** |
| .tgc        | GameCube disc image format |
| .wad        | WiiWare and Virtual Console game file |
| .wbfs       | Wii Backup File System image |
| .wia        | Compressed Wii disc image |
| .7z         | Compressed archive file |
| .zip        | Compressed archive file |

**NOTE:**

`.wbfs` and `.wad` are the original format supported by the Wii console.

## Does Dolphin require BIOS or Firmware?

Optional `IPL.bin` for GameCube boot intros.

### Where to put the GameCube BIOS?

Dolphin looks for the `IPL.bin` in the save folders. Put each region's `IPL.bin` in the corresponding saves folder.

| Type               | Folder                              | Flatpak Source                  | Emulator Folder                | Comment |
|:------------------:|:-----------------------------------:|:-------------------------------:|:------------------------------:|:-------:|
| GameCube Saves EU  | `retrodeck/saves/gc/dolphin/EU/`    | `var/data/dolphin-emu/GC/EUR/`  | `dolphin-emu/GC/EUR/`          |         |
| GameCube Saves US  | `retrodeck/saves/gc/dolphin/US/`    | `var/data/dolphin-emu/GC/USA/`  | `dolphin-emu/GC/USA/`          |         |
| GameCube Saves JP  | `retrodeck/saves/gc/dolphin/JP/`    | `var/data/dolphin-emu/GC/JAP/`  | `dolphin-emu/GC/JAP/`          |         |


## Folder structure

### Dolphin

This shows what folder corresponds to each folder in the standard Dolphin structure 

| Type               | Folder                              | Flatpak Source                  | Emulator Folder                | Comment |
|:------------------:|:-----------------------------------:|:-------------------------------:|:------------------------------:|:-------:|
| GameCube Saves EU  | `retrodeck/saves/gc/dolphin/EU/`    | `var/data/dolphin-emu/GC/EUR/`  | `dolphin-emu/GC/EUR/`          |         |
| GameCube Saves JP  | `retrodeck/saves/gc/dolphin/JP/`    | `var/data/dolphin-emu/GC/JAP/`  | `dolphin-emu/GC/JAP/`          |         |
| GameCube Saves US  | `retrodeck/saves/gc/dolphin/US/`    | `var/data/dolphin-emu/GC/USA/`  | `dolphin-emu/GC/USA/`          |         |
| Mods               | `retrodeck/mods/Dolphin/`           | `var/data/dolphin-emu/Load/GraphicMods` | `dolphin-emu/Load/GraphicMods/` |         |
| ROMs Gamecube Folder | `retrodeck/roms/gc/`              |                                 |                                |         |
| ROMs Wii Folder    | `retrodeck/roms/wii/`               |                                 |                                |         |
| Screenshots        | `retrodeck/screenshots/`            | `var/data/dolphin-emu/ScreenShots/` | `dolphin-emu/ScreenShots/`     |         |
| States             | `retrodeck/states/dolphin/`         | `var/data/dolphin-emu/StateSaves/` | `dolphin-emu/StateSaves/`      |         |
| Texture Packs      | `retrodeck/mods/Dolphin/`           | `var/data/dolphin-emu/Load/Textures/` | `dolphin-emu/Load/Textures/`   |         |
| Wii Saves          | `retrodeck/saves/wii/dolphin/`      | `var/data/dolphin-emu/Wii/`     | `dolphin-emu/Wii/`             |         |

### PrimeHack

This shows what folder corresponds to each folder in the standard PrimeHack structure 


| Type               | Folder                              | Flatpak Source                  | Emulator Folder                | Comment |
|:------------------:|:-----------------------------------:|:-------------------------------:|:------------------------------:|:-------:|
| GameCube Saves EU  | `retrodeck/saves/gc/primehack/EU/`  | `var/data/primehack/GC/EUR/`    | `primehack/GC/EUR/`            |         |
| GameCube Saves JP  | `retrodeck/saves/gc/primehack/JP/`  | `var/data/primehack/GC/JAP/`    | `primehack/GC/JAP/`            |         |
| GameCube Saves US  | `retrodeck/saves/gc/primehack/US/`  | `var/data/primehack/GC/USA/`    | `primehack/GC/USA/`            |         |
| Mods               | `retrodeck/mods/Primehack/`         | `var/data/primehack/Load/GraphicMods` | `primehack/Load/GraphicMods/` |         |
| ROMs Gamecube Folder | `retrodeck/roms/gc/`              |                                 |                                |         |
| ROMs Wii Folder    | `retrodeck/roms/wii/`               |                                 |                                |         |
| Screenshots        | `retrodeck/screenshots/`            | `var/data/primehack/ScreenShots/` | `primehack/ScreenShots/`       |         |
| States             | `retrodeck/states/primehack/`       | `var/data/primehack/StateSaves/` | `primehack/StateSaves/`        |         |
| Texture Packs      | `retrodeck/mods/Primehack/`         | `var/data/primehack/Load/Textures/` | `primehack/Load/Textures/`     |         |
| Wii Saves          | `retrodeck/saves/wii/primehack/`    | `var/data/primehack/Wii/`       | `primehack/Wii/`               |         |

---

## Where do I change the language of Dolphin / Primehack?

1. In the `Configurator` open either `Dolphin` or `Primehack`.
2. Navigate to `Options` -> `Configuration` -> `Interface` .
3. Select preferred language in the drop-down menu.
4. Close the Emulator, Configurator and return to RetroDECK.

## Gamecube Controls

The controls here are described as an Xbox Layout style controller.

| Action          | Button       | Comment |
|:---------------:|:------------:|:-------:|
| A               | `A`          |         |
| B               | `B`          |         |
| X               | `X`          |         |
| Y               | `Y`          |         |
| Z               | `R2 or L2`   |         |
| START           | `START`      |         |
| Control Stick   | `Left Stick` |         |
| C Stick         | `Right Stick`|         |
| D-Pad Up        | `D-Pad Up`   |         |
| D-Pad Down      | `D-Pad Down` |         |
| D-Pad Left      | `D-Pad Left` |         |
| D-Pad Right     | `D-Pad Right`|         |


## Wii Controls for Controllers

The controls here are described as an Xbox Layout style controller.

There are hotkeys in the Radial Menus to change the Wii Mote from Upright / Sidways.

| Action            | Button                | Comment |
|:-----------------:|:---------------------:|:-------:|
| 1                 | `Y`                   |         |
| 2                 | `X`                   |         |
| A                 | `A` or `Left Mouse Click` |         |
| B                 | `B`                   |         |
| C                 | `R1`                  |         |
| D-Pad Down        | `D-Pad Down`          |         |
| D-Pad Left        | `D-Pad Left`          |         |
| D-Pad Right       | `D-Pad Right`         |         |
| D-Pad Up          | `D-Pad Up`            |         |
| Home              | `R3`                  |         |
| +                 | `Start`               |         |
| -                 | `Select`              |         |
| Shake Nunchuck    | `L1 + L2`             |         |
| Shake Wii Mote    | `L1`                  |         |
| Z                 | `L2`                  |         |

### Wii Motion - Pointer Emulation  


- Mouse movement is the general way to to get the pointer emulation.
- `Left Mouse Click`  that correspons to a press of the `A` button (as that one is the one mostly used for Wii games that are based around pointing as the primary button).
- [RetroDECK Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md) features several ways to enable `Joystick as Mouse` Emulation. 
- You could also use a mouse / touchpad. 


### Wii Motion - Tilt Emulation

Tilt emulation is made possible by holding the `L2` button and moving the `Right Joystick`.

| Action          | Button                    | Comment |
|:---------------:|:-------------------------:|:-------:|
| Tilt Down       | `L2 + Right Joystick Down`|         |
| Tilt Left       | `L2 + Right Joystick Left`|         |
| Tilt Right      | `L2 + Right Joystick Right`|        |
| Tilt Up         | `L2 + Right Joystick Up`  |         |



---

## Information: Using Real Wii Remotes

**Tip:** Sync Wiimote Button Hotkey

RetroDECK has a built-in hotkey for pressing the Dolphin `Sync Wiimote` button (`Alt + W`) if you get disconnected in Steam Input. It can also be accessed from some controller's radial menu systems.

### Hardware Prerequisites

<img src="../../../wiki_images/devices/wii-bar.png" width="150"> <img src="../../../wiki_images/devices/bluetooth-dongle.png" width="80">

- A Wii Sensor Bar alternative (wireless or wired).
- A Linux compatible Bluetooth dongle or built-in Bluetooth adapter.

### On Third Party Wii Remotes

Many third party Wii Remotes lack native Linux support, but several groups are working on it. 

- They may work with Bluetooth Passthrough mode in Dolphin.
- They may or may not remember pairing with the Bluetooth adapter, requiring synchronization for each game.

**Sources:**

[xwiimote github](https://github.com/xwiimote/xwiimote)

[xwiimote-ng github](https://github.com/dev-0x7C6/xwiimote-ng) - Fork of xwiimote

**Related Issues:**

[xwiimote: issue 66](https://github.com/xwiimote/xwiimote/issues/66)

[xwiimote: issue 73](https://github.com/xwiimote/xwiimote/issues/73)

[bluez: issue 94](https://github.com/bluez/bluez/issues/94)

### Steam Deck Tips: Real Wii Remotes

- Play docked, connected to a monitor/TV, with a separate Bluetooth dongle attached to the dock.
- Set a sudo password for the Steam Deck.
- Connect a keyboard/mouse to the dock while setting up.
- Sit close to the Steam Deck when pairing the Wiimotes.
- Configure Wiimotes in `Desktop Mode` first, then switch to `Game Mode` when everything is working.

    - Open Dolphin from the Configurator.
    - Make all the settings changes to connect the Wiimotes.
    - Launch a game from `Desktop Mode` directly in Dolphin.
    - If pairing works and the Wiimotes connect and control the game fine in `Desktop Mode`, it will work in `Game Mode` when launched from RetroDECK.

### Mod: Wii bluetooth adapter to USB

For hardware mod enthusiasts, you can buy a Bluetooth adapter spare part from a Wii console and wire it as a USB Bluetooth adapter for better compatibility. 

[How to wire a Wii's Bluetooth Module to a PC USB Port](https://forums.dolphin-emu.org/Thread-how-to-wire-a-wii-s-bluetooth-module-to-a-pc-usb-port)

---

## How-to: Use a Real Wii Remote - Method 1: Emulate Wii's Bluetooth Adapter

This method works only with the Official Wii Remote controller and is the easiest method.

### Step 1: Open Dolphins Controller Settings

<img src="../emulated-bluetooth.png" width="450">

Open `RetroDECK Configurator` -> `Open Emulator` -> `Dolphin` -> `Options` -> `Controller Settings`.


### Step 2: Change the Settings

Under `Emulate the Wii's Bluetooth adapter`:

- Change the values of Wii Remote dropdown lists from `Emulated Wii Remote` to `Real Wii Remote`.
- Enable the following checkboxes:
  - `Connect Wii Remotes for Emulated Controllers`
  - `Continuous Scanning`

### Step 3: Syncing the Wiimotes

- Connect the Wiimote by pressing the `Sync Button` when a game is launched.
- Reconnect every time when launching a new game. 
- If everything works, re-pairing should be quick with the press of the `A` button without needing to press the `Sync Button` again.

---

## How-to: Use a Real Wii Remote - Method 2: Bluetooth Passthrough

This method works with both 3rd party and official Wiimotes. It is more complex and has some downsides.

**🛑 Warning 🛑**

- This method makes the Bluetooth adapter unusable for other devices while playing Wii games. 
- No other devices can connect to it except Wiimotes, meaning all other devices will disconnect. 
- It is recommended to have a backup input method like a wireless keyboard or a controller with a dongle/cable.

Source: [Dolphin Wiki: Bluetooth_Passthrough](https://wiki.dolphin-emu.org/index.php?title=Bluetooth_Passthrough)

### Step 1: Find Your Vendor and Product IDs

First you need to find our your `Vendor ID` `Product ID` for the Bluetooth adapter you want to use.

1. Open a terminal window.
2. Type `lsusb`.
3. It will display all connected USB or BUS devices.

**Example:**

```
Bus 001 Device 003: ID 0bda:5650 Realtek Semiconductor Corp.
Bus 001 Device 004: ID 8087:0025 Intel Corp. Wireless-AC 9260 Bluetooth Adapter
```

`ID 8087:0025 Intel Corp. Wireless-AC 9260 Bluetooth Adapter` is the Bluetooth Adapter in this example. The `ID 8087:0025` left value is the `Vendor ID` while the right is `Product ID`. In this example: `Vendor ID` is `8087` and `Product ID` is `0025`.


### Step 2: Create the rules file

You will need root privileges for this.


1. Open a terminal and type the following command, replacing `Vendor ID` and `Product ID` respectively:

```
sudo echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="Vendor ID", ATTRS{idProduct}=="Product ID", TAG+="uaccess"' | sudo tee -a /etc/udev/rules.d/52-dolphin.rules > /dev/null
```

From the example above, the result should look like this:

```
sudo echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="8087", ATTRS{idProduct}=="0025", TAG+="uaccess"' | sudo tee -a /etc/udev/rules.d/52-dolphin.rules > /dev/null
```

2. Reload udev rules with: sudo udevadm control --reload-rules.
3. Take out and reinsert the Bluetooth adapter or reboot if a built-in was used.

### Step 3: Enable Bluetooth Passthrough in Dolphin

Open `RetroDECK Configurator` -> `Open Emulator` -> `Dolphin` -> `Options` -> `Controller Settings`.

<img src="../dolphin-bluetooth-pass.png" width="450">

Change Bluetooth type:

- From `Emulate the Wii's Bluetooth adapter` to `Passthrough a Bluetooth Adapter`

Enable the following checkboxes:

<img src="../dolphin-connect-scan.png" width="450">

- `Connect Wii Remotes for Emulated Controllers`
- `Continuous Scanning`

### Step 4: Syncing the Wiimotes

- Connect the Wiimote when a game is launched.
- Reconnect every time when launching a new game.
- Press `1` and `2` together on the Wiimote or the `Sync Button` (under the backplate) when launching a game.
- Sometimes, press the `Sync Button` on the Emulated Wii in the Dolphin Interface. RetroDECK has a built-in shortcut for this (`Alt + W`), accessible from the Steam Input Radial Menu system.

### Extra: Troubleshooting and Tips

- Sit close to the device during initial pairing.
- Pairing may take a while, especially with third-party Wiimotes. Try multiple times with the `Sync Button` + `Sync Wiimote`.
- To play with normal controllers again, change back to `Emulate the Wii's Bluetooth adapter` setting and `Emulated Wii Remote`.
- If the udev rules created in Step 2 are incorrect and Dolphin cannot get Bluetooth access, it will display an error message and crash. Ensure the file in `/etc/udev/rules.d/52-dolphin.rules` and its content are correct.

---

## How-to: Add Mods

The `~/retrodeck/mods/dolphin/` / `~/retrodeck/mods/primehack/` that represents the `/load/GraphicMods` folder.


**Note:** 

Some texture packs could made for a specific version or region of a game. 

Make sure you have the right game and textures for it.

`GAME_ID` is different for every game.

### Enable Mods

1. Open up Dolphin or Primehack inside `RetroDECK Configurator` by pressing `Open Emulator` - `Dolphin` / `Primehack`.
2. Press `Options` -> `Graphic Settings`.
3. `Enable Graphics Mods` and set it to `On`.

### Add the mods

1. Extract any mod files from compressed `.zip` or any other format into folders.
2. Go into mods folders, they contain folders that are all named by `GAME_ID`.
3. Move the mods into the right folder: 

**Dolphin:** `~/retrodeck/mods/dolphin/<GAME_ID>`

**Primehack:** `~/retrodeck/mods/primehack/<GAME_ID>`

If all is correct the mods should be loaded on next game launch.

---

## How-to: Add Texture Packs?

Primehack is based on Dolphin so the method is the same.

The `~/retrodeck/texture_packs/dolphin/` & `~/retrodeck/texture_packs/primehack/` represents the `/load/Textures` folder.

Some texture packs could made for a specific version or region of a game. Make sure you have the right game and textures for it.

`GAME_ID` is different for every game.

### Enable Custom Textures

1. Open up Dolphin or Primehack inside `RetroDECK Configurator` by pressing `Open Emulator` - `Dolphin` / `Primehack`.
2. Press `Options` -> `Graphic Settings`
3. `Load Custom Textures` & `Prefetch Custom Textures`  and set them to `On`.


### Add the textures

1. Extract any texture pack files from compressed `.zip` or any other format into folders.
2. Go into texture pack folders, they contain folders that are all named by `GAME_ID`.
3. Move the textures into the right folder: 

**Dolphin:** `~/retrodeck/texture_packs/dolphin/<GAME_ID>`

**Primehack:** `~/retrodeck/texture_packs/primehack/<GAME_ID>` <br>

If all is correct the textures should be loaded on next game launch.


---

## How-to: Enable GameCube Boot Main Menu

**Prerequisite:** Place the GameCube `IPL.bin` BIOS in the save folders (see above).

1. Open Dolphin or Primehack in `RetroDECK Configurator` by selecting `Open Emulator` -> `Dolphin` / `Primehack`.
2. Go to `Options` -> `Configuration` -> `GameCube` and uncheck `Skip Main Menu`.


