# Getting started with RetroDECK

<img src="../../wiki_icons/pixelitos/retrodeck.png" width="50">

## Step 0: Prerequisites

Before you start, make sure you have:

- A device to install RetroDECK on.
- Related BIOS & Firmware ready.
- Game backups of various formats or purchased titles ready to play.

## Step 1: Installation & Configuration

**Steam Deck - Installation**

Most of the initial setup needs to be done in Desktop Mode.

Follow the guide: [Steam Deck - Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)

**Linux Desktop - Installation**

Follow the guide: [Linux Desktop - Installation and Updates](../wiki_devices/linux_desktop/linux-install.md)

## Step 2: Place BIOS & Firmware

Read up on [Manage your BIOS/Firmware](../wiki_management/bios-firmware.md)

Place BIOS & Firmware files in the `~/retrodeck/bios/` directory.

## Step 3: Place ROMs and Games

RetroDECK follows the ES-DE ROM folder structure.

Place ROM files in their corresponding system directory inside the roms folder. The location of the `retrodeck/roms/` folder depends on your installation location choice.

**Example:**

You have an example NES game called: `ExampleNESGame.nes`

Place `ExampleNESGame.nes` in the `/retrodeck/roms/nes` folder.

## Step 4: Playing the Games

Start RetroDECK via Steam or by itself. The systems you placed ROM files for should be shown and playable.

**Example:**

The NES category should now be shown in the ES-DE Frontend with `ExampleNESGame.nes` from `Step 3`.


## Step 5: Making the Games and Interface "Pretty" 

You can enhance your experience by adding videos, images, manuals, and art to your games. ES-DE also offers several different themes to choose from.

### Scraping and Screenscraper

1. Read the [ES-DE User Guide](../wiki_system_guides/es-de/esde-guide.md) on scraping.
2. Create an account on [Screenscraper](https://www.screenscraper.fr/).
3. Log in to your Screenscraper account inside RetroDECK `ES-DE Menu` -> `Scraper` -> `Account Settings`.
4. Set up the scraping how you want it under `ES-DE Menu` -> `Scraper` -> `Content Settings`.
5. Start scraping.
6. Enjoy your nicely decorated games.

### ES-DE Themes

You can download more themes for ES-DE's frontend with the built-in theme downloader:

`ES-DE Configurations` -> `UI Settings` -> `Theme Downloader`

Switch between themes in:

`ES-DE Configurations` -> `UI Settings` -> `Theme Set`
