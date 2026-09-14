# Guide: Ironwail

<img src="../../../wiki_images/logos/quakespasm-logo.png" width="150" alt="Quakespasm logo">

Ironwail is a modern Quake source port engine based on QuakeSpasm. Focused on high performance, enhanced graphics, mod support and compatibility with modern systems.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Ironwail Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Ironwail GitHub | [Link](https://github.com/andrei-drexler/ironwail) |


---

## Where to put the games

Ironwail Quake game files must be placed in the `retrodeck/roms/quake/ironwail/id1` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .quake| RetroDECK Quake File |


---

## Does Ironwail require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

However, you do need copies of the official **Quake** game data files  (PAK files).

Ironwail supports both the **2021 rerelease** and the **original release** of Quake.

**The original release is recommended.**

Rename the original release's PAK files from uppercase to lowercase:

```
PAK0.PAK → pak0.pak
PAK1.PAK → pak1.pak
```

### Base Game

| Name | File | GameID | Path | MD5 | Comment |
|---|---|---|---|---|---|
| Quake Base Game | `pak0.pak` | `id1` | `retrodeck/roms/quake/ironwail/id1` | `f6aa4f85e686e364b24e16928c51e05b` | 2021 Rerelease |
| Quake Base Game | `PAK0.PAK` renamed to `pak0.pak` | `id1` | `retrodeck/roms/quake/ironwail/id1` | `5906e5998fc3d896ddaf5e6a62e03abb` | Original Release **Recommended** |
| Quake Mission Data | `PAK1.PAK` renamed to `pak1.pak` | `id1` | `retrodeck/roms/quake/ironwail/id1` | `d76b3e5678f0b64ac74ce5e340e6a685` | Original Release **Recommended** |

### Official Episodes & Expansions

| Name | File | GameID | Path | MD5 | Comment |
|---|---|---|---|---|---|
| Capture the Flag | `pak0.pak` | `ctf` | `retrodeck/roms/quake/ironwail/ctf` | `6e0f5f6d396c4772fadf8b90a3b45b1a` | Multiplayer Content |
| Dawn of the Machine | `pak0.pak` | `mg3` | `retrodeck/roms/quake/ironwail/mg3` | `28933eb5dc7c1df55ba8ac579baf3ace` | 2026 Episode |
| Dimension of the Machine | `pak0.pak` | `mg1` | `retrodeck/roms/quake/ironwail/mg1` | `ce2f07daa4b6f54934825f091cab5caf` | 2021 Episode |
| Dimension of the Past | `pak0.pak` | `dopa` | `retrodeck/roms/quake/ironwail/dopa` | `054ab18a42d2bba6fa43a485ac294f80` | 2016 Episode |
| Dissolution of Eternity | `pak0.pak` | `rogue` | `retrodeck/roms/quake/ironwail/rogue` | `8bb743678bd2101614dffebcfd9884a5` | 1997 Expansion |
| Scourge of Armagon | `pak0.pak` | `hipnotic` | `retrodeck/roms/quake/ironwail/hipnotic` | `58514c45aa39ae60b40a8fa868145e6f` | 1997 Expansion |

--- 

## Where to buy Quake?

Below is a combined table containing purchase links.

| Game / Bundle| Steam Link| GOG Link |
|--------------------------|-------------------------------------------------------------------------|------------------------------------------------------------------------|
| Quake | [Steam](https://store.steampowered.com/app/2310/Quake/)| [GOG](https://www.gog.com/en/game/quake_the_offering) |

---

## How-to: Get PAKs from your bought copy of Quake

### Where are the PAK files? - Steam

**Find the location by:**

- Right-click **Quake** in your Steam library and select: **Manage → Browse Local Files**.

Or by browsing to:

- **Steam:** `~/.local/share/Steam/steamapps/common/Quake/rerelease/` 

- **Steam Flatpak:** `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Quake/rerelease/`

---

## Directory Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

**Note:** Ironwail currently stores all data: including saves and mods within `retrodeck/roms/quake/ironwail/`. The engine is hardcoded to use a single path for everything. 

| Type | Directory | Comment |
|:---|:---|:---|
| ROMs   | `retrodeck/roms/quake/ironwail/`                            |                             |
| Base Game   | `retrodeck/roms/quake/ironwail/id1`                            |    id1                         |
| Saves, Game Data, Settings | `retrodeck/roms/quake/ironwail/<game_dir>` | Saves, settings (`ironwail.cfg`) and `.pak` files are stored in each respective `<game_dir>` subdirectory. |


---

## System Settings Are Per Game / Mod

Ironwail stores settings separately for the base game and each installed mod.

A central configuration is loaded at startup trying to provide compatible controls, but mods may add their own settings or overrides.

As a result, settings such as **display resolution, graphics, keyboard controls and mouse controls** may need to be configured separately for each mod.

---

## How-to: Play Quake via Ironwail on RetroDECK

Make sure all the game files are at their proper location **Read Above**.

### Quake & Expansions

**Example:**

`id1.quake` will launch `Quake`.
`dopa.quake` will launch `Dimension of the Past`.

1. Navigate to `retrodeck/roms/quake`.
2. Create an empty file named `<GameID>.quake`.
3. Launch **Quake** from RetroDECK.
4. Open RetroDECK and in ES-DE highlight **`<GameID>`**, Example: **id1** .
5. Open the **Main Menu** and select **Edit This Games Metadata**.
6. Change the **Name** field to `Quake`.
7. Save the changes and launch the expansion from RetroDECK.

---

## How-to: Play Quake Mods in RetroDECK

Ironwail supports many types of mods

**The following installation steps apply to all mods:**

1. Download the mod from its respective source.
2. Extract the mod archive to `retrodeck/roms/quake/ironwail/<ModID>/`.
3. Ensure the mod files are located directly in `retrodeck/roms/quake/ironwail/<ModID>/` and are not nested inside additional subdirectories.

### Built-in MOD Compatibility

Ironwail have built-in support fort he following mods and they can be downloaded from the built-in mod downloader from the main menu.

| Mod Name | ModID | Path |
|---|---|---|
| Beyond Belief | `bbelief` | `retrodeck/roms/quake/ironwail/bbelief` |
| Contract Revoked | `contract` | `retrodeck/roms/quake/ironwail/contract` |
| Dark Triad | `darktriad` | `retrodeck/roms/quake/ironwail/darktriad` |
| Deathmatch Dimension | `dmd` | `retrodeck/roms/quake/ironwail/dmd` |
| Elder World Jam | `sm218` | `retrodeck/roms/quake/ironwail/sm218` |
| Empire of Disorder | `eod` | `retrodeck/roms/quake/ironwail/eod` |
| Epochs of Enmity | `eoe` | `retrodeck/roms/quake/ironwail/eoe` |
| Euclid's Nightmare | `euclid` | `retrodeck/roms/quake/ironwail/euclid` |
| Honey | `honey` | `retrodeck/roms/quake/ironwail/honey` |
| IKSPQ | `ikspq` | `retrodeck/roms/quake/ironwail/ikspq` |
| Insomnia | `insomnia` | `retrodeck/roms/quake/ironwail/insomnia` |
| Koohoo Retro Jam | `koohoojam` | `retrodeck/roms/quake/ironwail/koohoojam` |
| Map Jam X: Insomnia | `mapjamx` | `retrodeck/roms/quake/ironwail/mapjamx` |
| Operation: Urth Majik | `oum` | `retrodeck/roms/quake/ironwail/oum` |
| Punishment Due | `pun` | `retrodeck/roms/quake/ironwail/pun` |
| QDOOM | `qdoom` | `retrodeck/roms/quake/ironwail/qdoom` |
| Quake 64 | `q64` | `retrodeck/roms/quake/ironwail/q64` |
| Realm of Tiddles | `tiddles` | `retrodeck/roms/quake/ironwail/tiddles` |
| ReProject MOON | `moon` | `retrodeck/roms/quake/ironwail/moon` |
| Rubicon 2 | `rubicon2` | `retrodeck/roms/quake/ironwail/rubicon2` |
| Sacrilege | `sacrilege` | `retrodeck/roms/quake/ironwail/sacrilege` |
| Slave Zero X | `enyo` | `retrodeck/roms/quake/ironwail/enyo` |
| Spiritworld | `spiritworld` | `retrodeck/roms/quake/ironwail/spiritworld` |
| Squire of Time | `squire` | `retrodeck/roms/quake/ironwail/squire` |
| Tainted | `tainted` | `retrodeck/roms/quake/ironwail/tainted` |
| Terra | `terra` | `retrodeck/roms/quake/ironwail/terra` |
| Time to Belong | `ttb` | `retrodeck/roms/quake/ironwail/ttb` |
| Underdark Overbright & Copper | `udob` | `retrodeck/roms/quake/ironwail/udob` |
| Vestige of V’othlog | `vestige` | `retrodeck/roms/quake/ironwail/vestige` |

### Loading mods from the Mods Menu

<img src="../dhewm3-mods-menu.png" width="600" alt="">

Some mods must be loaded manually from the Ironwail Mods menu:

1. Select `Mods`.
2. Select the desired mod to download and install it.

### Make Mods show up in ES-DE as Standalone Game Entries

**Note:** You will need to have downloaded the mod before either from the internet or mods menu.

1. Navigate to `retrodeck/roms/quake`.
2. Create an empty file named `<ModID>.quake`.
3. Open RetroDECK and in ES-DE highlight **`<ModID>`**, Example: **dopa** .
4. Open the **Main Menu** and select **Edit This Games Metadata**.
5. Change the **Name** field to `Dimension of the Past`.
6. Save the changes and launch the expansion from RetroDECK.

**Example:**

`bbelief.quake` will launch `Beyond Belief`.

---

## Ironwail Controls

### ⌨️ Keyboard & 🖱️ Mouse

| Input | Action | Command |
|---|---|---|
| `TAB` | Show scores | `+showscores` |
| `ESCAPE` | Open / close menu | `togglemenu` |
| `SPACE` | Jump | `+jump` |
| `+` | Increase screen size | `sizeup` |
| `,` | Move left | `+moveleft` |
| `-` | Decrease screen size | `sizedown` |
| `.` | Move right | `+moveright` |
| `/` | Next weapon | `impulse 10` |
| `0` | No standard action | `impulse 0` |
| `1` | Axe | `impulse 1` |
| `2` | Shotgun | `impulse 2` |
| `3` | Double-Barreled Shotgun | `impulse 3` |
| `4` | Nailgun | `impulse 4` |
| `5` | Super Nailgun | `impulse 5` |
| `6` | Grenade Launcher | `impulse 6` |
| `7` | Rocket Launcher | `impulse 7` |
| `8` | Thunderbolt | `impulse 8` |
| `=` | Increase screen size | `sizeup` |
| `\` | Mouse look | `+mlook` |
| `` ` `` | Toggle console | `toggleconsole` |
| `A` | Move left | `+moveleft` |
| `C` | Crouch / move down | `+movedown` |
| `D` | Move right | `+moveright` |
| `E` | Move up / swim up | `+moveup` |
| `S` | Move backward | `+back` |
| `T` | Chat | `messagemode` |
| `W` | Move forward | `+forward` |
| `~` | Toggle console | `toggleconsole` |
| `UPARROW` | Move forward | `+forward` |
| `DOWNARROW` | Move backward | `+back` |
| `LEFTARROW` | Turn left | `+left` |
| `RIGHTARROW` | Turn right | `+right` |
| `ALT` | Strafe modifier | `+strafe` |
| `CTRL` | Attack / Fire | `+attack` |
| `SHIFT` | Run / Speed | `+speed` |
| `INS` | Keyboard look | `+klook` |
| `DEL` | Look down | `+lookdown` |
| `PGDN` | Look up | `+lookup` |
| `END` | Center view | `centerview` |
| `PAUSE` | Pause | `pause` |
| `F1` | Help | `help` |
| `F2` | Save menu | `menu_save` |
| `F3` | Load menu | `menu_load` |
| `F4` | Options menu | `menu_options` |
| `F5` | Multiplayer menu | `menu_multiplayer` |
| `F6` | Quick save | `save quick` |
| `F9` | Quick load | `load quick` |
| `F10` | Quit | `quit` |
| `F11` | Zoom in | `zoom_in` |
| `F12` | Screenshot | `screenshot` |
| `PRINTSCREEN` | Screenshot | `screenshot` |
| `MOUSE1` | Attack / Fire | `+attack` |
| `MOUSE2` | Jump | `+jump` |
| `MWHEELUP` | Previous weapon | `impulse 12` |
| `MWHEELDOWN` | Next weapon | `impulse 10` |

## 🎮 Gamepad

| Input | Xbox - Steam Deck / Playstation / Nintendo | Action | Command |
|---|---|---|---|
| East button | B / ○ / A | Jump | `_moveUp` |
| West button | X / □ / Y | Crouch | `_moveDown` |
| North button | Y / △ / X | Reload | `_impulse13` |
| Right stick click | R3 | Zoom | `_zoom` |
| Left shoulder | LB / L1 / L | Flashlight | `_impulse11` |
| D-pad Up | ↑ | PDA / Scoreboard | `_impulse19` |
| D-pad Left | ← | Previous weapon | `_impulse15` |
| D-pad Right | → | Next weapon | `_impulse14` |
| Left stick ↑ | ↑ | Move forward | `_forward` |
| Left stick ↓ | ↓ | Move backward | `_back` |
| Left stick ← | ← | Move left | `_moveLeft` |
| Left stick → | → | Move right | `_moveRight` |
| Right stick ↑ | ↑ | Look up | `_lookUp` |
| Right stick ↓ | ↓ | Look down | `_lookDown` |
| Right stick ← | ← | Turn left | `_left` |
| Right stick → | → | Turn right | `_right` |
| Left trigger | LT / L2 / ZL | Run / Sprint | `_speed` |
| Right trigger | RT / R2 / ZR | Attack / Fire | `_attack` |


---

## Cheats

### Classic Quake Cheats

| Cheat / Command       | Effect | Comments |
|-----------------------|--------|----------|
| `god`                 | Invincibility | |
| `impulse 9`           | All weapons + full ammo + keys runes | |
| `impulse 11`          | Adds rune (repeat for several) | |
| `impulse 255`         | Quad damage | |
| `fly`                 | Fly mode | |
| `noclip`              | Walk through walls | |
| `notarget`            | Monsters don’t attack unless provoked | |
| `give h #`            | Set health to # | |
| `give s #`            | Set shotgun shells | |
| `give n #`            | Set nails | |
| `give r #`            | Set rockets | |
| `give c #`            | Set cells | |
| `give 3`              | Gives Super Shotgun | |
| `give 4`              | Gives Nailgun | |
| `give 5`              | Gives Super Nailgun | |
| `give 6`              | Gives Grenade Launcher | |
| `give 7`              | Gives Rocket Launcher | |
| `give 8`              | Gives Thunderbolt | |
| `map e#m#`            | Warp to episode/mission | |

---

### Ironwail / Quake Console Commands

| Command              | Effect | Comments |
|----------------------|--------|----------|
| `~` (tilde)          | Open console | |
| `map <mapname>`      | Load specific map | |
| `changelevel <map>`  | Change level without resetting | |
| `skill #`            | Set difficulty level | |
| `sv_gravity #`       | Set game gravity | |
| `kill`               | Suicide / restart level | |
| `status`             | Show status info | |
| `version`            | Show engine version | |
| `bind <key> "<cmd>"` | Bind key to command | |

---
