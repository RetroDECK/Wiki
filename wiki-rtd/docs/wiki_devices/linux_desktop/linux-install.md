# How-to: Install RetroDECK on the Linux Desktop

<img src="../../../wiki_icons/pixelitos/linux.png" width="75">

---

## Prerequisites

> **Note:** It's recommended to add and launch RetroDECK via Steam to utilize Steam Input for external controllers.

### 1. Flatpak Support

Ensure Flatpak is installed on your Linux system. Follow the official guide for your distribution:  
[Flatpak Setup Guide](https://flatpak.org/setup/)

### 2. Steam: steam-devices Package

- The `steam-devices` package is usually included with Steam on most distributions.  
- Required for Steam to detect controllers.  
- Steam will warn you if it is missing.  
- Install via your distribution's package manager if needed.  

> **Note:** Not required for SteamOS-based devices (e.g., Steam Deck) or gaming distributions like Bazzite, Chimera, Nobara, etc.

### 3. Enable Steam Input for Controllers

1. Open Steam and click the **Steam** menu.  
2. Navigate to **Settings → Controller**.  
3. Enable Steam Input for all controllers: Xbox, PlayStation, Switch Pro, Generic.  
4. Close Settings.

---

## Installing RetroDECK from Flathub

### From the Desktop

1. Open your Flatpak-supported software manager (e.g., GNOME Software, KDE Discover, Bazaar).  
2. Search for `RetroDECK` and click **Install**.

### From the Terminal

Run the following command:

`flatpak install Flathub net.retrodeck.retrodeck`

## Setting Up RetroDECK

1. **Launch RetroDECK for the first time**

2. **Choose where to create the retrodeck/ folder** 

`Internal Storage` or `Custom Location`.

3. **Add RetroDECK to Steam and Steam Controller Templates** 

When asked, select: **Yes**. 

After this, RetroDECK will appear in Game Mode under **Library → Non-Steam**.

[How-to: Add RetroDECK to Steam](../../wiki_tool_guides/add-to-steam/add-to-steam.md)

4. **Choose where to create the `retrodeck/` folder** 

`Internal Storage` or `Custom Location`.

5. **Add BIOS and ROMs/Games:**

BIOS → `retrodeck/bios/`

ROMs/Games → `retrodeck/roms/`
  
**Read more:**
 
[RetroDECK: Start Using](../../wiki_general/retrodeck-start.md).

6. **(Optional) Apply templates to external controllers**.

`🎮 Controller Settings` → `Controller Layouts` → `Templates`. (This is usually automatic but for some hardware you might need apply it manually.)
   
7. **Read the hotkeys guide:** 

**Read more:**

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)

8. **Launch RetroDECK and enjoy!**

---

## Other Tips

- Explore other recommended software: [Software Recommendations](../../wiki_management/software-recommendations/software-recommendations.md)  
- Updating RetroDECK: [How-to: Update RetroDECK](../../wiki_management/retrodeck-update/retrodeck-update.md)  
- Removing RetroDECK: [How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove/retrodeck-remove.md)  

---

## Game Mode on Linux PCs

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
