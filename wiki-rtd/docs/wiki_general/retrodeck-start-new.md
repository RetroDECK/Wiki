# How-to: Start Using RetroDECK NEW MERGED WIP

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="100">

## New to RetroDECK?

RetroDECK is an retro gaming platform.

**Read more:**

[**What is RetroDECK?**](../wiki_about/what-is-retrodeck.md)

---

## Quick Start Guide

**Note:** It's recommended to add and launch RetroDECK via Steam to utilize Steam Input for external controllers.

### **Step 0 — Prerequisites**

<img src="../../wiki_icons/pixelitos/emblem-default.png" width="50">

Before installing, make sure you have everything RetroDECK needs to function correctly.

#### General Prerequisites

**A supported device**, such as:

  - Handheld gaming PCs (e.g., Steam Deck).
  - Full Linux desktop.
  - Linux HTPC setup.
  - Linux-based PC consoles (e.g., Steam Machine).
  
**Required BIOS & firmware (only for systems that need them)**  

  - Not all platforms require firmware and/or BIOS.
  - When they do, it must come from **your own legally-obtained sources** (e.g., extracted from your original hardware, or purchased legally such as PICO-8).
  
**Your own game backups, purchased titles, native ports and open-source games**

  - RetroDECK supports **purchased games**, **open-source titles**, **your own backups** and **native ports**, depending on the system.

#### Linux Desktop (Only) Prerequisites
  
**Flatpak Support**

