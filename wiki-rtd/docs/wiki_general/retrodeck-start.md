# How-to: Start Using RetroDECK

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="100">

## New to RetroDECK?

RetroDECK is an retro gaming platform.

**Read more:**

[**What is RetroDECK?**](../wiki_about/what-is-retrodeck.md)

---

## Quick Start Guide

### **Step 0 — Prerequisites**

<img src="../../wiki_icons/pixelitos/emblem-default.png" width="50">

Before installing, make sure you have everything RetroDECK needs to function correctly.

You will need:

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

---

### **Step 1 — Installation**

#### Steam Deck (Desktop Mode)

<img src="../../wiki_icons/pixelitos/steam.png" width="50"> 

**Read more:**

[Steam Deck - Installation](../wiki_devices/steamdeck/steamdeck-start.md)

#### Linux Desktop 

<img src="../../wiki_icons/pixelitos/linux.png" width="50">

**Read more:**

[Linux Desktop - Installation](../wiki_devices/linux_desktop/linux-install.md)

---

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

Start RetroDECK (via Steam or directly).

Any system with valid ROMs / Games should now appear in ES-DE and be ready to play.

---

## Optional — Explore the Community

<img src="../../wiki_icons/pixelitos/distributor-logo-knoppix.png" width="50">


RetroDECK is community-driven—explore, learn, or join in!

- System tweaks & tips: various wiki articles
- Development updates: [RetroDECK Blog](../blog/index.md)  
- Social links: [Wiki Start Page](../index.md)  
- Contribute: [How to Contribute](../wiki_about/contibute-retrodeck.md)
