# Ryubing - General Guide

<img src="../../../wiki_images/logos/ryubing-logo.webp" width="100">

Ryubing is Switch emulator. 

---

### Ryubing Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Ryubing - Gitlab | [Link](https://git.ryujinx.app/ryubing) |
| Ryubing - Github | [Link](https://github.com/Ryubing/) |
| Ryubing - Wiki | [Link](https://git.ryujinx.app/groups/ryubing/-/wikis/home) |


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


### Important: Do not mix and match firmware versions and keys

Ensure that the firmware version matches the version of the keys and `.nca` files you are using. Mixing different versions can lead to crashes and black screens.

It is recommended to use firmware and keys from your own device, not from games.

### Where to Place the Key Files

The key files (`prod.keys`, `title.keys`) should be placed in one of the following locations:

- `~/retrodeck/bios/switch/keys`
- `~/.var/app/net.retrodeck.retrodeck/config/ryubing/system/`


### How-to: Install the firmware

The firmware can be placed in the following directory:

- `~/retrodeck/bios/switch/firmware/`

Alternatively, you can install it via the **RetroDECK Configurator**:

1. Open RetroDECK Configurator
2. Navigate to `Open Emulator` → `Ryubing`.
3. Select  `Tools` → `Install Firmware` → `Install from XCI or ZIP`.

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
| Saves          | `retrodeck/saves/switch/ryujinx/` or `~/.var/app/net.retrodeck.retrodeck/config/ryubing/bis/user/save/`     | Contains the `nand`, `sdcard` folders     |

  
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
