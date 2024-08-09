# RetroDECK Cooker Guide: Start Testing Builds

If you are on `SteamOS` like on the Steam Deck make sure you are in `Desktop Mode` before you begin.

🛑 **Do install cooker without following this guide** 🛑

We do not recommend blindly installing the Cooker without reading **THIS GUIDE** and **FOLLOW THE INSTRUCTIONS** written here.

To just install RetroDECK Cooker and hope for the best is now known as the `Rowan Skye Method`.

Because of mistakes that were made from a chaotic blue draconic wolfkin tester living on the edge with nothing to lose.

## Step 1: Take some Backups

First take some backups:

- Make a copy of `~/.var/app/net.retrodeck.retrodeck/` folder and name it `old.net.retrodeck.retrodeck`
- Make a full back up or partial backups of the retrodeck folder normally under `~/retrodeck` or sdcard/other drive.

**On retrodeck folder backups:**

Generally, very few things would target the roms folder, but the other folders could be targeted for various scripts. Our recommendation would be to back up the full `~/retrodeck` folder, but as a tester you can decide how much you want to risk.

**Disclamer:**

The RetroDECK Team also has never had any major data loss so far and we do Cooker updates almost daily.

## Step 2: Download the Cooker

- Download the latest Cooker release from: [RetroDECK Cooker: Latest](https://github.com/XargonWan/RetroDECK-cooker/releases/latest) to your download folder.
- Make a note of the `<version_id>` that is a randomly generated word, example: `cooker-X.X.Xb-HelloWorld`, in this example it's `HelloWorld`.

## Step 3: Terminal

You will need to open the terminal for this step.

### Remove and Install

1. Open the terminal window where you have downloaded the `RetroDECK-cooker.flatpak` file, normally it's under `~/Downloads/RetroDECK-cooker.flatpak`. **Note:** The Downloads folder can have a different name depending on your language settings.

2. Type `flatpak remove net.retrodeck.retrodeck -y` to remove RetroDECK. **Note:** If you have more than one version installed for some reason choose to remove all versions.

3. `flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak` this will install RetroDECK Cooker.

## Step 4: Upgrade

🛑 **IMPORTANT WARNING:** 🛑

Under **NO** circumstances press the `Full Wipe and Fresh Install` button.

That is **NOT** to be confused with Configurators `Reset RetroDECK` option.

This in fact a `Nuke Everything` option for reseting everything to a clean slate. It will remove all of RetroDECK including all ROMS/BIOS/Downloaded Media and everything else you have in RetroDECK's folders...forever.

You will get several warnings if you accidentally press it.

### Upgrading RetroDECK

- After the installation is complete type:  `flatpak run --command=sh net.retrodeck.retrodeck` followed by `retrodeck`.
- Press the `Upgrade` button and keep the installation moving until all the steps are complete and RetroDECK will launch.
- Quit RetroDECK again and save all the output from the terminal into a text file.

## Step 5: Start testing

If you are on `SteamOS` like on the Steam Deck return to `Game Mode` for this step.

If you are on `Linux Desktop` make sure you launch RetroDECK via Steam, else Steam Input won't work.

Now feel free to test all the new features of the update and report any issues, check the patch notes for what is new.

All logs will be saved in the new `retrodeck/logs` folder

Thank you! ❤️

## T.I.P: Trigger post-update manually

If you want to trigger the upgrade script again between a version upgrade to try something out.

You can do it via CLI (recommend) or Manually by editing the CFG file

### CLI

Do the following command

`flatpak run net.retrodeck.retrodeck --test-upgrade <version>`

**Example:**

`flatpak run net.retrodeck.retrodeck --test-upgrade 0.8.0b`

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.


### Manually via CFG

 Go to and edit the `.cfg` file:

`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/retrodeck.cfg`

Find the `version=` value and change it to an older versions value and press save.

Next time you start RetroDECK the post-update should trigger again.

**Example:**

Edit the `.cfg` so the value is `version=0.8.0b`.

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.
