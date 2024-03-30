# Release Candidate Testing

If you are on SteamOS make sure you are in `Desktop Mode` before you begin, you must also have set a sudo password.

## Step 1: Take some Backups

First take some backups:

- Make a copy of `~/.var/app/net.retrodeck.retrodeck/` folder and name it `old.net.retrodeck.retrodeck`
- Make a full back up or partial backups of the retrodeck folder normally under `~/retrodeck` or sdcard/other drive.

**Notes on the retrodeck folder back up:**

Generally, very few things would target the roms folder, but the other folders could be targeted for various scripts. Our recommendation would be to back up the full `/retrodeck` folder, but as a tester you can decide how much you want to risk.

Disclamer: The RetroDECK Team also had never had any major data loss so far and we do cooker updates almost daily.



## Step 2: Download the Cooker

- Download the latest cooker release from: https://github.com/XargonWan/RetroDECK-cooker/releases/latest to your download folder
- Make a note of the version id, is a randomly generated word written like cooker-0.8.0b-**HelloWorld**, in this example it's "HelloWorld"

## Step 3: Terminal

Open the terminal and type:

- `flatpak remove net.retrodeck.retrodeck` and press (y) yes to remove RetroDECK.
- `flatpak install --user --bundle --noninteractive -y "~/Downloads/RetroDECK-cooker.flatpak"` this will install RetroDECK Cooker.
- After the installation is complete type: `flatpak run --command=sh net.retrodeck.retrodeck` followed by `retrodeck`.
- The upgrade process will now start.

**IMPORTANT:**

please check if you see the message `"In version 0.8.0b, the following changes were made that required config file updates/reset or other changes to the filesystem:"` as this means that the post update is running, this is crucial for RetroDECK's upgrade.

## Step 4: Upgrade

**IMPORTANT:**

Under NO circumstances press the `Full Wipe and Fresh Install` button. That is not to be confused with Configurators `Reset RetroDECK` option, but this a `Nuke Everything` option. Ut will remove all of RetroDECK including all ROMS/BIOS/Downloaded Media and everything else you have forever.

**Upgrading:**

- Press the `Upgrade` button and keep the installation moving until all the steps are complete.
- RetroDECK will then launch, quit it and save all the data from the terminal in a text file (in case we need to analyze it).

## Step 5: Start testing

On the SteamOS return to `Game Mode` for this step.

Feel free to test all the new features of 0.8.0b and report any issues.

- Configurator
- External Controller Profiles
- Emulators / Engines

All logs will be saved in the new `retrodeck/logs` folder

Thank you! ❤️
