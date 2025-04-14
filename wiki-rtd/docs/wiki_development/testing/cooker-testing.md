# RetroDECK Cooker Guide: Start Testing Builds

If you are using `SteamOS` on the Steam Deck, make sure you are in `Desktop Mode` before you begin.

🛑 **Do not install the Cooker without following this guide** 🛑

We strongly recommend reading **THIS GUIDE** and **FOLLOWING THESE INSTRUCTIONS** carefully. Simply installing the RetroDECK Cooker without following the guide is now known as the Rowan Skye Method.


### Combined Commands - Cheat Sheet

**Remove Installed and Install Downloaded Cooker:** 

```
flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak
```

**Remove Installed and Install Downloaded Pre-Release:** 

```
flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak
```

**Remove Installed and Install Flathub Stable:** 

```
flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --noninteractive -y net.retrodeck.retrodeck
```
**Simulating the post_update between versions**

```
flatpak run net.retrodeck.retrodeck --test-upgrade <version>
```


## Step 1: Take some Backups


**First, take some backups:**

- Make a copy of the `~/.var/app/net.retrodeck.retrodeck/` folder and name it old.net.retrodeck.retrodeck.
- Make a full backup or partial backups of the RetroDECK folder, usually found under `~/retrodeck` or on an SD card/other drive.

**On RetroDECK folder backups:**

Generally, very few things target the ROMs folder, but other folders could be targeted by various scripts. We recommend backing up the entire `~/retrodeck` folder, but as a tester, you can decide how much you want to risk.

**Disclaimer:**

The RetroDECK Team has never experienced any major data loss so far, and we perform Cooker updates almost daily.


## Step 2: Download the Cooker


- Download the latest Cooker release from: [RetroDECK Cooker: Latest](https://github.com/XargonWan/RetroDECK-cooker/releases/latest) to your download folder.
- Make a note of the `<version_id>`, which is a randomly generated word. For example, in `RetroDECK-Cooker-X.X.Xb-HelloWorld`, the `<version_id>` is `HelloWorld`.

**Note on Pre-Releases:**

If you are testing a Pre-Release that is published on `Main`. 

Download the latest pre-release from: [RetroDECK: Latest](https://github.com/RetroDECK/RetroDECK/releases/)to your download folder.

## Step 3: Terminal

You will need to open the terminal for this step.

### Remove and Install

1. Open the terminal window where you have downloaded the `RetroDECK-cooker.flatpak` file, normally it's under `~/Downloads/RetroDECK-cooker.flatpak`. **Note:** The Downloads folder can have a different name depending on your language settings.

2. Type `flatpak remove net.retrodeck.retrodeck -y` to remove RetroDECK. **Note:** If you have more than one version installed for some reason choose to remove all versions.

3. `flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak` this will install RetroDECK Cooker.

**Note on Pre-Releases:**

If you are testing a pre-release and the build have left cooker to main the name is different of the flatpak file:

`flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak` 


## Step 4: Upgrade

🛑 **IMPORTANT WARNING:** 🛑

Under **NO** circumstances press the `Full Wipe and Fresh Install` button.

That is **NOT** to be confused with Configurators `Reset RetroDECK` option.

This in fact a `Nuke Everything` option for reseting everything to a clean slate. It will remove all of RetroDECK including all ROMS/BIOS/Downloaded Media and everything else you have in RetroDECK's folders...forever.

You will get several warnings if you accidentally press it.

### Upgrading RetroDECK

- After the installation is complete type:  `flatpak run net.retrodeck.retrodeck --debug`.
- Press the `Upgrade` button and keep the installation moving until all the steps are complete and RetroDECK will launch.
- Quit RetroDECK again and save all the output from the terminal into a text file.

## Step 5: Start testing

If you are on `SteamOS` like on the Steam Deck return to `Game Mode` for this step.

If you are on `Linux Desktop` make sure you launch RetroDECK via Steam, else Steam Input won't work.

Now feel free to test all the new features of the update and report any issues, check the patch notes for what is new.

All logs will be saved in the new `retrodeck/logs` folder

Thank you! ❤️

## Simulating the post_update between versions

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
