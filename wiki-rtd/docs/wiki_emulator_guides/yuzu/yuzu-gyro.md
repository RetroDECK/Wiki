# How to enable Gyro working Gyro in Yuzu

## Steam Deck with Gyro

This is a step by step guide on how to get working Gyro with Yuzu utilizing the Steam Deck's built in gyro.<br>
We are looking into building this feature into RetroDECK in the future.

#### Prerequisites: RetroDECK Steam Deck Controller Layout

Make you have `The Official RetroDECK Steam Deck Controller Layout`  installed and enabled.

If you don't have it read up on `Step 3` from the getting started guide.

[Steam Deck - RetroDECK Installation](../../wiki_devices/steamdeck/steamdeck-start.md).

#### I already have SteamDeckGyroDSU installed:

If you already have `SteamDeckGyroDSU` installed you can skip Step 2 or we do recommend running the `update.sh` from `home/deck/sdgyrodsu` to make sure you have the latest version of `SteamDeckGyroDSU`.

### Step 0: Edit the RetroDECK Layout

This step will be removed in the 0.8b update as the new profile version will have it enabled by default.

Launch RetroDECK.

- Press the `Steam` button - `Controller Settings` - Make sure that the RetroDECK Layout is Selected -
- Press `Edit Layout` - You will be on the `Action Set` - `RetroDECK - Set` -
- Go down to `Gyro` - Change it from `As Joystick` to `Directional Pad`.
- You don't need to put in any values of the menus bellow, just go back with `B` button to RetroDECK.

### Step 1: Install SteamDeckGyroDSU

[SteamDeckGyroDSU](https://github.com/kmicki/SteamDeckGyroDSU)

Go to `Desktop Mode` and open the built in terminal `Konsole` from the KDE Menu (Start Menu).

Copy the following command into the terminal and hit enter:

`bash <(curl -sL https://raw.githubusercontent.com/kmicki/SteamDeckGyroDSU/master/pkg/update.sh)`

This will Install SteamDeckGyroDSU and also create a new folder under `HOME` `$HOME/sdgyrodsu/` aka `home/deck/sdgyrodsu`

In that folder you will find two other files that is good to know about:

- `update.sh` - For updating SteamDeckGyroDSU

- `uninstall.sh` - For uninstalling SteamDeckGyroDSU

### Step 2: Open Yuzu in Game Mode and go to Controls

Go to `Game Mode` and launch RetroDECK.

Open the `RetroDECK Configurator` and launch Yuzu from: `Main Menu` - `RetroDECK Configurator` - `Open Emulator` - `Yuzu`

**In Yuzu:**

<img src="../../../wiki_images/emulators/yuzu/yuzu-controls.png" width="600">

Go to: `Emulation` - `Configure` - `Controls`


### Step 3: Configure Controls
Press the `Input Device` dropdown menu select `Steam Virtual Gamepad 0`.

Make sure that the `Motion` is checked in the bottom left and click the `Configure` underneath the `Motion` checkbox.

### Step 4: Test and Configure Motion

<img src="../../../wiki_images/emulators/yuzu/yuzu-motion-configure.png" width="600">

Make sure that the localhost IP-adress and port exists to the left side of the menu.

If it does not exist you will need to manually add it:

- Server: `127.0.0.1`
- Port: `26760`
- Press `Add Server`

Press the `Test` button to make sure you are getting data from `SteamDeckGyroDSU`.

If all has gone well you will get a message saying:

`Successfully received data from the server.`

### Step 5: Go back to Controls and press the hidden motion button

<img src="../../../wiki_images/emulators/yuzu/yuzu-hidden-motion.png" width="600">

Go back to `Controls`

Now you need to press the `Motion` button and `Shake the Steam Deck` to bind the motion.

But is the button is hidden on the Steam Decks tiny Screen as the interface is cramped. <br>
It is right under the big controller graphics.<br>

This easy can be done Docked with a bigger screen and just press the button as it will be shown on a larger screen and give the Steam Deck a shake.

But on the Steam Decks screen you need to do a special maneuver.

#### Step 5b: The Tiny Screen maneuver

On the left touchpad open the `RetroDECK Radial Menu System` press the `Steam Deck` Menu.

Here you will the buttons `Tab` and `Enter`

Press `Tab` until you highlight the ZR button in the interface.

yuzu-zr-navigation

yuzu-rz-navigation

## Linux Desktop or Steam Deck Docked with External Gyro Enabled Controllers

**Prerequisites:**

- A gyro enabled external controller.


   Back on the Yuzu Controls configuration page, you need to click a button that is hidden offscreen. There are two options for how to click it.

  You should still have focus on the Configure button under Motion (highlighted blue), hit tab (on a keyboard or bind tab to a back button) repeatedly to move focus to the next element. Continue to do this until there is focus on the slider bar under the ZR mapping. Click tab one more time to put focus onto the offscreen button that configures the motion mapping. Click enter (on a keyboard or bind enter to a back button).

   Another user found they were able to see the hidden button by setting the game resolution to 1920x1200 for both the internal and external screen, clicking the button, then setting the resolution back after the motion mapping is set. I didn't try this method so I don't know if that was done through the game settings or Yuzu settings, but worth giving it a shot if you know where to change the resolution and/or don't want to have to click tab a bunch.

  Once you've clicked the button (via either method) pick up the Steam Deck and give it a little shake. If everything worked correctly, you should see a wire frame box moving above the image of the Switch/Pro Controller.

  Enjoy your motion controls!
