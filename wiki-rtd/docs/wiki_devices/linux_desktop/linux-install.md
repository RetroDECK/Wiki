# How-to: Install RetroDECK on the Linux Desktop

<img src="../../../wiki_images/logos/linux-tux-logo.svg" width="150">

## Prerequisites

1. Ensure you have flatpak support installed on your Linux desktop. Follow the official flatpak guides for your distribution: [Flatpak Setup Guide](https://flatpak.org/setup/).

2. Install the `steam-device` package for udev rules for various controllers (most gaming focused distribution have this already). Check your distribution's instructions for how to install it.

3. It's recommended to add and launch RetroDECK from Steam to utilize the Steam Input feature for external controllers.

## RetroDECK Installation 

**From the Desktop**

- Open your flatpak-supported software manager (e.g., GNOME Software for GNOME, KDE Discover for KDE).
- Search for RetroDECK and press install.

**From the terminal**

Run the following command:

`flatpak install Flathub net.retrodeck.retrodeck`

## First Run - Quick Start

1. Start RetroDECK for the first time
2. Choose where RetroDECK should create the main folder `retrodeck/`: `Internal Storage`,  `SD Card` or `Custom Location`.
3. Put the BIOS files inside `retrodeck/bios/`.
4. Put the ROMs & game files inside `retrodeck/roms/`.
5. Choose to install Steam Controller Templates for RetroDECK (this should be checked by default) during installation.
5. Add RetroDECK to Steam: [How-to: Add RetroDECK to Steam](../../wiki_management/add-to-steam.md).
6. Enable controller support in Steam: [How-to: Enable Controllers in Steam ](../../wiki_general/supported-controllers.md).
7. Connect your controller to your desktop.
8. Navigate to RetroDECK in Steam
9. Go to `🎮 Controller Settings` -> `Controller Layouts` -> `Templates` and enable the template for the controller you are using.
10. Launch RetroDECK and enjoy!

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
