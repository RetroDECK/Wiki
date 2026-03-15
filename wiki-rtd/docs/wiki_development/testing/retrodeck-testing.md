# RetroDECK Testing Guide

**⚠️ Absolutely DO NOT install the test builds without following this guide ⚠️**

Skipping steps is known as the *“Rowan Skye Method”* and it **will break things**.
Please read carefully all information on this page.

---


## Build Types Overview: Development & Test Builds

| Build Type | Description |
|------------|-------------|
| **Countertop Builds** | Development builds for other developers. |
| **Cooker Builds** | Bleeding-edge development builds for early testers with new features. |
| **Cooker Final Builds** | Last stage of cooker before Release Candidate. |
| **Epicure Builds** | Stable based testing builds published on Flathub-Beta with bleeding edge components. |

### Countertop Builds

Development builds intended for other developers.

- Based on the current Cooker release.  
- Includes only ES-DE, development tools, and the RetroDECK framework, no additional components.  
- This is still a **testing branch** and backup steps still apply.

### Cooker Builds

Cooker builds are published on the cooker Git release channel.  They are intended for testers who want early access to new features and are willing to provide feedback and bug reports. These builds are **not recommended for regular use**, as they **will** destabilize your RetroDECK experience.

- Represent RetroDECKs bleeding-edge development builds.
- Include the latest features and experimental changes.
- Intended exclusively for early testing and many changes may never reach a stable release.

### Cooker Final Builds

Cooker Final builds represent the last stage of the cooker phase before transitioning to Release Candidate status.

- Feature set and scope are locked.
- Include all features and changes intended for the upcoming release.
- No new features are added beyond this point, only stabilization and fixes.

### Epicure Builds

Test builds published on **Flathub-Beta**.

- Based on the current stable release.  
- Includes unvetted, bleeding-edge component versions instead of fully vetted stable components.  
- More stable than **Cooker builds**, but may contain breaking bugs from upstream. There have been cases where a bleeding-edge component **corrupted or deleted** games, save files, or other data**.  
- This is still a **testing branch** and backup steps still apply.

## Build Types Overview: Pre-Release & Stable Builds

| Build Type | Description |
|------------|-------------|
| **Release Candidate (RC) Builds** | Final testing builds before master release. |
| **Master Release** | Completed builds pending distribution to flathub. |
| **Stable Release** | Fully vetted builds published on Flathub. |

### Release Candidate (RC) Builds

Release Candidate (RC) builds are published on the main Git release channel and undergo final testing before being promoted to a master release.

- Serve as a transition phase between cooker builds and official releases.
- May still contain minor bugs that require resolution.

### Master Release

Master releases are published on the main Git release channel and represent completed builds pending distribution.

- Considered fully tested and ready for publication on Flathub.

### Stable Release

Only builds published on **Flathub** are considered stable releases.

- Fully vetted, stable, and suitable for end users.
- Represent the final, publicly supported version of the software.

---


## Tips

###  Use our bash aliases/functions

Use the RetroDECK `bashrc` aliases/functions instead of typing full commands manually.
Copy the alias definitions from:  [RetroDECK: bashrc Functions and Aliases](../general/bashrc-alias.md) into your `~/.bashrc`.

---

### Simulating the post_update between versions

If you want to trigger the upgrade script again between a version upgrade to try something out.

You can do it via CLI (recommend) or Manually by editing the CFG file.

**CLI**

Do the following command

`flatpak run net.retrodeck.retrodeck --test-upgrade <version>`

**Example:**

`flatpak run net.retrodeck.retrodeck --test-upgrade 0.8.0b`

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.

**Manually via CFG**

 Go to and edit the `.cfg` file:

`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/retrodeck.cfg`

Find the `version=` value and change it to an older versions value and press save.

Next time you start RetroDECK the post-update should trigger again.

**Example:**

Edit the `.cfg` so the value is `version=0.8.0b`.

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.

---

## Setup the Testing Environment: Take Your Backups (Critical!)

| What you should back up | Where|
|-------------------------|--------------|
| **RetroDECK Flatpak Persistent Data**  | `~/.var/app/net.retrodeck.retrodeck/` (settings, configs, internal files)  |
| **RetroDECK Userdata** |  `~/retrodeck`  (or SD-card/external drive path)  |

Creating backups is **highly recommended** as development bleeding edge Cooker builds may overwrite, add or change existing data.

