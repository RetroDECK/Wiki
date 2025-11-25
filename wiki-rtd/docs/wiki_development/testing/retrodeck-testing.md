# RetroDECK Testing Guide

---

## Build Types Overview

### Cooker Builds  

**⚠️ Absolutely DO NOT install the Cooker test builds without following this guide ⚠️**

Skipping steps is known as the *“Rowan Skye Method”* and it **will break things**.
Please read carefully all information on this page.

**Cooker Builds:** 

Are designed for testers who want early access to new features and can report bugs. Not recommended for regular use, these builds **will** destabilize your RetroDeck experience.

- Include the latest features and experimental changes.
- Intended for early testing; many may never reach a stable release.

### Pre‑Release Builds  

Builds published on the main Git release channel that still require final testing.

- Serve as a bridge between cooker and official releases.
- May undergo last‑minute QA before they’re pushed to Flathub.

### Stable Releases  

Only builds that are published on **Flathub** are considered full stable releases.

- Fully vetted, stable, and ready for end‑users.
- Represent the final, public version of the software.

---

### 📌 Quick Tip: Use our bash aliases/functions

Use the RetroDECK `bashrc` aliases/functions instead of typing full commands manually.
Copy the alias definitions from:  [RetroDECK: bashrc Functions and Aliases](../general/bashrc-alias.md) into your `~/.bashrc`.

---

### 📌 Quick Tip: Simulating the post_update between versions

If you want to trigger the upgrade script again between a version upgrade to try something out.

You can do it via CLI (recommend) or Manually by editing the CFG file

#### CLI

Do the following command

`flatpak run net.retrodeck.retrodeck --test-upgrade <version>`

**Example:**

`flatpak run net.retrodeck.retrodeck --test-upgrade 0.8.0b`

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.


#### Manually via CFG

 Go to and edit the `.cfg` file:

`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/retrodeck.cfg`

Find the `version=` value and change it to an older versions value and press save.

Next time you start RetroDECK the post-update should trigger again.

**Example:**

Edit the `.cfg` so the value is `version=0.8.0b`.

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.

---

## Setup the Testing Environment 

### Take Your Backups (Critical!)

Backups are **not optional**. The Cooker can overwrite or break existing data. 

If something goes wrong and you **did not** take backups, your ROMs, BIOS, saves, and configurations may be **lost permanently**.

| What you should back up | Where|
|-------------------------|--------------|
| **RetroDECK data** (settings, configs, internal files) | `~/.var/app/net.retrodeck.retrodeck/` |
| **RetroDECK folder** (main folder)| ( `~/retrodeck` or SD-card/external drive path)  |

**To be extra safe:** 

Back up your entire `~/retrodeck` folder. 

Even if the Cooker normally doesn't touch everything, **scripts can modify or remove files**, and once they’re gone...they’re gone.

The RetroDECK Team is not responsible for you data-loss. 

---

### Download the Cooker or Pre-Release

- Grab the latest cooker release from the [RetroDECK Cooker: Latest](https://github.com/RetroDECK/Cooker/releases/latest) page and place it in `~/Downloads`.
- Note the `<version_id>` in the filename, e.g. `RetroDECK-Cooker‑X.X.Xb‑HelloWorld` → `HelloWorld`.

**Note on Pre-Releases:**

- Grab the latest pre-release from: [RetroDECK Main: Latest](https://github.com/RetroDECK/RetroDECK/releases/latest) page and place it in `~/Downloads`.
- Note the `<version_id>` in the filename, e.g. should be the same as the version that is going out to flathub aka: 0.10.b and might contain a pre-release tag.

---

### Open the Terminal

**Navigate to the download location:**

Normally under: `cd ~/Downloads`

**Remove existing RetroDECK installations:**

`flatpak remove net.retrodeck.retrodeck -y`  # repeat if multiple versions exist

**Install the Cooker:**

`flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak`

**Note on Pre-Releases:**

If you are testing a pre-release and the build have left cooker to main the name is different of the flatpak file:

`flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak` 

### Choose Your Path

 **What does the Team Recommended?** 
 
 Check the RetroDECK team's latest instructions for the recommended path on the current cooker releases on their socials.

1. **Fresh Install** – Start from scratch.
2. **Upgrade** – Keep your existing setup and update.

---

### Path 1: Fresh install

To simulate a fresh install

1. **Optional but Recommended Backups:** Of  `~/.var/app/net.retrodeck.retrodeck/` and  `~/retrodeck` and put somewhere safe.
2. **Rename RetroDECK data:** `~/.var/app/net.retrodeck.retrodeck/` to `old.net.retrodeck.retrodeck`.
2. **Rename RetroDECK folder:** `~/retrodeck` to  `~/oldretrodeck`.

After that start RetroDECK first install with:

`flatpak run net.retrodeck.retrodeck --debug` this will ensure that any errors that are popping up on first installation will be seen in the terminal window. 

---

### Path 2: Upgrading from Older Cooker or Main Versions

🛑 **EXTREMELY IMPORTANT WARNING** 🛑

**Do NOT press the Full Wipe and Fresh Install button.**

This is *not* the same as the Configurator’s **Reset RetroDECK**.

The Wipe button is a **total nuclear reset** ROMs, BIOS, artwork, saves, configs… **everything will be deleted forever.**

You will get several warnings, but **do not rely on them**. Avoid the button entirely unless you have a strong valid reason to press it.

#### Upgrading RetroDECK

- Start RetroDECK with:  `flatpak run net.retrodeck.retrodeck --debug`.
- Press the `Upgrade` button and keep the installation moving until all the steps are complete and RetroDECK will launch.
- Quit RetroDECK again and save all the output from the terminal into a text file.

---

## Start testing


If you are on `SteamOS` like on the Steam Deck return to `Game Mode` for this step.
If you are on `Linux Desktop` make sure you launch RetroDECK via Steam, else Steam Input won't work.

Now feel free to test all the new features of the update and report any issues, check the patch notes for what is new.
All logs will be saved in the new `retrodeck/logs` folder

Thank you! ❤️


