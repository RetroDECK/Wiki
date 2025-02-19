# How-to: Install RetroDECK on the Linux Desktop

 <img src="../../../wiki_icons/pixelitos/linux.png" width="75">

## Prerequisites

**NOTE:** It's recommended to add and launch RetroDECK via Steam to utilize the Steam Input feature for external controllers.

### Flatpak Support


Ensure you have flatpak support installed on your Linux desktop. Follow the official flatpak guides for your distribution: [Flatpak Setup Guide](https://flatpak.org/setup/).

### Steam - steam-devices

- The `steam-devices` package is usually part of the Steam installation for many distributions.
- Required for Steam to recognize controllers.
- Steam will warn you if `steam-devices` is missing.
- Check your distribution's instructions to install it if needed.

**Note:** Not needed for SteamOS-based devices like the Steam Deck or most gaming distributions like Bazzite, Chimera, Nobara, and more.

### Steam - Enable All Steam Input in Steam

1. In Steam, press the `Steam` top menu.
2. Go to `Settings`.
3. Press `🎮 Controller`.
4. Enable all Steam Inputs for `Xbox`, `PlayStation`, `Switch Pro`, `Generic`.
5. Close the `Settings`.

## How-to: Install RetroDECK from Flathub

**From the Desktop**

- Open your flatpak-supported software manager (e.g., GNOME Software for GNOME, KDE Discover for KDE).
- Search for RetroDECK and press install.

**From the terminal**

Run the following command:

`flatpak install Flathub net.retrodeck.retrodeck`

## How-to: Setup RetroDECK

1. Start RetroDECK for the first time.
2. Choose where RetroDECK should create the main folder `retrodeck/`: `Internal Storage`,  `SD Card` or `Custom Location`.
3. Put the BIOS files inside `retrodeck/bios/`.
4. Put the ROMs & game files inside `retrodeck/roms/`.
5. Choose to install Steam Controller Templates for RetroDECK (this should be checked by default) during installation.
6. Add RetroDECK to Steam: [How-to: Add RetroDECK to Steam](../../wiki_management/add-to-steam.md).
7. Connect your controller to your desktop and navigate to RetroDECK in Steam.
8. Apply controller Templates in Steam: [Supported Controllers / Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md).
9. Launch RetroDECK and enjoy!

## Other Tips

- Check on: [How-to: Update RetroDECK](../../wiki_management/retrodeck-update.md). 
- If you no longer want RetroDECK, you can find the removal guide at: [How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove.md). 

## Game Mode on Your Linux PC?

You can utilize Steam Deck's Game Mode on your Linux PC if your distribution supports it and specific hardware requirements apply for Game Mode to work. 

It mitigates several issues with Steam Input and provides the best RetroDECK experience and playing Steam games with controllers out of the box.

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