Ensure Flatpak is installed on your Linux system. Follow the official guide for your distribution: 
[Flatpak Setup Guide](https://flatpak.org/setup/)

**Steam: steam-devices Package**

> **Note:** Not required for SteamOS-based devices (e.g., Steam Deck) or gaming distributions like Bazzite, Chimera, Nobara, etc.

- The `steam-devices` package is usually included with Steam on most distributions.  
- Required for Steam to detect controllers.  
- Steam will warn you if it is missing.  
- Install via your distribution's package manager if needed.  

**Enable Steam Input for Controllers**

> **Note:** Not required for SteamOS-based devices (e.g., Steam Deck) or gaming distributions like Bazzite, Chimera, Nobara, etc.

1. Open Steam and click the **Steam** menu.  
2. Navigate to **Settings → Controller**.  
3. Enable Steam Input for all controllers: Xbox, PlayStation, Switch Pro, Generic.  
4. Close Settings.

####  **T.I.P Game Mode on Linux PCs**

Steam Deck's **Game Mode** can be used on some Linux distributions. It helps:

- Mitigate Input issues.
- Provide the best RetroDECK experience.
- Allow seamless Steam controller support.

Here is a list of some distributions that support Game Mode:

**Bazzite**

[Bazzite Webpage](https://bazzite.gg/)

[Bazzite: Steam Game Mode](https://universal-blue.discourse.group/t/steam-gaming-mode-overview-for-handheld-htpc-images/)

**Chimera OS**

[ChimeraOS Webpage](https://chimeraos.org/)

[ChimeraOS Wiki](https://github.com/ChimeraOS/chimeraos/wiki)

**Nobara**

[Nobara Webpage](https://nobaraproject.org/download-nobara/)

[Nobara Wiki](https://wiki.nobaraproject.org)

---

### **Step 1 — Installation & First Launch**

#### Steam Deck (Desktop Mode)

<img src="../../wiki_icons/pixelitos/steam.png" width="50"> 

**Switch to Desktop Mode:** 

 `Steam button` → `Power` → `Switch to Desktop`

**Install RetroDECK via Discover.**

Open **Discover**.

Search for **RetroDECK** and click **Install**.

Launch RetroDECK from: Discover, or `KDE Menu` → `Games` → `RetroDECK`

**Launch RetroDECK for the first time** 

After installation, launch RetroDECK from `Discover` or the `KDE Program Menu` under `Games` → `RetroDECK`


#### Linux Desktop 

<img src="../../wiki_icons/pixelitos/linux.png" width="50">

**From the Desktop**

1. Open your Flatpak-supported software manager (e.g., GNOME Software, KDE Discover, Bazaar).
2. Search for `RetroDECK` and click **Install**.

**From the Terminal**

Run the following command:

`flatpak install Flathub net.retrodeck.retrodeck`

**Launch RetroDECK for the first time** 

After installation, launch RetroDECK from your software manager or the Program Menu under `Games` → `RetroDECK`.

---

### **Step 2 — Choose where to create the retrodeck/ folder** 

#### Steam Deck  (Desktop Mode)

Choose between:

`Internal Storage`, `SD Card`, or `Custom Location`.

If you plan to install it on your SD Card Read More here:

- [FAQ: SD Cards](../../wiki_faq/faq-sdcard.md).

#### Linux Desktop 

Choose between:

`Home` or `Custom Location`.

### *Step 3 — **Add RetroDECK to Steam and Steam Controller Templates** 

When asked, select we recommend this: **Yes**. 

After this, RetroDECK will appear in Game Mode under **Library → Non-Steam**.

### *Step 4 — **(Optional) Install Downloaded Firmwares** 

The 

### **Step 2 — Add BIOS & Firmware**

<img src="../../wiki_icons/pixelitos/cpu.png" width="50">

Place required BIOS/Firmware files in (if the component require it):

`retrodeck/bios/`

**Read more:**

- [BIOS & Firmware](../wiki_management/bios-firmware/bios-firmware.md)
- All Component specific guides on the wiki.

---

### **Step 3 — Add ROMs / Games / Ports**

<img src="../../wiki_icons/pixelitos/folder-blue-games.png" width="50">

Add your games following ES-DE’s clean and organized folder structure. This ensures that systems appear correctly in the frontend.

Put ROMs / Games in the matching system folder under:

`retrodeck/roms/`

**Examples:**

- `retrodeck/roms/nes/ExampleNESGame.nes`
- `retrodeck/roms/doom/DOOM.WAD`
- `retrodeck/roms/openbor/He-Man.openbor`

**For Ports**

RetroDECK’s **PortMaster component** manages native ports. You can:

- Browse and download a variety of ports.
- Install **FOSS (Free and Open Source Software) ports** directly.
- Some ports require purchased game files. 

You will find PortMaster inside the ES-DE interface or in the Configurator. 

**Read more:**

- [RetroDECK Folders](../wiki_management/retrodeck-folders/retrodeck-folders.md)
- All Component specific guides on the wiki.

---

### **Step 4 — Learn ES-DE Frontend**

<img src="../../wiki_images/logos/es-de-logo.png" width="55">

ES-DE is the graphical interface where you browse, select, and launch your games.
Understanding its basics will help you customize themes, scrape metadata, manage playlists, and more.

**Read more:**

- [ES-DE Frontend Guide](../wiki_system_guides/es-de/esde-guide.md)


---
 
### **Step 5 — Learn RetroDECK’s Hotkeys**


<img src="../../wiki_icons/pixelitos/antimicrox.png" width="50">

RetroDECK uses Steam Input, and each emulator has consistent hotkeys for save states, menus, fast-forward, screenshots, and more.

**Read more:**

- [RetroDECK Hotkeys](../wiki_rd_controls/hotkeys-retrodeck.md)

---

### **Step 6 — Play**

<img src="../../wiki_icons/pixelitos/retrodeck.png" width="50">

Start RetroDECK via Steam (recommended) or directly.

Any system with valid ROMs / Games should now appear in ES-DE and be ready to play.

---

## Optional — Explore the Community

<img src="../../wiki_icons/pixelitos/distributor-logo-knoppix.png" width="50">


RetroDECK is community-driven—explore, learn, or join in!

- System tweaks & tips: various wiki articles
- Development updates: [RetroDECK Blog](../blog/index.md)  
- Social links: [Wiki Start Page](../index.md)  
- Contribute: [How to Contribute](../wiki_about/contibute-retrodeck.md)


---

# How-to: Install RetroDECK on the Linux Desktop

<img src="../../../wiki_icons/pixelitos/linux.png" width="75">

---
---


---

## Setting Up RetroDECK

### **Launch RetroDECK for the first time** 

After installation, launch RetroDECK from `Discover/Bazaar/Gnome Software` or the `Software/Program Menu` under `Games` → `RetroDECK`

### **Choose where to create the retrodeck/ folder** 

`Internal Storage` or `Custom Location`.

### **Add RetroDECK to Steam and Steam Controller Templates** 

When asked, select: **Yes**. 

After this, RetroDECK will appear in Game Mode under **Library → Non-Steam**.

[How-to: Add RetroDECK to Steam](../../wiki_tool_guides/add-to-steam/add-to-steam.md)

### **Choose where to create the retrodeck/ folder** 

`Home` or `Custom Location`.

### **Add BIOS and ROMs/Games:**

BIOS → `retrodeck/bios/`

ROMs/Games → `retrodeck/roms/`
  
**Read more:**
 
[RetroDECK: Start Using](../../wiki_general/retrodeck-start.md).
   
### **Read the hotkeys guide** 

**Read more:**

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)

### **Launch RetroDECK and enjoy!**

Go to RetroDECK on the Steam Grid under `Library` → `Non-Steam` → `RetroDECK` 

### **(Optional) Apply templates to external controllers**.

(This is usually automatic but for some hardware you might need apply it manually.)

- Navigate to RetroDECK `Library` -> `Non-Steam`.
- Go to 🎮 Controller `🎮 Controller Settings` -> `Controller Layouts` -> `Templates` .

   

---

## Other Tips

- Explore other recommended software: [Software Recommendations](../../wiki_management/software-recommendations/software-recommendations.md)  
- Updating RetroDECK: [How-to: Update RetroDECK](../../wiki_management/retrodeck-update/retrodeck-update.md)  
- Removing RetroDECK: [How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove/retrodeck-remove.md)  

---



---

# How-to: Install RetroDECK on the Steam Deck

<img src="../../../wiki_icons/pixelitos/steam.png" width="75">

**NOTE:** 

Depending on what language you have set in `Desktop Mode`, things might be named differently.

---


---


### **Add RetroDECK to Steam and Steam Controller Templates** 

When asked, select: **Yes**. 

After this, RetroDECK will appear in Game Mode under **Library → Non-Steam**.

### **Add BIOS and ROMs/Games:**

BIOS → `retrodeck/bios/`

ROMs/Games → `retrodeck/roms/`
  
**Read more:**
 
[RetroDECK: Start Using](../../wiki_general/retrodeck-start.md).

###  **Return to Game Mode**

- Go back into `Game Mode` by pressing the `Return to Game Mode` icon on the desktop.

### **Read the hotkeys guide** 

**Read more:**

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)

### **Launch RetroDECK and enjoy!**

Go to RetroDECK on the Steam Grid under `Library` → `Non-Steam` → `RetroDECK` 

### **(Optional) Apply templates to external controllers**.

(This is usually automatic but for some hardware you might need apply it manually.)

- Navigate to RetroDECK `Library` -> `Non-Steam`.
- Go to 🎮 Controller `🎮 Controller Settings` -> `Controller Layouts` -> `Templates` .
   

---

## Additional Tips

**Check recommended software:**

[Software Recommendations](../../wiki_management/software-recommendations/software-recommendations.md)

**Improve system performance:**

[Steam Deck: Optimizations](../../wiki_devices/steamdeck/steamdeck-optimize.md)

**Update RetroDECK:** 

[How-to: Update RetroDECK](../../wiki_management/retrodeck-update/retrodeck-update.md)

**Uninstall RetroDECK:**

[How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove/retrodeck-remove.md)

---


# How-to: Install RetroDECK on the Steam Deck

<img src="../../../wiki_icons/pixelitos/steam.png" width="75">

**NOTE:** 

Depending on what language you have set in `Desktop Mode`, things might be named differently.

## Read This: About SD Cards

If you plan to use RetroDECK on your SD Card, know that SD cards can be a bit tricky.

### Always Format the Card & Name it Properly

- **Format the Card**: Always format the a new card when you get it: Press `Steam` -> `Storage` -> `Select the Card` -> Press `Y` for Options ->`Format Drive`.
- **Stick to Alphanumeric Characters**: It's best to stick to alphanumeric characters (a-Z, 0-9) and avoid using special characters, emojis, or spaces in the card's name.

#### Why Avoid Special Characters in SD Card Naming on Linux?

Using special characters in SD card naming on Linux can lead to various issues. Here are some reasons why it's not advisable:

- **Command-line complications**: Special characters like spaces, ampersands, and exclamation marks can cause problems when used in command-line operations. They often need to be escaped or quoted, which can be cumbersome and error-prone.
- **Script and program errors**: Many scripts and programs may not handle special characters well, leading to unexpected behavior or errors. This is especially true for older or poorly written software.
- **Network protocols**: Some network protocols require special care when dealing with filenames containing spaces or special characters. This can lead to issues when transferring files over a network.

### Tips on Buying an SD Card

We have seen some users having issues because they have bought scam cards, here are some tips:

- **Buy from a reputable brand and store**: Stick to well-known brands like SanDisk, Samsung, or Kingston, and purchase from authorized retailers.
- **Check the packaging**: Authentic SD cards usually come in professional-grade packaging. Look for clear branding, holograms, and security seals.
- **Inspect the card design**: Genuine SD cards have consistent styling, clear text, and smooth connectors. Be wary of cards with blurry text or rough edges.
- **Verify the price**: If the price seems too good to be true, it probably is. Research the average price for the specific SD card model you’re interested in.
- **Test the card**: Use capacity testing tools like H2testw or F3 to verify the card’s storage capacity and performance.
- **Check reviews**: Look for current reviews online to ensure the card has good read and write speeds.
- **Avoid third-party sellers**: Purchase directly from the manufacturer or authorized dealers to reduce the risk of buying counterfeit products.
- **Research vendors**: Ensure you are purchasing from reputable sellers and verify their performance.

## Quickstart Guide

- **Switch to Desktop Mode**: Press the `Steam button` -> `Power` -> `Switch to Desktop`.
- **Install RetroDECK**: Open the Discover application and search for RetroDECK. Press the install button.
- **First-Time Setup**: Launch RetroDECK from Discover or the KDE program menu under Games -> RetroDECK.
- **Choose where to create the main folder `retrodeck/`**: `Internal Storage`, `SD Card` or `Custom Location`.
- **Install Steam Controller Templates**: During installation, choose to install Steam Controller Templates for RetroDECK (this should be checked by default).
- **Add RetroDECK to Steam Library**: You will be prompted to Add RetroDECK to Steam, press `Yes`.
- **Add BIOS and ROMs**: Put the BIOS files inside `retrodeck/bios/` and ROMs & game files inside `retrodeck/roms/`.
- **Switch back to Game Mode**: Go to RetroDECK on the Steam Grid under `Library` -> `Non-Steam`.
- **Configure Controller Layouts**: Add the RetroDECK: `Steam Deck - Neptune Official Template` under `🎮 Controller Settings` -> `Controller Layouts` -> `Templates`. Choose either the SIMPLE radial layout or FULL radial layout.
- **Enable Templates Optional**: If you have external controllers connected you can also apply those templates via `🎮 Controller Settings` -> `Controller Layouts` -> `Templates`.
- **Read up on the RetroDECK: Controller Hotkeys**:  [RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md).
- **Launch RetroDECK and Enjoy!**

## Step-by-Step Guide to Install RetroDECK on the Steam Deck

### Step 1: Go to Desktop Mode

Put the Steam Deck into `Desktop Mode`:

`Steam button` > `Power` > `Switch to Desktop`

### Step 2: Install from Discover

- Open the Discover application.
- Search for RetroDECK and press the install button.
- After installation, launch RetroDECK from Discover or the KDE program menu under `Games` -> `RetroDECK`.
- Follow the first-time setup instructions and choose where RetroDECK should create the `retrodeck/` folder: `Internal Storage`, `SD Card` or `Custom Location`.
- During setup, choose to install `RetroDECK Steam Controller Profiles`.

#### Step 3: Add to Steam & Add files

- You will be prompted to Add RetroDECK to Steam, press `Yes`. 
- Add BIOS and ROMs: Put the BIOS files inside `retrodeck/bios/` and ROMs & game files inside `retrodeck/roms/`. If you are unsure how to add ROMs and BIOS to RetroDECK [RetroDECK: Start Using](../../wiki_general/retrodeck-start.md).
- After this, you can see RetroDECK in Steam Deck's `Game Mode` after returning from `Desktop Mode`.

### Step 4: Configure the Steam Controller Profiles

This step is only needed if you installed the profiles. If you missed installing the layouts, you can always reinstall them from `RetroDECK Configurator` -> `Tools` -> `Install: RetroDECK Controller Layouts`.

- Go back into `Game Mode` by pressing the `Return to Game Mode` icon on the desktop.
- Navigate to RetroDECK `Library` -> `Non-Steam`.
- Go to 🎮 Controller `🎮 Controller Settings` -> `Controller Layouts` -> `Templates` .
- Add one of the layouts for RetroDECK called `RetroDECK: Steam Deck - Neptune` SIMPLE or FULL.
- **Optional** If you have external controllers connected you can also apply those templates via `🎮 Controller Settings` -> `Controller Layouts` -> `Templates`.
- Read up on the [RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md).

## Other Tips

- Explore our: [Software Recommendations](../../wiki_management/software-recommendations/software-recommendations.md).
- Check various optional optimizations that can make some systems run even better: [Steam Deck: Optimizations](../../wiki_devices/steamdeck/steamdeck-optimize.md).
- Check on: [How-to: Update RetroDECK](../../wiki_management/retrodeck-update/retrodeck-update.md). 
- If you no longer want RetroDECK, you can find the removal guide at: [How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove/retrodeck-remove.md). 
