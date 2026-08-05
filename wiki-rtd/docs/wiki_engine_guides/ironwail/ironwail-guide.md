# Guide: Ironwail

<img src="../../../wiki_images/logos/quakespasm-logo.png" width="150" alt="Quakespasm logo">

Ironwail is a Quake engine fork based on QuakeSpasm.

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
| .pak| Quake PAK file |


---

## Does Ironwail require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

However, you do need copies of the official **Quake** game data (PAK files).

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

- **Steam:** `~/.local/share/Steam/steamapps/common/Quake/id1/` 

- **Steam Flatpak:** `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Quake/id1/`

---

## Directory Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

**Note:** Ironwail currently stores all data: including saves and mods within `retrodeck/roms/quake/ironwail/`. The engine is hardcoded to use a single path for everything. 

The RetroDECK team has suggested to the Ironwail developers that future versions support more flexible, dynamic paths. 

If such an update is implemented, the data will be relocated to the corresponding folders within RetroDECK.

| Type | Directory | Comment |
|:----:|:--------------------------------------|:-----------------------------------------------|
| ROMs       | `retrodeck/roms/quake/ironwail/id1`          |  `pak0.pak`  `pak1.pak`.                                                                       |
| Settings   | `retrodeck/roms/quake/ironwail/id1`          | `ironwail.cfg`                                                                    |
| Mods       | `retrodeck/roms/quake/ironwail/mods/<dir>`   | Each downloaded mod resides in its own subdirectory.                                           |
| Saves      | `retrodeck/roms/quake/ironwail/<dir>`        | Base game saves live in `id1/`; mod saves live in each respective `mods/<dir>` subdirectory. |

---

## How-to: Play Quake via Ironwail on RetroDECK

### Step 1: Put Required Files

**Note:** Filenames are case-sensitive. Ensure `PAK0.PAK` is renamed to `pak0.pak` and `PAK1.PAK` to `pak1.pak`.

| File Name | Description |
|-----------|----------------|
| pak0.pak| Quake PAK0 file |
| pak1.pak| Quake PAK1 file |

**Placement:**

`retrodeck/roms/quake/ironwail/id1`

### Step 2: Create Quake.pak

Create a file named `Quake.pak` in:

`retrodeck/roms/quake/`

### Step 3: Configuring the Alternative Emulator in RetroDECK

1. Launch **RetroDECK**.
2. Navigate to the **Quake** menu and **Quake** entry.
3. Open the **Edit This Game's Metadata** menu.
4. Select **Alternative Emulator**.
5. Choose **`Ironwail (Standalone)`** from the list.
6. Save.

RetroDECK will now launch Quake using Ironwail.

---

## Ironwail Controls

### Controls: Keyboard ⌨️ & Mouse 🖱️ 


| Input | Action |
|:------|:-------|
| <kbd>W</kbd> / <kbd>↑</kbd> | Move Forward |
| <kbd>S</kbd> / <kbd>↓</kbd> | Move Backward |
| <kbd>A</kbd> / <kbd>,</kbd> | Strafe Left |
| <kbd>D</kbd> / <kbd>.</kbd> | Strafe Right |
| <kbd>←</kbd> | Turn Left |
| <kbd>→</kbd> | Turn Right |
| <kbd>Space</kbd> | Jump |
| <kbd>Shift</kbd> | Run (Speed Modifier) |
| <kbd>Alt</kbd> | Strafe Modifier |
| <kbd>E</kbd> | Swim/Fly Up |
| <kbd>C</kbd> | Swim/Fly Down |
| <kbd>Left Mouse</kbd> / <kbd>Ctrl</kbd> | Attack / Fire Weapon |
| <kbd>Mouse Wheel ↑</kbd> | Previous Weapon |
| <kbd>Mouse Wheel ↓</kbd> | Next Weapon |
| <kbd>0</kbd> | Select Weapon 0 |
| <kbd>1</kbd> | Select Weapon 1 |
| <kbd>2</kbd> | Select Weapon 2 |
| <kbd>3</kbd> | Select Weapon 3 |
| <kbd>4</kbd> | Select Weapon 4 |
| <kbd>5</kbd> | Select Weapon 5 |
| <kbd>6</kbd> | Select Weapon 6 |
| <kbd>7</kbd> | Select Weapon 7 |
| <kbd>8</kbd> | Select Weapon 8 |
| <kbd>/</kbd> | Next Weapon |
| <kbd>\</kbd> | Mouse Look |
| <kbd>Insert</kbd> | Keyboard Look |
| <kbd>Page Down</kbd> | Look Up |
| <kbd>Delete</kbd> | Look Down |
| <kbd>End</kbd> | Center View |
| <kbd>F11</kbd> | Zoom In |
| <kbd>Tab</kbd> | Show Scoreboard |
| <kbd>Esc</kbd> | Open Menu |
| <kbd>T</kbd> | Open Chat |
| <kbd>`</kbd> / <kbd>~</kbd> | Toggle Console |
| <kbd>Pause</kbd> | Pause Game |
| <kbd>+</kbd> / <kbd>=</kbd> | Increase Screen Size |
| <kbd>-</kbd> | Decrease Screen Size |
| <kbd>F1</kbd> | Help |
| <kbd>F2</kbd> | Save Game Menu |
| <kbd>F3</kbd> | Load Game Menu |
| <kbd>F4</kbd> | Options Menu |
| <kbd>F5</kbd> | Multiplayer Menu |
| <kbd>F6</kbd> | Quick Save |
| <kbd>F9</kbd> | Quick Load |
| <kbd>F10</kbd> | Quit Game |
| <kbd>F12</kbd> / <kbd>Print Screen</kbd> | Screenshot |


---

### Controls: 🎮 Gamepad

| Input | Action |
|:------|:-------|
| <kbd>RT</kbd> | Attack / Fire Weapon |
| <kbd>LT</kbd> / <kbd>B</kbd>  | Jump |
| <kbd>LB</kbd> | Previous Weapon |
| <kbd>RB</kbd> | Next Weapon |
| <kbd>L3</kbd> | Zoom |
| <kbd>R3</kbd> | Center View |
| <kbd>D-Pad ↑</kbd> | Swim/Fly Up |
| <kbd>D-Pad ↓</kbd> | Swim/Fly Down |
| <kbd>D-Pad ←</kbd> | Show Scoreboard |
| <kbd>Menu</kbd> | Pause Game |


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
