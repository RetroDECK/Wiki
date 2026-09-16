# Mudlet: General Guide

<img src="../../../wiki_images/logos/mudlet-logo.svg" width="75" alt="Mudlet logo">

Mudlet is a MUD (Multi-User Dungeon) client that allows you to connect to text-based online multiplayer games (the precursors to modern MMOs).

Mudlet enables MUD server maintainers to add visual elements and custom features, while allowing players to script, automate and customize their gameplay experience.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---


### Mudlet Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Mudlet - Github | [Link](https://github.com/Mudlet/Mudlet) |
| Mudlet - Packages | [Link](https://packages.mudlet.org/) |
| Mudlet - Webpage | [Link](https://www.mudlet.org/) |
| Mudlet - Wiki | [Link](https://wiki.mudlet.org/) |
| The Telnet BBS Guide | [Link](https://www.telnetbbsguide.com/) |

---

## Where to put the games?

You do not need to add MUDs manually. Mudlet profiles are **automatically detected** in the `retrodeck/roms/muds/` directory when the profile and `.mud` file are created.

---

## Does Mudlet require BIOS, Game Data or Firmware files?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No, Mudlet does **not** require a BIOS or firmware. MUDs run on remote servers, where the game data and server-side logic are stored.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .mud    | RetroDECK mud parser file |


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type | Directory                 | Comment                           |
|:----:|:--------------------------|:---------------------------------|
| ROMs | `retrodeck/roms/muds/<server_profiles>`    |    All local server-specific data is stored in its own server profile directory.           |
| Plugins | `retrodeck/storage/mudlet/plugins/`    |   Mudlet Plugins directory     |

---

## Controls

###  ⌨️ Keyboard  &  🖱️Mouse

MUDs are best played with a physical **keyboard and mouse**. Controller support is limited and may not be practical.

Controls, commands and hotkeys can vary between MUD servers. Refer to the individual MUD's documentation for server-specific commands and controls.

---

## How-to: Add MUD Games to RetroDECK

<img src="../mudlet-login-screen.png" width="800" alt="Mudlet login screen">

This example uses **Fierymud** and **Midnight Sun 2**, but the same process applies to any supported MUD.

1. Launch **Mudlet** from **RetroDECK Configurator** → **Open Component** → **Mudlet**.
2. At the Mudlet login screen, create or select a profile for the MUD you want to play. You can use the built-in server list or add a server manually.
3. Rename the profile so it ends with the `.mud` extension and uses **letters and numbers only**. Do not use spaces, symbols, or exotic/special characters. For example, rename `Fierymud` to `Fierymud.mud` or `Midnight Sun 2.mud` to `MidnightSun2.mud`.
4. Select **Connect** once to create the profile. You do **not** need to log in to the MUD.
5. Restart RetroDECK. During startup, RetroDECK automatically detects `.mud` profiles in `retrodeck/roms/muds/`.
6. Open the **Multi-User Dungeon** menu and highlight the MUD.
7. Open the **Main Menu** and select **Edit This Game's Metadata**.
8. Change the **Name** field to the name you want to display. For example, change `MidnightSun2` to `Midnight Sun 2`.
9. Save the changes and launch the MUD from RetroDECK.
10. Mudlet automatically opens and connects using the selected profile.

---

## Troubleshooting

| Topic | Issue | Solution |
|---|---|---|
| **Mudlet opens to the login screen instead of connecting directly to the MUD** | The profile name contains spaces or exotic/special characters that are not handled correctly by the parser. | Rename the Mudlet profile using **letters and numbers only**. Do not use spaces, symbols, or exotic characters. For example, `Midnight Sun 2.mud` → `MidnightSun2.mud`. Then restart RetroDECK. |

---
