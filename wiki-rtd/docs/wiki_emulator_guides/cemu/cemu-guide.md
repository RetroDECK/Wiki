# Cemu - General Guide

<img src="../../../wiki_images/logos/cemu-logo.png" width="75">

Cemu is a Wii U emulator that is able to run most Wii U games and homebrew.

---

### Cemu Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Cemu Compatibility Guide | [Link](https://compat.cemu.info/) |
| Cemu Github | [Link](https://github.com/cemu-project/Cemu) |
| Cemu Webpage | [Visit](https://cemu.info/) |
| Cemu Wiki | [Link](https://wiki.cemu.info/wiki/Main_Page) |


---

## Where to put the games?

WiiU games should be put under the `retrodeck/roms/wiiu/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .wud        | Encrypted Wii U disc image |
| .wux        | Compressed Wii U disc image |
| .wua        | Decrypted Wii U disc image **(Recommended)** |
| .rpx        | Wii U executable file |

---

## Does Cemu require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

| File Name        | Required For                       | Description |
|------------------|------------------------------------|-------------|
| `keys.txt`       | Running encrypted game files        | Contains the necessary decryption keys that allow Cemu to load and run encrypted Wii U titles. |
| `otp.bin`        | Online functionality (optional)     | A system dump containing one-time programmable console data used to properly emulate online services. |
| `seeprom.bin`    | Online functionality (optional)     | Stores console-specific data needed for accurate online communication and identity emulation. |

### Where to put the BIOS / Firmware files?

`retrodeck/bios/cemu`


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type          | Directory                                         | Comment                       |
|:-------------:|:-------------------------------------------------|:------------------------------|
| BIOS          | `retrodeck/bios/Cemu/`                            | Contains usr and sys folders  |
| Config        | `~/.var/app/net.retrodeck.retrodeck/config/Cemu/`| settings.xml, gameProfiles folder, controllerProfiles folder |
| Data          | `~/.var/app/org.retrodeck.retrodeck/data/Cemu/`  |                              |
| ROMs          | `retrodeck/roms/wiiu/`                           |                              |
| Saves         | `retrodeck/saves/wiiu/cemu/`                     |                              |
| Shaders       | `retrodeck/shaders/Cemu/transferable/`          |  Cemu/shaderCache/transferable                            |
| Texture Packs | `retrodeck/texture_packs/Cemu/graphicPacks/`    | Cemu/graphicPacks             |


---

## Installing and Using Graphic Packs

#### Automatic Install

1. Open **Cemu**.  
2. Go to **Options → Graphic Packs**.  
3. Click **Download latest community graphic packs**.

#### Manual Install

- Place downloaded packs in the `retrodeck/texture_packs/Cemu/graphicPacks/` folder.

### Enabling Graphic Packs

1. Open **Cemu**.  
2. Go to **Options → Graphic Packs**.  
3. Check the boxes next to the packs you want to enable. **Note:** Packs only apply to their matching game IDs, so you can enable multiple packs safely.
1. Exit Cemu.
2. Launch the game via ES-DE.

### Check if a Graphic Pack Is Active

1. Open **Cemu** and start your game.  
2. Go to **Options → Graphic Packs**.  
3. A **green** pack name indicates the pack is currently active.


---

## Language Settings

**UI Language**

1. Open **Cemu** from the RetroDECK Configurator.  
2. Go to **Options → Interface → Language**.  
3. Choose your preferred language.
4. Exit and restart Cemu.

**In-Game Language**

1. Open **Cemu** from the RetroDECK Configurator.  
2. Go to **Options → Console Language**.  
3. Choose your preferred language.
4. Exit Cemu.


---


## Installing DLC and Updates

**NOTE:**

Do not keep DLC and Update files in: `retrodeck/roms/wiiu/`

**Instructions:**

1. Open the `Configurator` and Open `Cemu`
2. `Press File` → `Install game title, update, or DLC...`
3. Navigate to where you have your files.
4. Choose the DLC or Update file and press `Open` and it will install.
5. Repeat for each DLC / Update you want to install.

---

## How make .wua files and install the games

**NOTE:** 

- Encrypted ROMs can't be converted to `.wua`. 
- Before you make the `.wua` install any updates or DLC first to the base game. 

**Instructions:**

1. Open the `Configurator` and Open `Cemu`
2. `Press Tools` → `Title Manager`
3. Search for the game you want to convert and check so the `Type` colum says: `base`.
4. Right click and press the `Convert to compressed Wii U archive`.
5. Verify in the prompt that everything you want is there: base game, updates and DLC.
6. Select the output target folder: `retrodeck/roms/wiiu/`.


---

## Pretendo Account for online play

To create a Pretendo Network account.

1. Use the provided link to register:

[Pretendo: Register Account](https://pretendo.network/account/register).

2. Then, follow the instructions to log in with your Pretendo Network account on a Wii U.

[Pretendo: Install WiiU](https://pretendo.network/docs/install/wiiu) 

- Note: Existing NNIDs are not usable on Pretendo Network, so you must create a Pretendo account.

3. Follow the guide to generate and dump the required user files for your Pretendo Account: 

[Cemu: Online Play Guide](https://cemu.cfw.guide/online-play.html) 

**RetroDECK specific file locations:**

-  Wii U User Account’s `usr` and `sys` folders
    - Located in the `MLC Path` configured in `RetroDECK Configurator` → `Open Cemu` → `Options` → `General settings`  (default: `retrodeck/bios/cemu`) 
  
- `otp.bin` and `seeprom.bin`:
    - Located at `~/.var/app/org.retrodeck.retrodeck/data/Cemu`.

---

