# PICO-8 - General Guide

<img src="../../../wiki_images/logos//pico-8-logo.png">

PICO-8 Fantasy Console is a game engine developed by Lexaloffle Games that you need to buy a license to use.

---

### Pico-8 Links:

[Pico-8 FAQ](https://www.lexaloffle.com/pico-8.php?page=faq)

[Pico-8 Resources](https://www.lexaloffle.com/pico-8.php?page=resources)

[Pico-8 Website](https://www.lexaloffle.com/pico-8.php)

[Itch.io - Pico-8](https://lexaloffle.itch.io/pico-8)

---

## Where to put the games?

PICO-8 games should be put under the `retrodeck/roms/pico8/` directory. 

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .png        | PICO-8 game file |

## Does Pico-8 require BIOS or Firmware?

Yes, it requires the Pico-8 software. 

You can buy it from the the website or Itch.io.

### Where to put the BIOS / Firmware files?

Extract the `pico-8_*.*.**_amd64.zip` file of the Linux version into:

`retrodeck/bios/pico-8/`

It should look like:

`retrodeck/bios/pico-8/pico8 (and all the other files)`

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/pico8/` |                               |  
| Saves Folder |`retrodeck/saves/pico-8/` |                               |  
| BIOS Folder | `retrodeck/bios/pico-8/` |  |

## How to download the games?

<img src="../../../wiki_images/engines/pico-8/pico-8-vampire.png" width="600">

1. Go to [Pico-8 Carts](https://www.lexaloffle.com/bbs/?cat=7&carts_tab=1#mode=carts&sub=2).
2. Go to a game page.
3. Navigate to the bottom left corner of the game and click on the icon called `Cart` (marked in the image).
4. A static image will now show up.
5. `Right click` the image and click `Save Image As`.
6. Give the file a name that reflects the game. In this example: Vampire vs Pope Army.png
7. Save the game into `retrodeck/roms/pico8/` 
8. It can now be launched from ES-DE.
