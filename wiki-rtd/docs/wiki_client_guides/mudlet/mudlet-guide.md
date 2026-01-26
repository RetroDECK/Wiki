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

## How-to: Display MUD Games in RetroDECK

We will use **Midnight Sun II** as an example.

1. **Launch Mudlet:** Open Mudlet via **RetroDECK Configurator** → **Open Component** → **Mudlet**. 
2. **Log in to the MUD:** Log in to each MUD server you play on, exit after each login, and quit Mudlet when finished.  
3. **Locate the profile:** Mudlet creates a local profile for the server you logged in on under `retrodeck/roms/muds/`.  
4. **Rename the folder:** Rename the profile folder so that it ends with `.mud` (for example, `Midnight Sun II.mud`).  
5. **Launch in ES-DE:** The MUD game will now appear in ES-DE under the **MUDs** system and auto connect to the profile.

---

## Controls: Keyboard

Mudlet cannot be played with a controller and is best used with a physical keyboard or an on-screen virtual keyboard.

---