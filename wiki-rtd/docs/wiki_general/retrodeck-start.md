# Getting started with RetroDECK

<img src="../../wiki_icons/retrodeck/rd_icon_circle_512x512.png" width="75">

## Step 0: Prerequisites

Before you start, make sure you have:

- A device to install RetroDECK on.
- Related BIOS & Firmware ready.
- Game backups of various formats or purchased titles ready to play.

## Step 1: Installation

<img src="../../wiki_images/logos/steam-deck-logo.png" width="50"> ️ <img src="../../wiki_images/logos/linux-tux-logo.svg" width="50">

### Steam Deck - Installation

Most of the initial setup needs to be done in `Desktop Mode`.

Follow the guide: [Steam Deck - Installation](../wiki_devices/steamdeck/steamdeck-start.md)

### Linux Desktop - Installation

Follow the guide: [Linux Desktop - Installation](../wiki_devices/linux_desktop/linux-install.md)

## Step 2: Place BIOS & Firmware

<img src="../../wiki_icons/pixelitos/cpu.png" width="50">

Read up on: [BIOS/Firmware](../wiki_management/bios-firmware.md)

Place BIOS & Firmware files in the `~/retrodeck/bios/` directory.

## Step 3: Place ROMs and Games

<img src="../../wiki_icons/pixelitos/folder-blue-games.png" width="50">

RetroDECK follows ES-DE's folder structure.

Place ROM files in their corresponding system directory inside the `retrodeck/roms/` folder (the location of the `retrodeck/roms/` folder depends on your installation location choice).

**Example:**

You have an example NES game called: `ExampleNESGame.nes`

- Place `ExampleNESGame.nes` in the `retrodeck/roms/nes/` folder.
- The result should be: `retrodeck/roms/nes/ExampleNESGame.nes`

## Step 4: Read the ES-DE Frontend Guide

<img src="../../wiki_images/logos/es-de-logo.png" width="55">

Read up on: [ES-DE Frontend: General Guide](../wiki_system_guides/es-de/esde-guide.md)

## Step 5: Playing the Games

<img src="../../wiki_icons/pixelitos/retrodeck.png" width="50">

Launch RetroDECK via Steam or by itself. The systems you placed ROM files for should be shown and playable.

**Example:**

The NES category should now be shown in the ES-DE Frontend with `ExampleNESGame.nes` from `Step 3`.
