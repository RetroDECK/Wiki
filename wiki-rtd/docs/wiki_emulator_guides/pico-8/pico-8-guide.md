# PICO-8 - General Guide

<img src="../../../wiki_images/logos/pico-8-logo.png"  width="150">

PICO-8 Fantasy Console is a game engine developed by Lexaloffle Games that you need to buy a license to use.

---

### Pico-8 Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Itch.io - Pico-8 | [Link](https://lexaloffle.itch.io/pico-8) |
| Pico-8 FAQ | [Link](https://www.lexaloffle.com/pico-8.php?page=faq) |
| Pico-8 Resources | [Link](https://www.lexaloffle.com/pico-8.php?page=resources) |
| Pico-8 Website | [Link](https://www.lexaloffle.com/pico-8.php) |


---

## Where to put the games?

PICO-8 games should be put under the `retrodeck/roms/pico8/` directory. 

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .png        | PICO-8 game file |

## Does Pico-8 require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, it requires the Pico-8 software. 

You can purchase it from the official [Pico-8 website](https://www.lexaloffle.com/pico-8.php) or on [Itch.io](https://lexaloffle.itch.io/pico-8).

### Where to put the BIOS / Firmware files?

1. Download the Linux version of Pico-8: `pico-8_*.*.**_amd64.zip` from where you bought it.
2. Extract the archive and place its contents in `retrodeck/bios/pico-8/`. <br> Make sure the `pico8` binary resides directly in that directory. <br>The final path should look like this: `retrodeck/bios/pico-8/pico8`
3. Ensure the `pico8` binary has executable permissions (refer to the Wiki FAQ for instructions, if you don't know how).

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                     | Comment |
|:------:|:------------------------------|:-------:|
| BIOS   | `retrodeck/bios/pico-8/`      |         |
| ROMs   | `retrodeck/roms/pico8/`       |         |
| Saves  | `retrodeck/saves/pico-8/`     |         |


---

## Downloading Games from the Pico-8 Webpage

<img src="../pico-8-vampire.png" width="600">

1. Visit [Pico-8 Carts](https://www.lexaloffle.com/bbs/?cat=7&carts_tab=1#mode=carts&sub=2).
2. Open the desired game’s page.
3. In the bottom-left corner of the game view, click the **Cart** icon (see image).
4. A static cartridge image will be displayed.
5. Right-click the image and select **Save Image As**.
6. Name the file to match the game (e.g. `Vampire vs Pope Army.png`).
7. Save the file to `retrodeck/roms/pico8/`.

The game can now be launched from the ES-DE gamelist.

---

## Launching only Splore from the ES-DE Gamelist

1. Navigate to `retrodeck/roms/pico8/`.
2. Create an empty file named `Splore.png`.
3. Launch **RetroDECK**.
4. Open the **Pico-8** system and locate the **Splore** entry.
5. In **ES-DE**, select **Edit this game's metadata**.
6. Set **Alternative Emulator** to **Pico-8 Splore** and save.

Splore can now be launched directly from the ES-DE gamelist.

---

## TIP: Pico-8 Covers in ES-DE

Pico-8 cartridges are image files, allowing them to be used directly as cover art. Copy all contents from:

`retrodeck/roms/pico8/`

to:

`retrodeck/ES-DE/downloaded_media/pico8/covers/`

This enables the original cartridge images to appear in the ES-DE interface, this can be useful since many Pico-8 titles lack metadata on scraping services.

---