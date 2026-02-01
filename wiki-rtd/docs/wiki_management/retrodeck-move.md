# Moving RetroDECK to a New Device

<img src="../../../wiki_icons/pixelitos/system-switch-user.png" width="75">

## Overview

RetroDECK consists of two primary directories:

- **`retrodeck/`**

Contains all user-generated content (ROMs, BIOS, saves, screenshots, scraped data, etc.).

*This is the directory you almost always want to migrate.*

- **`~/.var/app/net.retrodeck.retrodeck`**

Contains the Flatpak core, components, and configuration files.
  
*Migration is usually unnecessary and may cause configuration issues.*

---

## What Should You Move?

### Recommended: Move Only `retrodeck/`

**Upsides:**
- Fresh install with clean configs  
- All user content preserved  
- Minimal risk of conflicts

**Downsides:**  
- Custom emulator settings must be recreated

---

### Not Recommended: Move Both Directories

**Upsides:**
- No first-time setup required  
- All emulator settings preserved

**Downsides:**
- Risk of version/config conflicts  
- Controller profiles and some items may require reinstalling  
- Must match RetroDECK versions exactly

---

## Prerequisites

- The old device must be on the **latest RetroDECK version** and launched at least once.
- Ensure adequate battery or keep the device **plugged in** during transfer.
- **New SD cards must be formatted to EXT4** before use.

---

## Ultra-Quick Guide

1. Copy the **`retrodeck/`** directory to the new device.
2. Install RetroDECK on the new device.
3. During first-time setup, point RetroDECK to the transferred `retrodeck/` directory.

---

## Quick Guide: Steam Deck

1. Switch to **Desktop Mode**:  
   `Steam Button → Power → Switch to Desktop`
2. Back up the `retrodeck/` folder.
3. Install RetroDECK via **Discover** on the new Steam Deck.
4. **Do not launch** RetroDECK yet.
5. Copy the `retrodeck/` backup to the desired location.
6. Launch RetroDECK and select the correct storage option (internal, SD card, or custom).

**Read more:**

[Steam Deck: Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)

---

## Quick Guide: Linux Desktop

1. Back up the `retrodeck/` folder.
2. Install RetroDECK from **Flathub** on the new system.
3. **Do not launch** RetroDECK yet.
4. Restore the `retrodeck/` folder to your chosen location.
5. Launch RetroDECK and select the correct storage option (internal or custom).


**Read more:**

[Linux Desktop - Installation and Updates](../wiki_devices/linux_desktop/linux-install.md)

---

## Full Guide: Steam Deck - Move Only `retrodeck/` (Recommended)

### 1. Back Up Your Files

1. Follow the prerequisites above.
2. Enter **Desktop Mode**.
3. Open **Dolphin File Manager**.
4. Navigate to your `retrodeck/` installation (contains *bios*, *roms*, *saves*, etc.).
5. Copy the entire folder to a transfer medium (USB drive, SD card, NAS, SFTP, Warpinator, etc.).

### 2. Install RetroDECK on the New Steam Deck

Follow the installation guide:

[Steam Deck - Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)

### 3. Restore Your Files

Place the backed-up `retrodeck/` directory in the desired location.  
Launching RetroDECK will automatically detect your content.

---

## Full Guide: Steam Deck - Move:`retrodeck/` + `~/.var/app/net.retrodeck.retrodeck` (Advanced / Not Recommended)

### 1. Back Up the Required Directories

**Back up `retrodeck/`**

Follow the same steps as in the recommended guide.

**Back up `~/.var/app/net.retrodeck.retrodeck`**

1. Open your **home** directory.
2. Enable hidden files (`Ctrl+H` or the hamburger menu).
3. Navigate to `~/.var/app/`.
4. Copy the entire `net.retrodeck.retrodeck` folder to your transfer medium.

### 2. Install RetroDECK on the New Steam Deck

Install via Discover **but do not launch** RetroDECK.  

**Read more:**

[Steam Deck - Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)

### 3. Restore Your Backups

Replace both:

- `retrodeck/`
- `~/.var/app/net.retrodeck.retrodeck`

Overwrite when prompted.
Launch RetroDECK; all settings and content should be restored.

**Reminder:** Reinstall official controller profiles and other optional components via the configurator.

---
