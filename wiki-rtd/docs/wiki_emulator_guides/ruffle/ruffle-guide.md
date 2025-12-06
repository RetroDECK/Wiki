# Ruffle - General Guide

<img src="../../../wiki_images/logos/ruffle-logo.svg" width="75">

An open source Flash Player emulator.

**Note:** 

Ruffle is a W.I.P emulator that is under heavy development. 

Some games might not work at all or control right.

---

### Ruffle Links:


[Ruffle Webpage](https://ruffle.rs/)

[Ruffle Blog](https://ruffle.rs/blog)

[Ruffle Compatibility list](https://ruffle.rs/compatibility)


---

## Where to put the games?

Flash games should be put under the `retrodeck/roms/flash/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .swf        | Shockwave Flash file |

---

## Does Ruffle require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/flash/` |                               | 
| Saves Folder |`retrodeck/saves/flash/` |                               | 
| Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/ruffle/`   | |
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/ruffle/`   | |
| Cache Folder |`~/.var/app/net.retrodeck.retrodeck/cache/ruffle/`   | |

---

## Controls in Games

Most flash games were designed for mouse and/or keyboard controls, with each game having its own unique setup. 

There's no one-size-fits-all solution for game inputs. 

Some games might use the keyboard (WASD, arrow keys, numpad), the mouse, or a combination of these.

Suggestions on how to control games:

- Use a real keyboard and mouse.
- Use RetroDECK's Steam Input Layouts to emulate mouse input using a joystick.
- Use the built-in touchpads on controllers or devices like the DualSense, DualShock 4, Steam Deck and Steam Controller.
- Use the built-in touchscreens on devices like the Steam Deck.
- Summon built-in virtual keyboards in SteamOS or your Linux distribution with a button combo.

---

## Can I use Ruffle to play Flash videos and not just games?

Yes, you can add Flash videos (.sfw files) to the `retrodeck/roms/flash/` folder to play them.

You might want to organize videos and games into separate subfolders, but it's optional.

**Example:**

```
retrodeck/roms/flash/videos/
retrodeck/roms/flash/games/
```

---
