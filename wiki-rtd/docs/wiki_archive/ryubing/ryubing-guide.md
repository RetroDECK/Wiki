# Ryubing - General Guide

<img src="../../../wiki_images/logos/ryubing-logo.webp" width="100">

Ryubing was a Switch emulator.

**Note: Archived Emulator**

As of RetroDECK `0.10.4b` Ryubing was removed from RetroDECK and and Switch emulation as a whole.

It was installed under: 

**User:** `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/ryubing`

**System:** `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/ryubing`

---

### ⚠️  Bleeding-Edge Emulator ⚠️ 

This emulator is under rapid development and considered **bleeding edge**. It may be unstable, may not operate at maximum performance across all hardware configurations, may lack certain standard features available in other components, and may be incompatible with portions of the supported game library.

---

### Ryubing Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Ryubing - Gitlab | [Link](https://git.ryujinx.app/ryubing) |
| Ryubing - Github | [Link](https://github.com/Ryubing/) |
| Ryubing - Wiki | [Link](https://git.ryujinx.app/groups/ryubing/-/wikis/home) |

---

## Questions

Here are some common questions.

###  Why does the Ryubing component still display Ryujinx when opened?

Ryubing is a fork of the original emulator Ryujinx. The project has been rebranded under the name Ryubing for a new identity, but the underlying executable still retains the original name Ryujinx (this might change in the future).

---

### GUI Elements in the interface may not be clickable on small screens

On devices with small displays, certain GUI elements in the interface may be difficult to select. Refer to the [RetroDECK: Known Issues](../../wiki_general/known-issues.md) page for a solution.

---

##  ⚠️ Important Warnings and Tips! - Read them all!  ⚠️

Please read the following to avoid crashes and issues.

---

###  Do not mix and match firmware versions and keys  

Ensure that the firmware version matches the version of the keys and `.nca` files you are using. It is recommended to use firmware and keys from your own device, not from games.

Mixing different versions can lead to **crashes / black screens / fail to start**. 

---

### Reinstall Firmware and Keys when copying from another Switch Emulator 

Please reinstall the firmware and keys using the Ryubing menu rather than copying them directly. This ensures that all keys and firmware are validated through Ryubing. Read the guides below for detailed instructions.

---

###  Install Firmware ONLY through the RetroDECK Configurator 

Games cannot be launched from **ES-DE** without firmware and keys installed! Attempting to do so will display a broken Ryubing window.

- Do **not** try to install firmware from that broken window it can lead to **crashes / black screens / fail to start**.
- The **only** supported method is to use the **RetroDECK Configurator**. Follow the instructions below.

---

###  Controllers outside of Steam / Game Mode

When using Ryubing, only a single default controller is mapped automatically.  
If you run RetroDECK outside of **Steam** / **Game Mode**, you must manually assign your controller because RetroDECK defaults to detecting devices via **Steam Input** and if that is not present you need to do it yourself.

1. Open **RetroDECK**.
2. Navigate to **Options → Settings → Input**.
3. Locate **Input Device**.
4. Select your physical controller from the dropdown menu.

**Note:** Some games may **crash / black screen / fail to start** if a controller is not detected. Assigning the correct input device prevents these issues.

---

## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .xci        | Nintendo Switch Cartridge Image |
| .nsp        | Nintendo Submission Package **(Recommended)** |
| .nca        | Nintendo Content Archive |
| .nso        | Nintendo Switch Executable |
| .nro        | Nintendo Switch Homebrew |

---


## Does Ryubing require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, Ryubing requires `prod.keys`, `title.keys`, and `.nca` files for proper operation.

### How-to: Install the firmware

You can install it via the **RetroDECK Configurator**:

For devices with a Game Mode, such as the Steam Deck, ROG Ally, or similar handheld PCs. We recommend performing this in Desktop Mode.

1. Open RetroDECK Configurator
2. Navigate to `Open Emulator` → `Ryubing`.
3. Select  `Tools` → `Install Firmware` → `Install Firmware (.XCI or .ZIP)` or `Install Firmware (Folder)`.

Once installed the firmware can be found in the following directory:

- `~/retrodeck/bios/switch/firmware/`

You can also try manually placing the firmware in the directory above. However, we recommend installing them via the menus, as this will flag any non‑working firmware.

### How-to: Install the Key Files

1. Open RetroDECK Configurator
2. Navigate to `Open Emulator` → `Ryubing`.
3. Select  `Tools` → `Install keys` → `Install Keys (.KEYS)` or `Install Keys (Folder)`  .

Once installed the keys can be found in the following directory:

- `~/retrodeck/bios/switch/keys`

You can also try manually placing the keys in the directory above. However, we recommend installing them via the menus, as this will flag any non‑working keys.

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type           | Directory                                                                                                   | Comment                                   |
|:--------------:|:------------------------------------------------------------------------------------------------------------|:------------------------------------------|
| Alternate Keys | `~/.var/app/net.retrodeck.retrodeck/config/ryubing/system/`                                                  |                                           |
| BIOS           | `retrodeck/bios/switch/`                                                                                    | Contains the `firmware`, `keys` folders   |
| Config         | `~/.var/app/net.retrodeck.retrodeck/config/ryubing/`                                                        | Contains most of ryubing internal folders |
| Logs           | `retrodeck/logs/switch/Ryubing`                                                                              | Ryujinx/Logs                              |
| Mods           | `retrodeck/mods/switch/Ryubing/contents`                                                                    | Ryujinx/mods/contents/                   |
| Saves          | `retrodeck/saves/switch/ryujinx/`    | Contains the `system`, `user` folders from:     `~/.var/app/net.retrodeck.retrodeck/config/ryubing/bis/user/save/`   `~/.var/app/net.retrodeck.retrodeck/config/ryubing/bis/system/save/`   |


---

## Adding Game Patches

From within ryubing `Right Click` on a game and select `Manage Title Updates` and then navigate to the update files you would like to install and press `Save`.

---

## Adding DLC

From within ryubing `Right Click` on a game and select `Manage DLC` and then navigate to the update files you would like to install and press `Save`.

---

## Adding Mods

From within ryubing `Right Click` on a game and select `Open Mods Directory` and put the mods you need in it's correct folder then go back to enable via the interface.

The current mapping for the mods directory is:

`retrodeck/mods/switch/Ryubing/contents` 

You can also manged the mods by `Right Click` on a game and select `Manage Mods`

---