Because the `retrodeck/` and `/var` directories are shared across versions and branches, **regular backups are recommended**, especially when testing beta or development builds that may modify configuration or data formats in both directories. Jumping from a bleeding-edge development build back to stable is **not recommended**.

Regardless of which testing build you use, taking backups is always recommended.

If something goes wrong and you **do not** have backups, your ROMs, BIOS files, save data, and configuration files may be **permanently lost**.

The RetroDECK Team is not responsible for any data loss.

---

## Release Candidate (RC) Testing 

- Grab the latest pre-release from: [RetroDECK Main: Latest](https://github.com/RetroDECK/RetroDECK/releases/latest) page and place it in `~/Downloads`.
- Note the `<version_id>` in the filename, e.g. should be the same as the version that is going out to flathub and should contain a pre-release tag and a name ends with RC, example: 0.10.0b-RC1.


---

### Upgrading RetroDECK from Stable (Flathub) to RC

1. **Recommended Backups:** Of `~/.var/app/net.retrodeck.retrodeck/` and `~/retrodeck` and put somewhere safe (see above). 
2. **Uninstall RetroDECK:** Open your app store and uninstall RetroDECK. If prompted, **do not** remove configuration files or additional data.
3. **Install:** Install your downloaded file with `flatpak install RetroDECK.flatpak`.
4. **Start RetroDECK with:**  `flatpak run net.retrodeck.retrodeck --debug` this will ensure that any errors that are popping up during the upgrade will be seen in the terminal window. 
5. **Upgrade:** Press the `Upgrade` button and keep the installation moving until all the steps are complete and RetroDECK will launch.

---

### Start testing

Now feel free to test all the new features of the update and report any issues, check the patch notes for what is new.
All logs will be saved in the new `retrodeck/logs` folder

Thank you! ❤️

---

## Cooker Testing

- Grab the latest cooker release from the [RetroDECK Cooker: Latest](https://github.com/RetroDECK/Cooker/releases/latest) page and place it in `~/Downloads`.
- Note the `<version_id>` in the filename: `RetroDECK-Cooker‑X.X.Xb‑HelloWorld` → `HelloWorld`.


---

### Open the Terminal

**Navigate to the download location:**

Normally under: `cd ~/Downloads`

**Remove existing RetroDECK installations:**

`flatpak remove net.retrodeck.retrodeck -y`  # repeat if multiple versions exist or choose the option to remove all. 

**Install the Cooker:**

`flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak`


### Choose Your Path

 **What does the Team Recommended?** 
 
 Check the RetroDECK team's latest instructions for the recommended path on the current cooker releases on their socials.

1. **Fresh Install** - Start from scratch.
2. **Upgrade** - Keep your existing setup and update.

---

### Path 1: Fresh install

To simulate a fresh install

1. **Recommended Backups:** Of `~/.var/app/net.retrodeck.retrodeck/` and `~/retrodeck` and put somewhere safe (see above). 
2. **Rename RetroDECK data:** `~/.var/app/net.retrodeck.retrodeck/` to `old.net.retrodeck.retrodeck`.
3. **Rename RetroDECK folder:** `~/retrodeck` to  `~/oldretrodeck`.
4. **Start RetroDECK with:**  `flatpak run net.retrodeck.retrodeck --debug` this will ensure that any errors that are popping up on first installation will be seen in the terminal window. 

---

### Path 2: Upgrading from Older Cooker or Main Versions

🛑 **EXTREMELY IMPORTANT WARNING** 🛑

**Do NOT press the ☢️ Delete Everything & Fresh Install ☢️ button.**

This is *not* the same as the Configurator’s **Reset RetroDECK**.
The Wipe button is a **total nuclear reset** ROMs, BIOS, artwork, saves, configs… **everything will be deleted forever.**

You will get several warnings, but **do not rely on them**. 
Avoid the button entirely unless you have a strong valid reason to press it.

#### Upgrading RetroDECK

1. **Recommended Backups:** Of  `~/.var/app/net.retrodeck.retrodeck/` and  `~/retrodeck` and put somewhere safe. 
2. **Start RetroDECK with:**  `flatpak run net.retrodeck.retrodeck --debug` this will ensure that any errors that are popping up during the upgrade will be seen in the terminal window. 
3. **Upgrade:** Press the `Upgrade` button and keep the installation moving until all the steps are complete and RetroDECK will launch.

---

### Start testing

Now feel free to test all the new features of the update and report any issues, check the patch notes for what is new.
All logs will be saved in the new `retrodeck/logs` folder

Thank you! ❤️

---