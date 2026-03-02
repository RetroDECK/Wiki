# Steam Deck: Connecting Joy-Cons to Dolphin

W.I.P

Follow these steps to set up Joy-Cons with the Dolphin on your Steam Deck.

**Note:** Only the right Joy-Con will register gyro movements. Games requiring both Nunchuk and Wii Remote movement won't work.


### Prerequisites: Enable Combine Joy-Con Pairs 

1. Connect the joycons via Bluetooth: `Steam Button` → `Settings` → `Bluetooth`.
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

Sources:

https://imgur.com/a/FkUXsiq

https://www.reddit.com/r/SteamDeckEmulation/comments/106v9n9/using_joy_cons_as_a_wii_remote_in_dolphin_on/

Notes:

- Check if Joy-Cons can instead run via SteamDeckDSU and Steam Input, it should be possible to replicate it the same as Wii U etc..

