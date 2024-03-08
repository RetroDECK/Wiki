# How to enable Gyro working Gyro in Yuzu (Legacy)

## Steam Deck with Gyro

This is a step-by-step guide on how to get to a working Gyro with Yuzu utilizing the Steam Deck's built in gyro. We are looking into building this feature into RetroDECK in the future.

#### Prerequisites: RetroDECK Steam Deck Controller Layout

Make you have `RetroDECK: Steam Deck Controller Layout` installed and enabled.

If you don't have it read up on `Step 3` from the getting started guide.

[Steam Deck - RetroDECK Installation](../../wiki_devices/steamdeck/steamdeck-start.md).

#### I already have SteamDeckGyroDSU installed:

If you already have `SteamDeckGyroDSU` installed you can skip Step 2 or we do recommend running the `update.sh` from `home/deck/sdgyrodsu` to make sure you have the latest version of `SteamDeckGyroDSU`.

### Step 0: Edit the RetroDECK Layout

This step will be removed in the 0.8b update as the new profile version will have it enabled by default.

Launch RetroDECK.

- Press the `Steam` button - `Controller Settings` - Make sure that the RetroDECK Layout is selected.
- Press `Edit Layout` - You will be on the `Action Set` - `RetroDECK - Set`.
- Go down to `Gyro` - Change it from `As Joystick` to `Directional Pad`.
- You don't need to put in any values of the menus below, just go back with `B` button to RetroDECK.

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


### Step 3:


Open the `RetroDECK Configurator` and launch Yuzu from: `Main Menu` - `RetroDECK Configurator` - `Open Emulator` - `Yuzu`

**In Yuzu:**

<img src="../../../wiki_images/emulators/yuzu/yuzu-controls.png" width="600">

Go to: `Emulation` - `Configure` - `Controls`


### Step 4: Configure Controls
Press the `Input Device` dropdown menu select `Steam Virtual Gamepad 0`.

Make sure that the `Motion` is checked in the bottom left and click the `Configure` underneath the `Motion` checkbox.

### Step 5: Test and Configure Motion

<img src="../../../wiki_images/emulators/yuzu/yuzu-motion-configure.png" width="600">

Make sure that the localhost IP-adress and port exists on the left side of the menu.

If it does not exist, you will need to manually add it:

- Server: `127.0.0.1`
- Port: `26760`
- Press `Add Server`

Press the `Test` button to make sure you are getting data from `SteamDeckGyroDSU`.

If all has gone well, you will get a message saying:

`Successfully received data from the server.`

### Step 6: Go back to Controls and press the motion button

<img src="../../../wiki_images/emulators/yuzu/yuzu-hidden-motion.png" width="600">

Go back to `Controls`

Now you need to press the `Motion` button and `Shake the Steam Deck` to bind the motion.

<img src="../../../wiki_images/emulators/yuzu/yuzu-gyro-box.png" width="600">

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

You can now launch RetroDECK and play Yuzu with motion.
