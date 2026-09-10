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

### Base Game

Ironwail supports both the **2021 rerelease** and the **original release** of Quake.
The **OG release is recommended**.

| Name | File | ID | Path | MD5 | Comment |
|---|---|---|---|---|---|
| Quake Base Game | `pak0.pak` | `id1` | `retrodeck/roms/quake/ironwail/id1` | `f6aa4f85e686e364b24e16928c51e05b` | 2021 Rerelease |
| Quake Base Game | `PAK0.PAK` | `id1` | `retrodeck/roms/quake/ironwail/id1` | `5906e5998fc3d896ddaf5e6a62e03abb` | Original Release |
| Quake Mission Data | `PAK1.PAK` | `id1` | `retrodeck/roms/quake/ironwail/id1` | `d76b3e5678f0b64ac74ce5e340e6a685` | Original Release |

### Official Episodes & Expansions

| Name | File | ID | Path | MD5 | Comment |
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

Create a file named `Quake.quake` in:

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

## Built-in mods

These mods can be downloaded from the built-in mod downloader from the main menu.

| Mod Name | ID | Path |
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


---

## Ironwail Controls

### Controls: ⌨️ Keyboard & 🖱️ Mouse


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
