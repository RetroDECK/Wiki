# Yuzu - General Guide (Archive)

<img src="../../../wiki_images/logos//yuzu-logo.svg" width="150">

Yuzu was a Switch emulator.

**Note: Archived Emulator**

It was removed as part of the `0.8.0b` update.

The last version that shipped with Yuzu was `0.7.6b`.

## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .xci        | Nintendo Switch Cartridge Image |
| .nsp        | Nintendo Submission Package **(Recommended)** |
| .nca        | Nintendo Content Archive |
| .nso        | Nintendo Switch Executable |
| .nro        | Nintendo Switch Homebrew |


## Does Yuzu require BIOS or Firmware?

Yes, `prod.keys` `title.keys` and `.nca` files.

### Where to put the firmware files?

Needs the key files `prod.keys`, `title.keys` and the firmware files in the following directories:

**Keys:** `~/retrodeck/bios/switch/keys`

**Firmware:** `~/retrodeck/bios/switch/registered`

The directory tree should look like this example:

```
~/retrodeck/bios/switch
├── keys
│   ├── prod.keys
│   └── title.keys
└── registered
    └── XXX amount of .nca files goes here
```

---

## How do I install DLC and Updates?

**Requirements:** Patch or DLC files <br>

**NOTE:** On the Steam Deck this could be easier to do in `Desktop Mode`.

1. Extract any patch or dlc files from compressed `.zip` or any other format to the true files.
2. Open Yuzu from inside `RetroDECK Configurator` by pressing `Open Emulator` - `Yuzu`.
3. Press `File` - `Install Files to NAND`
4. Find a DLC or Patch file from the file browser and press `Open`
5. This will install the DLC or Patch file into the games NAND folder inside of Yuzu.
6. Repeat step 2 to 3 for every file you need to install.
7. Quit Yuzu
8. Start RetroDECK and select the game you want to play.

---

## How do I add shader caches?

**Requirements:** Shader cache files <br>

**NOTE:** On the Steam Deck this could be easier to do in `Desktop Mode`.

1. Extract any shader cache files from compressed `.zip` or any other format to folders.
2. Open Yuzu from inside `RetroDECK Configurator` by pressing `Open Emulator` - `Yuzu`.
3. Right click on the game you want to add mods into.
4. Click on `Open Transferable Pipeline Cache`.
5. Paste the files inside that directory.
6. Start RetroDECK and select the game.

---

## How do I add mods?

**NOTE:** 

- `TITLEID` is different for every game.
- On the Steam Deck this could be easier to do in `Desktop Mode`.

There are two ways of adding mods into Yuzu

### From Yuzu directly

1. Extract any mod files from compressed `.zip` or any other format to folders.
2. Open up Yuzu inside `RetroDECK Configurator` by pressing `Open Emulator` - `Yuzu`.
3. Right click on the game you want to add mods into.
4. Click on `Open Mod Data Destination`.
5. Paste the mod folders inside that directory.
6. Right clicking on the game and selecting `Properties`.
7. Enable the mods you want to enable by pressing the checkboxes in the `Add-Ons` tab and press OK.
8. Quit Yuzu

### From the mods/yuzu folder

1. Extract any mod files from compressed `.zip` or any other format into folders.
2. Go into `~/retrodeck/mods/yuzu/` and file the right folder for the game you want to add mods to. The folders are all named by `TITLEID`.
3. Move those folders into `~/retrodeck/mods/yuzu/<TITLEID>`
4. Open up Yuzu inside `RetroDECK Configurator` by pressing `Open Emulator` - `Yuzu`.
5. Right clicking on the game and selecting `Properties`.
6. Enable the mods you want to enable by pressing the checkboxes in the `Add-Ons` tab and press OK.
7. Quit Yuzu

---

## How-to: Enable Gyro in Yuzu on the Steam Deck

This is a step-by-step guide on how to get to a working Gyro with Yuzu utilizing the Steam Deck's built in gyro. We are looking into building this feature into RetroDECK in the future.

#### Prerequisites: RetroDECK Steam Deck Controller Layout

Make you have `RetroDECK: Steam Deck Controller Layout` installed and enabled.

If you don't have it read up on `Step 3` from the getting started guide.

[Steam Deck - RetroDECK Installation](../../wiki_devices/steamdeck/steamdeck-start.md).

### Step 1: Install SteamDeckGyroDSU

[SteamDeckGyroDSU](https://github.com/kmicki/SteamDeckGyroDSU)

Go to `Desktop Mode` and open the built in terminal `Konsole` from the KDE Menu (Start Menu).

Copy the following command into the terminal and hit enter:

`bash <(curl -sL https://raw.githubusercontent.com/kmicki/SteamDeckGyroDSU/master/pkg/update.sh)`

This will Install SteamDeckGyroDSU and create a new folder under `HOME` `$HOME/sdgyrodsu/` aka `home/deck/sdgyrodsu`

In that folder you will find two other files that is good to know about:

- `update.sh` - For updating SteamDeckGyroDSU

- `uninstall.sh` - For uninstalling SteamDeckGyroDSU

### Step 2: Set RetroDECK Resolution

Go to back to game mode `Game Mode`

Go to RetroDECK.

But before you launch RetroDECK click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`

Set the Resolution from `Default` to `1920x1080`

Also turn on `Set resolution for internal and external display` (this might be hidden sometimes just go back one menu and go in again to make it show up).


### Step 3: Configure the Controls

Open the `RetroDECK Configurator` and launch Yuzu from: `Main Menu` - `RetroDECK Configurator` - `Open Emulator` - `Yuzu`

**In Yuzu:**

<img src="../yuzu-controls.png" width="600">

Go to: `Emulation` - `Configure` - `Controls`

Press the `Input Device` dropdown menu select `Steam Virtual Gamepad 0`.

Make sure that the `Motion` is checked in the bottom left and click the `Configure` underneath the `Motion` checkbox.

### Step 4: Test and Configure Motion

<img src="../yuzu-motion-configure.png" width="600">

Make sure that the localhost IP-adress and port exists on the left side of the menu.

If it does not exist, you will need to manually add it:

- Server: `127.0.0.1`
- Port: `26760`
- Press `Add Server`

Press the `Test` button to make sure you are getting data from `SteamDeckGyroDSU`.

If all has gone well, you will get a message saying:

`Successfully received data from the server.`

### Step 5: Go back to Controls and press the motion button

<img src="../yuzu-hidden-motion.png" width="600">

Go back to `Controls`

Now you need to press the `Motion` button and `Shake the Steam Deck` to bind the motion.

<img src="../yuzu-gyro-box.png" width="600">

If all is working correctly the tiny box in the middle of the controller should move with your built-in Gyro.

### Step 6: Quit RetroDECK

Press `OK` - Press the `Quit Emulator Hotkey` (Select + Start) or go to `File` - `Quit Yuzu`

Quit the `RetroDECK Configurator` and Quit RetorDECK.

### Step 7: Revert the Resolution to Default

Revert the changed you made to resolution in Step 2:

Click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`

Set the Resolution from`1920x1080` to `Default`

Also turn off `Set resolution for internal and external display`

### Step 8: Launch RetroDECK

You can now launch RetroDECK and play Yuzu with gyro.
