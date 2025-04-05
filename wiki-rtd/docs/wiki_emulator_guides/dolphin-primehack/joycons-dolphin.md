# Steam Deck: Connecting Joy-Cons to Dolphin

Follow these steps to set up Joy-Cons with the Dolphin on your Steam Deck.

**Note:** Only the right Joy-Con will register gyro movements. Games requiring both Nunchuk and Wii Remote movement won't work.


### Prerequisites: Enable Combine Joy-Con Pairs 

1. Connect the joycons via Bluetooth: `Steam Button` -> `Settings` -> `Bluetooth`.
2. Go back to `Settings` and into `Controller Settings`.
3. Enable `Combine Joy-Con Pairs`.

---

## Step 1: Disable Steam Input

1. Open Dolphin from the game mode.
2. Before tapping "play," open the controller settings for Dolphin.
3. Disable Steam input for the Joy-Cons.

## Step 2: Configure Controllers in Dolphin

1. Go to the **Controllers** tab in Dolphin.
2. Select **Emulate the Wii's Bluetooth adapter**.
3. Press **Configure** and save the profile.

## Step 3: Select SDL/0/Nintendo Switch Joy-Con (L/R)

1. From the list of devices, select **SDL/0/Nintendo Switch Joy-Con (L/R)**.
2. Ensure Steam input is disabled to see this device.

## Step 4: Adjust Settings

1. In the first tab, press the "..." button near the controller icon.
2. Put toggle (`Button 4` & `Button 6`) into the box to emulate attaching and detaching the nunchuk.
3. In the **Motion Simulation** tab, delete everything except **Point**.
4. In the **Motion Input** tab, check **Point** - **Enable**.

https://imgur.com/a/FkUXsiq

https://www.reddit.com/r/SteamDeckEmulation/comments/106v9n9/using_joy_cons_as_a_wii_remote_in_dolphin_on/


Connect your joy cons to the deck. In the controller tab of the Steam deck menu, "Combine Joy-Con Pairs" should be turned on.

Open your Dolphin page from the game mode. But before tapping "play" open the controller settings for Dolphin (controller icon)

In the "Nintendo Switch Joy-Con (L/R)" tab go to the cog button - disable steam input. Confirm.

Having done this, open Dolphin.

Go to the "Controllers" tab (might need to press a little arrow button on the top right to see it).

"Emulate the Wii's Bluetooth adapter" will be selected. That's what we need. Press "Configure"

Save the profile you have, so you can quickly return to playing Wii games just with your steam deck. Now we can change everything here.

Select SDL/0/Nintendo Switch Joy-Con (L/R) from the list of your devices. You won't see this device in the list if you haven't disabled the steam input for the joy cons.

Here are the settings I used on each tab: https://imgur.com/a/FkUXsiq Important stuff to add:

On the first tab, on the top right, where it says "Extension" press the "..." button near the controller icon.

Put toggle(`Button 4`&`Button 6`) into the box. This way, you can emulate attaching and detaching the nunchuk easily by pressing both plus and minus buttons. Some games won't proceed until you do this.

In the "Motion Simulation" tab delete everything except "Point", but even there, leave only the cursor and delete the joystick.

In the "Motion Input" tab everything should be working pretty out of the box, just check the "Point" - "Enable"

In my case, It was set up that the nunchuk was always shaking for some reason, so I deleted everything there as well.

Close the dolphin. In any game you'd want to use your joy-cons, it is important to disable the steam input for that game specifically before opening it for the first time. If you disable the steam input during the game, you'd just need to restart the game.

Enjoy your Wii Sports, Zeldas, Mario Galaxy and everything else with pretty authentic experience.

An important caveat, though, Steam Deck doesn't register the motion sensors from the left joy-con, only the right one. So you can get a pretty accurate representation of the Wii remote with motion plus, but not the motion from the nunchuk. Because of that, you can't play bicycle ride from the Resort. For other games that use the motion from the nunchuk, at least you can assign the nunchuk shake to a button. If anyone knows how to get gyro registered from the left joycon too, it would be awesome.
