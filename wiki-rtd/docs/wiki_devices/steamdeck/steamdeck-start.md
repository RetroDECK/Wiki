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

- Explore our: [Software Recommendations](../../wiki_management/software-recommendations.md).
- Check various optional optimizations that can make some systems run even better: [Steam Deck: Optimizations](../../wiki_devices/steamdeck/steamdeck-optimize.md).
- Check on: [How-to: Update RetroDECK](../../wiki_management/retrodeck-update.md). 
- If you no longer want RetroDECK, you can find the removal guide at: [How-to: Remove RetroDECK](../../wiki_management/retrodeck-remove.md). 
