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

You don't need to add them manually. Mudlet profiles are **automatically** stored in the `retrodeck/roms/muds/` directory upon connection.

---

## Does Mudlet require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No, Mudlet does not require BIOS or firmware, as the games run on remote servers that store all game data.


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

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

Each MUD server can have different hotkeys and extra controls.

---

## How-to: Display MUD Games in RetroDECK

<img src="../mudlet-login-screen.png" width="800" alt="">

This example uses **Fierymud**, but the same process applies to any supported MUD.

1. Launch **Mudlet** from **RetroDECK Configurator** → **Open Component** → **Mudlet**.
2. At the Mudlet login screen, create or select a profile for the MUD you want to play from the built-in server list or by adding one manually.
3. Rename the profile so its name ends with the `.mud` extension. For example, rename `Fierymud` to `Fierymud.mud`.
4. Select **Connect** once to create the profile. You do **not** need to log in to the MUD.
5. Restart RetroDECK. During startup, RetroDECK automatically detects all `.mud` profiles in `retrodeck/roms/muds/`.
6. Launch the game from the **Multi-User Dungeon** menu in ES-DE. Mudlet automatically opens and connects using the selected profile.

---

## Troubleshooting

### Mudlet opens to the login screen instead of connecting

Some profile names may contain characters that are not handled correctly by the ES-DE parser.

1. Rename the Mudlet profile using only letters and numbers. For example, rename `Midnight Sun 2.mud` to `MidnightSun2.mud`.
2. Restart RetroDECK.
3. In ES-DE, highlight the game under the **Multi-User Dungeon** menu and press **Select** or **F1**.
4. Select **Edit This Game's Metadata**.
5. Change the **Name** field to the desired display name, for example `Midnight Sun 2`. This only changes the name shown in ES-DE and does not affect the Mudlet profile.

---

## How-to: Migrate profiles from another Mudlet instance to RetroDECK?

1. **Profiles in ROMs:** Put your game profiles in the roms directory `retrodeck/roms/muds/`.
2. **Restart RetroDECK:** During a restart RetroDECK will automatically populate and convert all your logged in profiles into `.mud` during boot.
3. **Launch the game:** All your old MUD games will now appear in ES-DE under the **MUDs** system and auto connect to the profile when played.

---
