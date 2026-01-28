# Mudlet: General Guide

<img src="../../../wiki_images/logos/mudlet-logo.svg" width="75">

Mudlet is a MUD (Multi-User Dungeon) client that allows you to connect to text-based online multiplayer games (the precursors to modern MMOs).

Mudlet enables MUD server maintainers to add visual elements and custom features, while allowing players to script, automate, and customize their gameplay experience.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---


### Mudlet Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Mudlet - Github | [Link](https://github.com/Mudlet/Mudlet) |
| Mudlet - Packages | [Link](https://packages.mudlet.org/) |
| Mudlet - Webpage | [Link](https://www.mudlet.org/) |
| Mudlet - Wiki | [Link](https://wiki.mudlet.org/) |
| The Telnet BBS Guide | [Link](https://www.telnetbbsguide.com/) |

---

## Where to put the games?

You don’t need to add them manually. Mudlet profiles are **automatically** stored in the `retrodeck/roms/muds/` folder.

---

## Does Mudlet require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No, Mudlet does not require BIOS or firmware, as the games run on remote servers that store all game data.


---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .mud    | RetroDECK mud parser file |


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type | Directory                 | Comment                           |
|:----:|:--------------------------|:---------------------------------|
| ROMs | `retrodeck/roms/muds/<server_profiles>`    |    All local server-specific data is stored in its own server profile folder.           |

---

## Controls: Keyboard & Mouse

Mudlet cannot be played with a controller and is best used with a physical keyboard and mouse.

---

## How-to: Display MUD Games in RetroDECK

We will use **Midnight Sun II** as an example.

1. **Launch Mudlet:** Open Mudlet via **RetroDECK Configurator** → **Open Component** → **Mudlet**. 
2. **Connect to the MUD:** Connect to each MUD server you play on, exit after each login, and quit Mudlet when finished. 
3. **Restart RetroDECK:** During a restart RetroDECK will automatically populate and convert all your logged in profiles into `.mud` (for example, `Midnight Sun II.mud`) during boot and store them in: `retrodeck/roms/muds/` as seperate game entries.
4. **Launch the game:** All MUD games will now appear in ES-DE under the **MUDs** system and auto connect to the profile when played.

---

## How-to: Migrate profiles from another Mudlet instance to RetroDECK?

1. **Profiles in ROMs:** Put your game profiles in the roms folder `retrodeck/roms/muds/`.
2. **Restart RetroDECK:** During a restart RetroDECK will automatically populate and convert all your logged in profiles into `.mud` during boot.
3. **Launch the game:** All your old MUD games will now appear in ES-DE under the **MUDs** system and auto connect to the profile when played.

---
