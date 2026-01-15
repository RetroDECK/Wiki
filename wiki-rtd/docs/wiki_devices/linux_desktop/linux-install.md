# How-to: Install RetroDECK on the Linux Desktop

<img src="../../../wiki_icons/pixelitos/linux.png" width="75">

---

## **Before you begin start here**

- [RetroDECK: Start Using](../../wiki_general/retrodeck-start.md).

---

## **TIP: Game Mode on Linux PCs**

<img src="../../../wiki_icons/pixelitos/preferences-desktop-theme.png" width="50">

Steam Deck's **Game Mode** can be used on some Linux distributions. It helps:

- Mitigate Input issues.
- Provide the best RetroDECK experience.
- Allow seamless Steam controller support.

Here is a list of some distributions that support Game Mode:

**Bazzite**

- [Bazzite Webpage](https://bazzite.gg/)

**Chimera OS**

- [ChimeraOS Webpage](https://chimeraos.org/)
- [ChimeraOS Wiki](https://github.com/ChimeraOS/chimeraos/wiki)

**Nobara**

- [Nobara Webpage](https://nobaraproject.org/download-nobara/)
- [Nobara Wiki](https://wiki.nobaraproject.org)

---

## Prerequisites - Linux Desktop

<img src="../../../wiki_icons/pixelitos/emblem-default.png" width="50">

### (Optional) Add to Steam 

It's recommended to add and launch RetroDECK via Steam to utilize Steam Input for external controllers during installation.

---

### Flatpak Support

Ensure Flatpak is installed on your Linux system. Follow the official guide for your distribution: 
[Flatpak Setup Guide](https://flatpak.org/setup/)

---

### Steam: steam-devices Package

> **Note:** Not required for SteamOS-based devices (e.g., Steam Deck) or gaming distributions like Bazzite, Chimera, Nobara, etc.

- The `steam-devices` package is usually included with Steam on most distributions.  
- Required for Steam to detect controllers.  
- Steam will warn you if it is missing.  
- Install via your distribution's package manager if needed.  

---

### Enable Steam Input for Controllers

> **Note:** Not required for SteamOS-based devices (e.g., Steam Deck) or gaming distributions like Bazzite, Chimera, Nobara, etc.

1. Open Steam and click the **Steam** menu.  
2. Navigate to **Settings → Controller**.  
3. Enable Steam Input for all controllers: Xbox, PlayStation, Switch Pro, Generic.  
4. Close Settings.

---

## Step-by-Step Guide to Install RetroDECK on the Linux Desktop 

<img src="../../../wiki_icons/retrodeck/icon-rd.png" width="50">

**For your:**

- HTPC
- Gaming PC
- PC-Console (Steam Machine)
- Desktop 

---

### **Install RetroDECK**

<img src="../../../wiki_images/logos/discover-logo.png" width="50">

**Via an App Store**

1. Open your Flatpak-supported software manager (e.g., GNOME Software, KDE Discover, Bazaar).  
2. Search for `RetroDECK` and click **Install**.

**From the Terminal**

Run the following command:

`flatpak install net.retrodeck.retrodeck`

---

### **Launch RetroDECK for the first time** 

<img src="../../../wiki_icons/pixelitos/preferences-desktop-cursors.png" width="25">


After installation from `Discover / Bazaar / Gnome Software`.

Launch RetroDECK from `Discover / Bazaar / Gnome Software` or the `Software / Program Menu` under `Games` → `RetroDECK`.

---

### **Choose where to create the retrodeck/ folder** 

<img src="../../../wiki_icons/pixelitos/folder-blue.png" width="50">

**Choose between:**

- `Home Directory`
- `Custom Location`

<img src="../../../wiki_images/retrodeck-finit/1-RD-Finit-Start.png" width="500">

<img src="../../../wiki_images/retrodeck-finit/5-RD-Finit-FirmWait.png" width="500">

---

### **(Optional, but recommended) Add RetroDECK to Steam and Steam Controller Templates**

<img src="../../../wiki_icons/pixelitos/steam.png" width="50">

When asked, we recommend that you select: **Yes**.

RetroDECK will appear in Game Mode under **Library → Non-Steam**

<img src="../../../wiki_images/retrodeck-finit/2-RD-Finit-Steam.png" width="500">

---

### **(Optional) Download Firmware**

<img src="../../../wiki_icons/pixelitos/folder-red-arduino.png" width="50">

RetroDECK can download firmware **only from officially distributed sources**.

An active internet connection is required.

After the firmware installation is complete, be sure to **close the component’s window or it's pop-ups** to finish the process.

---

### **(Optional) Enable Steam Synchronization**

<img src="../../../wiki_images/logos/srm-logo.png" width="55">

This prompt appears **only if RetroDECK has been added to Steam**.

Enabling Steam synchronization will scan your game library for any 🌟 **Favorited** 🌟 titles in ES-DE and automatically add them to your Steam library as individual entries.

<img src="../../../wiki_images/retrodeck-finit/7-RD-Finit-SRM.png" width="500">

---

### **Installation Complete: Return to Desktop or Start RetroDECK**

<img src="../../../wiki_icons/pixelitos/security-high.png" width="50">

<img src="../../../wiki_images/retrodeck-finit/11-RD-Finit-Comp.png" width="500">

Press **Return to Desktop** or **Start RetroDECK**.

**If you have added RetroDECK to Steam:** you will need to **restart Steam** for the changes to take effect.

---

## **Adding ROMs / Games / Ports**

<img src="../../../wiki_icons/pixelitos/folder-blue-games.png" width="50">

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

- [RetroDECK Folders](../../wiki_management/retrodeck-folders/retrodeck-folders.md)
- All Component specific guides on the wiki.

---

## **Adding BIOS & Firmware**

<img src="../../../wiki_icons/pixelitos/cpu.png" width="50">

Place required BIOS/Firmware files in (if the component require it):

`retrodeck/bios/`

**Read more:**

- [BIOS & Firmware](../../wiki_management/bios-firmware/bios-firmware.md)
- All Component specific guides on the wiki.

---

## **Learn ES-DE Frontend**

<img src="../../../wiki_images/logos/es-de-logo.png" width="55">

ES-DE is the graphical interface where you browse, select, and launch your games that RetroDECK uses.
Understanding its basics will help you customize themes, scrape metadata, manage playlists, and more.

**Read more:**

- [ES-DE Frontend Guide](../../wiki_system_guides/es-de/esde-guide.md)

   
---

## **Learn RetroDECK’s Hotkeys**

<img src="../../../wiki_icons/pixelitos/antimicrox.png" width="50">

RetroDECK uses Steam Input, and each emulator has consistent hotkeys for save states, menus, fast-forward, screenshots, and more.

**Read more:**

- [RetroDECK Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)

---

## **Play!**

<img src="../../../wiki_icons/pixelitos/retrodeck.png" width="50">

Go to RetroDECK on the Steam Grid under `Library` → `Non-Steam` → `RetroDECK`.

Start RetroDECK.

Any system with valid ROMs / Games should now appear in ES-DE and be ready to play.

<img src="../../../wiki_images/retrodeck-finit/13-RD-Finit-SteamLaunch.png" width="500">

---

### **(Optional) Apply templates to external controllers**.

<img src="../../../wiki_icons/pixelitos/antimicrox.png" width="25"><img src="../../../wiki_icons/pixelitos/antimicrox.png" width="25"><img src="../../../wiki_icons/pixelitos/antimicrox.png" width="25"><img src="../../../wiki_icons/pixelitos/antimicrox.png" width="25">

(This is usually automatic but for some hardware you might need apply it manually.)

- Navigate to RetroDECK `Library` -> `Non-Steam`.
- Go to 🎮 Controller `🎮 Controller Settings` -> `Controller Layouts` -> `Templates` .
   
<img src="../../../wiki_images/retrodeck-finit/14-RD-Finit-SteamController.png" width="150">
   
---

## Additional Tips

<img src="../../../wiki_icons/pixelitos/distributor-logo-knoppix.png" width="50">

- **Explore the Wiki:** Read up and check more documentation for the software you want to play.
- **Check recommended other software:** [Software Recommendations](../../wiki_management/software-recommendations/software-recommendations.md)
- **Update RetroDECK:** [How-to: Update RetroDECK](../../wiki_management/retrodeck-update/retrodeck-update.md)
- **Uninstall RetroDECK:** [How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove/retrodeck-remove.md)


### Explore the Community

RetroDECK is community-driven-explore, learn, or join in!

- **Development updates:** [RetroDECK Blog](../../blog/index.md)  
- **Social links:** [Wiki Start Page](../../index.md)  
- **Contribute:** [How to Contribute](../../wiki_credits_social/contibute-retrodeck.md)
- **Donate to FOSS Space:** [How to Contribute](../../wiki_credits_social/donations-licenses.md)
