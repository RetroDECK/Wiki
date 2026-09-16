# Guide: UZDoom

<img src="../../../wiki_images/logos/uzdoom-logo.svg" width="75" alt="Uzdoom logo">

UZDoom is the open source source port engine for ID Software's older games like DOOM, DOOM2, HEXEN and HERETIC with mod support.

**UZDoom replaces GZDoom starting with RetroDECK 0.11.0**

The content in this section is also compatible with **GZDoom** and applies to older RetroDECK versions that used GZDoom.


---

### UZDoom Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| UZDoom - Github | [Link](https://github.com/ZDoom/UZDoom) |
| UZDoom - Github | [Link](https://github.com/UZDoom/UZDoom) |
| ZDoom - Forums | [Link](https://forum.zdoom.org/) |
| ZDoom - Web Page | [Link](https://zdoom.org/index) |


---

## Where to put the games?

DOOM games should be put under the `retrodeck/roms/doom/` directory.

---

## What file formats does UZDoom support?

| File Type | What is it? | Comments |
| :--- | :---: | :---: |
| .doom | RetroDECK DOOM parser file | Use it with other files **(recommended)** |
| .wad | Doom level resource file | Where's All the Data? |
| .iwad | Internal WAD file | |
| .pwad | Patch WAD file | Has priority over .wad |
| .kpf | KEX Engine zip replacement | |
| .pk3 | Enhanced engine zip container | .zip file archive |
| .ipk3 | Internal pk3 | |
| .pk4 | id Tech 4 zip container | .zip file archive |
| .pk7 | 7-Zip compressed container | .7zip file archive |
| .pke | Eternity Engine mod zip | Made for the Eternity Engine |
| .epk | EDGE Engine mod zip | Made for the EDGE engine |
| .deh | DeHackEd file | Edits hardcoded parts of the DOOM engine |
| .bex | Enhanced DeHackEd file | Has more features than .deh and used by various ports |
| .lev | Level renaming file | Renames levels of a .pwad |
| .lmp | Doom data unit | |
| .mus | Doom music file | Used by `DOOM`, `Heretic`, `Hexen` and `Strife` |

---


## Does UZDoom require BIOS, Game Data or Firmware files?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes, you do need copies of the official **DOOM** game data (WAD files) or you can use Freedoom.

### Where to buy official DOOM?

Below is a combined table containing both **Steam** and **GOG** purchase links for all relevant DOOM titles.

| Game / Bundle            | Steam Link                                                              | GOG Link                                                               |
|--------------------------|-------------------------------------------------------------------------|------------------------------------------------------------------------|
| DOOM Classic Bundle      | [Steam](https://store.steampowered.com/bundle/27490/DOOM_Classic_Bundle/)| -                                                                      |
| DOOM + DOOM II           | [Steam](https://store.steampowered.com/app/2280/DOOM__DOOM_II/)        | [GOG](https://www.gog.com/en/game/doom_doom_ii)                       |
| DOOM 64                  | [Steam](https://store.steampowered.com/app/1148590/DOOM_64/)            | [GOG](https://www.gog.com/en/game/doom_64)                             |

**Note:** *DOOM + DOOM II* is sufficient for use with UZDoom. Additional titles are optional; however, *DOOM 64* is required for certain mods. Purchasing the Classic Bundle may be more cost-effective.

### Freedoom

**Freedoom** is a free, open-source project that provides all the game data needed to create a fully playable game using the Doom engine.

It is compatible with most community-made levels, graphics, music and mods created for the original DOOM games.

**Website:** [Freedoom](https://freedoom.github.io/)

---


## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| Type   | Directory                                         | Comment                     |
|:------:|:-------------------------------------------------|:----------------------------|
| Audio FM Banks Storage | `retrodeck/storage/UZDoom/audio/fm_banks/` |                             |
| Audio Soundfonts | `retrodeck/storage/UZDoom/audio/soundfonts/` |                             |
| BIOS   | `retrodeck/bios/UZDoom/`                         |                             |
| Config | `~/.var/app/net.retrodeck.retrodeck/config/UZDoom/` | UZDoom.ini                  |
| Data   | `~/.var/app/org.retrodeck.retrodeck/data/UZDoom/`   |                             |
| ROMs   | `retrodeck/roms/doom/`                            |                             |
| Saves  | `retrodeck/saves/doom/`                      |                             |

---


## What IWADs is UZDoom looking for?

The [IWADs](https://doomwiki.org/wiki/IWAD) UZDoom requires to run are listed below:

| File                  | What is it?                                     | Comments                        |
|-----------------------|------------------------------------------------|---------------------------------|
| ACTION2.WAD           | Action Doom 2: Urban Brawl                     |                                 |
| BLASPHEM.WAD          | Blasphemer                                     |                                 |
| CHEX.WAD              | Chex Quest                                     |                                 |
| CHEX3.WAD             | Chex Quest 3                                   |                                 |
| DELAWEARE.WAD         | Delaweare                                      |                                 |
| DOOM.WAD              | Doom - Shareware                                 |                                 |
| DOOM1.WAD             | Doom                                           |                                 |
| DOOM2.WAD             | Doom II: Hell on Earth                          |                                 |
| DOOM2F.WAD            | Doom II French                                 |                                 |
| DOOM64.WAD            | Doom 64                                        | Needs to be Patched   |
| DOOM_COMPLETE.PK3     | WadSmoosh Merged Doom                          |                                 |
| FREEDOOM1.WAD         | Freedoom Phase 1                               |                                 |
| FREEDOOM2.WAD         | Freedoom Phase 2                               |                                 |
| FREEDM.WAD            | Freedoom Deathmatch                            |                                 |
| HEXDD.WAD             | Hexen: Deathkings of the Dark Citadel         | Needs HEXEN.WAD to play         |
| HEXEN.WAD             | Hexen: Beyond Heretic                           |                                 |
| HACX.WAD              | HACX                                           |                                 |
| HARM1.WAD             | Harmony                                        |                                 |
| HERETIC.WAD           | Heretic: Shadow of the Serpent Riders         |                                 |
| HERETIC1.WAD          | Heretic - Shareware                              |                                 |
| PLUTONIA.WAD          | Plutonia Experiment                            |                                 |
| ROTWB.WAD             | Rise Of The Wool Ball                           |                                 |
| SQUARE1.PK3           | The Adventures of Square                        |                                 |
| STRIFE0.WAD           | Strife - Shareware                                |                                 |
| STRIFE1.WAD           | Strife                                         |                                 |
| TNT.WAD               | TNT: Evilution                                 |                                 |
| VOICES.WAD            | Strife Voices                                  | Needs STRIFE1.WAD to be used    |
| WADSMOOSH+.IPK3       | WadSmoosh+ Merged Doom                         |                             |



---

## Where can I find more WADs?

Non-official WADs (mods) are available across the internet on old forums, GitHub and various websites.

Here are some popular sources:

| Source       | Description                                          | Link                                                                 |
|--------------|------------------------------------------------------|----------------------------------------------------------------------|
| Doomworld    | Oldest DOOM community; hosts the annual Cacowards.  | [Doomworld: Cacowards](https://www.doomworld.com/cacowards)         |
| Doomworld    | Large collection of WAD files.                      | [Doomworld: Files](https://www.doomworld.com/files/)                 |
| Doomworld    | Legacy repository of user-submitted WADs.          | [Doomworld: ID Games (Legacy)](https://www.doomworld.com/idgames/)  |
| Doomworld    | Community forum for discussion, help and mods.     | [Doomworld: Forum](https://www.doomworld.com/forum/)                 |
| Doomwiki     | Wiki listing notable WADs and mods.                 | [Doomwiki: List of notable WADs](https://doomwiki.org/wiki/List_of_notable_WADs) |
| ModDB        | Modding community with many DOOM mods.              | [ModDB: DOOM Mods](https://www.moddb.com/games/doom/mods)            |

---

## UZDoom Controls

**Known Issues**

- Multiple controllers for local multiplayer don't work well due to bugs between UZDoom and Steam Input.
- Set the primary controller as player one, especially if using an external controller with the Steam Deck. This prevents input loops.
- Avoid pressing "Save configur## Where to put the games?

WiiU games should be put under the `retrodeck/roms/wiiu/` directory.
ation" in the UZDoom options menu if you have mods that add extra controls, as it will wipe those extra controls. Inputs will still be saved without pressing save.


### ⌨️ Keyboard and 🖱️ Mouse

| Action | Input | Command |
|---|---|---|
| Alt Attack | `MOUSE2` | `+altattack` |
| Attack | `MOUSE1` | `+attack` |
| Center view | `END` | `centerview` |
| Chat | `T` | `messagemode` |
| Crouch | `C` | `+crouch` |
| Gamma | `F11` | `bumpgamma` |
| Inventory use | `ENTER` | `invuse` |
| Land | `HOME` | `land` |
| Look down | `DEL` | `+lookdown` |
| Look up | `PGDN` | `+lookup` |
| Map clear marks | `C` | `am_clearmarks` |
| Map grid toggle | `G` | `am_togglegrid` |
| Map mark | `M` | `am_setmark` |
| Map texture toggle | `P` | `am_toggletexture` |
| Map toggle | `TAB` | `togglemap` |
| Map zoom in | `EQUALS` | `+am_zoomin` |
| Map zoom in | `KP+` | `+am_zoomin` |
| Map zoom out | `-` | `+am_zoomout` |
| Map zoom out | `KP-` | `+am_zoomout` |
| Move backward | `DOWNARROW` | `+back` |
| Move backward | `S` | `+back` |
| Move forward | `UPARROW` | `+forward` |
| Move forward | `W` | `+forward` |
| Move left | `A` | `+moveleft` |
| Move left | `LEFTARROW` | `+moveleft` |
| Move right | `D` | `+moveright` |
| Move right | `RIGHTARROW` | `+moveright` |
| Pan map down | `DOWNARROW` | `+am_pandown` |
| Pan map left | `LEFTARROW` | `+am_panleft` |
| Pan map right | `RIGHTARROW` | `+am_panright` |
| Pan map up | `UPARROW` | `+am_panup` |
| Pause | `PAUSE` | `pause` |
| Previous weapon | `MWHEELUP` | `weapprev` |
| Quick load | `F9` | `quickload` |
| Quick save | `F6` | `quicksave` |
| Run / Sprint | `SHIFT` | `+speed` |
| Screenshot | `SYSRQ` | `screenshot` |
| Show scores | `\` | `+showscores` |
| Show scores | `SCROLL` | `+showscores` |
| Skip song | `.` | `di_skipSong` |
| Song previous | `,` | `di_prevSong` |
| Slot 0 | `0` | `slot 0` |
| Slot 1 | `1` | `slot 1` |
| Slot 2 | `2` | `slot 2` |
| Slot 3 | `3` | `slot 3` |
| Slot 4 | `4` | `slot 4` |
| Slot 5 | `5` | `slot 5` |
| Slot 6 | `6` | `slot 6` |
| Slot 7 | `7` | `slot 7` |
| Slot 8 | `8` | `slot 8` |
| Slot 9 | `9` | `slot 9` |
| Toggle console | `` ` `` | `toggleconsole` |
| Toggle follow | `F` | `am_togglefollow` |
| Toggle infrared | `I` | `di_toggleinfrared` |
| Toggle messages | `F8` | `togglemessages` |
| Toggle run | `CAPSLOCK` | `toggle cl_run` |
| Use | `E` | `+use` |
| Use item | `F` | `di_useitem_bind` |
| Weapon next | `MWHEELDOWN` | `weapnext` |
| Weapon size down | `-` | `sizedown` |
| Weapon size up | `EQUALS` | `sizeup` |
| Zoom map 1.2× | `MWHEELUP` | `am_zoom 1.2` |
| Zoom map −1.2× | `MWHEELDOWN` | `am_zoom -1.2` |

### 🎮 Gamepad

The controls are semi-based on the inputs from `Timesplitters: Future Perfect` for the PlayStation 2.

| Action | Xbox - Steam Deck / Playstation / Nintendo | Input | Command |
|---|---|---|---|
| Alt Attack | RB / R1 / R | `JOY6` | `+altattack` |
| Attack | RT / R2 / ZR | `AXIS6PLUS` | `+attack` |
| Crouch | X / □ / Y | `JOY3` | `+crouch` |
| Inventory next | D-pad ↑ | `POV1UP` | `invnext` |
| Inventory use | D-pad ↓ | `POV1DOWN` | `invuse` |
| Jump | B / ○ / A | `JOY2` | `+jump` |
| Look down | Right Stick ↓ | `AXIS5PLUS` | `+lookdown` |
| Look up | Right Stick ↑ | `AXIS5MINUS` | `+lookup` |
| Main menu | Menu / Options / + | `JOY8` | `menu_main` |
| Map toggle | View / − / Select | `JOY7` | `togglemap` |
| Move backward | Left Stick ↓ | `AXIS2PLUS` | `+back` |
| Move forward | Left Stick ↑ | `AXIS2MINUS` | `+forward` |
| Move left | Left Stick ← | `AXIS1MINUS` | `+moveleft` |
| Move right | Left Stick → | `AXIS1PLUS` | `+moveright` |
| Toggle run | — | `JOY10` | `toggle cl_run` |
| Turn 180° | — | `JOY11` | `turn180` |
| Turn left | Right Stick ← | `AXIS4MINUS` | `+left` |
| Turn right | Right Stick → | `AXIS4PLUS` | `+right` |
| Use | A / × / B | `JOY1` | `+use` |
| Use item | Y / △ / X | `JOY5` | `di_useitem_bind` |
| Weapon next | D-pad → | `POV1RIGHT` | `weapnext` |
| Weapon previous | D-pad ← | `POV1LEFT` | `weapprev` |

---

## Mod Controls

Some mods provide additional actions that require extra controller or keyboard bindings. This is particularly common with [Project Brutality](https://project-brutality.com/) and [Brutal Doom](https://www.moddb.com/mods/brutal-doom) based mods.

You can change any default bindings provided by RetroDECK. If the bindings become misconfigured, reset UZDoom using the **Configurator**.

**Example: Optional Extra Bindings**

RetroDECK ships with the following optional bindings by default used by some mods:

| Action | Xbox - Steam Deck / PlayStation / Nintendo | PC | Comment |
|:--|:--:|:--:|:--|
| Dash | R3 | `Shift` | |
| Quick Melee / Special Action | LB / L1 / L | `Q` | |
| Reload | Y / △ / X | `R` | |
| Throw Grenade / Second Special Action | LT / L2 / ZL | `G` | |


### ⌨️ Keyboard and 🖱️ Mouse

- **Q / E:** Suitable for action-oriented functions that require frequent access.
- **F:** Suitable for context-sensitive actions or interactions.
- **G:** Suitable for grenades or other secondary attacks.
- **R:** Typically used for Reload.
- **Shift / Ctrl / Alt:** Suitable for movement modifiers or used secondary actions.
- **Number keys:** Useful for additional weapons or less frequently accessed functions.
- **Unused letter keys:** Suitable for mod-specific actions and extra menus.

### 🎮 Gamepad

The following inputs are generally available for additional bindings:

- **L1 / LB:** Suitable for action-oriented functions that require frequent access.
- **L2 / LT:** Suitable for another frequently accessed action.
- **D-pad Up:** Suitable for infrequent functions, such as extra menus or item use.
- **D-pad Down:** Suitable for infrequent functions, such as extra menus or item use.
- **R3:** Suitable for movement modifiers or used secondary actions.
- **L3:** Suitable for movement modifiers or used secondary actions.

---

## I have bought the games how do I get my files?

Read the:

[How to: Extract Doom iWads](extract-doom-wads.md)

---

## I want to play doom with mods

Read the:

[RetroDECK .doom file for modding](retrodeck-doomfile.md)

---

## WadSmoosh+ and WADSMOOSH+.IPK3 

`wadsmoosh+.ipk3` is the file generated by [WadSmoosh+](https://github.com/vanessakindell/wadsmoosh-plus).

WadSmoosh+ merges **DOOM, DOOM II and all supported official add-ons** into a single unified IPK3, allowing you to select any campaign without loading individual WADs. 

This makes using mods and switching between episodes much easier.

### How to create: wadsmoosh+.ipk3

1. Download the latest release of WadSmoosh+.
2. Place **all required WAD files** into the `source_wads` folder.
3. Run the script from a terminal:`./wadsmoo.sh`. 
4. Check logs for errors and accommodate.
5. Move the file `wadsmoosh+.ipk3` into the roms/doom folder.


### Wads supported by WadSmoosh+

| WAD File         | Category / Source                                   | Description                                   |
|------------------|------------------------------------------------------|-----------------------------------------------|
| attack.wad       | Master Levels for Doom II                            | Master Levels: Attack                         |
| betray.wad       | Xbox Doom Bonus Levels                               | Xbox-exclusive bonus map.                     |
| blacktwr.wad     | Master Levels for Doom II                            | Master Levels: Black Tower                    |
| bloodsea.wad     | Master Levels for Doom II                            | Master Levels: Bloodsea Keep                  |
| canyon.wad       | Master Levels for Doom II                            | Master Levels: Canyon                         |
| catwalk.wad      | Master Levels for Doom II                            | Master Levels: The Catwalk                    |
| combine.wad      | Master Levels for Doom II                            | Master Levels: The Combine                    |
| doom.wad         | Doom / Ultimate Doom                                 | Original Doom IWAD.                           |
| doom2.wad        | Doom II                                              | Original Doom II IWAD.                        |
| doom2bfg.wad     | Doom II BFG Edition                                  | BFG Edition extra content.                    |
| doom2unity.wad   | Unity Doom II                                        | Unity version of Doom II (rename **doom2.wad** ➝ **doom2unity.wad**). |
| doom3do.wad      | Doom 3DO Soundtrack                                  | 3DO music WAD.                                |
| doomunity.wad    | Unity Doom                                           | Unity version of Doom (rename **doom.wad** ➝ **doomunity.wad**). |
| doomzero.wad     | Doom Zero                                            | Unity-released megawad.                       |
| extras.wad       | Unity Add-ons                                        | Bonus assets for Unity ports.                 |
| fistula.wad      | Master Levels for Doom II                            | Master Levels: The Fistula                    |
| freedoom1.wad    | Freedoom Phase 1                                     | Free replacement Doom IWAD.                   |
| freedoom2.wad    | Freedoom Phase 2                                     | Free replacement Doom II IWAD.                |
| garrison.wad     | Master Levels for Doom II                            | Master Levels: The Garrison                   |
| geryon.wad       | Master Levels for Doom II                            | Master Levels: Geryon: 6th Canto of Inferno   |
| hell2pay.wad     | Hell To Pay                                          | Commercial total conversion.                  |
| id1.wad          | Legacy of Rust (KEX re-release)                      | Extra IWAD-style file.                        |
| id1-res.wad      | Legacy of Rust (KEX re-release)                      | Resource file.                                |
| id24res.wad      | Legacy of Rust (KEX re-release)                      | Resource file.                                |
| iddm1.wad        | Legacy of Rust (KEX re-release)                      | Deathmatch pack.                              |
| jptr_v40.wad     | The Lost Episodes of Doom                            | Early commercial fan episodes.                |
| manor.wad        | Master Levels for Doom II                            | Master Levels: Titan Manor                   |
| mephisto.wad     | Master Levels for Doom II                            | Master Levels: Mephisto’s Maosoleum           |
| minos.wad        | Master Levels for Doom II                            | Master Levels: Minos’ Judgement               |
| neis.wad         | No End in Sight                                      | Ultimate Doom megawad.                        |
| nerve.wad        | No Rest for the Living                               | Official Doom II episode.                     |
| nessus.wad       | Master Levels for Doom II                            | Master Levels: Nessus                         |
| paradox.wad      | Master Levels for Doom II                            | Master Levels: Paradox                        |
| perdgate.wad     | Perdition's Gate                                     | Commercial add-on.                            |
| pl2.wad          | Plutonia 2                                           | Fan-made Plutonia sequel.                     |
| prcp.wad         | Plutonia Revisited                                   | Community Plutonia project.                   |
| plutonia.wad     | Final Doom                                           | Plutonia IWAD.                                |
| sewers.wad       | Xbox Doom Bonus Levels                               | Xbox-exclusive bonus map.                     |
| sigil.wad        | Sigil                                                | Romero’s Episode 5: Sigil.                       |
| sigil2.wad       | Sigil II                                             | Romero’s followup to Sigil.                     |
| sigil_shreds.wad | Sigil (Music Add-on)                                 | Optional enhanced soundtrack.                 |
| subspace.wad     | Master Levels for Doom II                            | Master Levels: Subspace                       |
| subterra.wad     | Master Levels for Doom II                            | Master Levels: Subterra                       |
| teeth.wad        | Master Levels for Doom II                            | Master Levels: The Express Elevator to Hell + Bad Dream  |
| tnt.wad          | Final Doom                                           | TNT IWAD.                                     |
| tnt2_beta6.wad   | TNT: Devilution                                      | Fan-made TNT sequel.                          |
| tntr.wad         | TNT: Revilution                                      | Community TNT sequel.                         |
| ttrap.wad        | Master Levels for Doom II                            | Master Levels: Trapped on Titan               |
| vesperas.wad     | Master Levels for Doom II                            | Master Levels: Vesperas: 7th Canto of Inferno |
| virgil.wad       | Master Levels for Doom II                            | Master Levels: Virgil’s Lead: 3rd Canto of Inferno |

---

## Cheats

### Classic Doom I & II Cheats

| Cheat Code | Effect | Comments |
|------------|--------|----------|
| `iddqd`    | God Mode (Invulnerability) | |
| `idkfa`    | All Weapons + Ammo + Keys | |
| `idfa`     | All Weapons + Ammo (no keys) | |
| `idclip`   | No Clipping (walk through walls) | |
| `iddt`     | Full Automap | |
| `idchoppers` | Chainsaw | |
| `idclev XX` | Warp to Level (Doom I: E#M#, Doom II: ##) | |
| `idmypos`  | Show Coordinates & Angle | |
| `idbeholdv` | Invulnerability Power-Up | |
| `idbeholds` | Berserk (Strength) | |
| `idbeholdi` | Partial Invisibility | |
| `idbeholdr` | Radiation Suit | |
| `idbeholda` | Automap Power-Up | |
| `idbeholdl` | Light Amplification Goggles | |

---

### UZDoom-Specific Console Commands

| Command | Effect | Comments |
|---------|--------|----------|
| `~` / `console` | Open Developer Console | |
| `god` | God Mode | |
| `noclip` | No Clipping | |
| `give all` | All Weapons/Items | |
| `give ammo` | Max Ammo | |
| `give keys` | All Keys | |
| `map mapname` | Load Specific Map (e.g., `map map07`) | |

---


## FAQ: UZDoom 

| **Question** | **Answer** |
|--------------|------------|
| **In the DOOM Mod - Project Brutality, why is the visor GUI disabled by default in the RetroDECK configuration?** | The visor GUI is disabled by default because it does not scale well on smaller displays like the Steam Deck and can cause the interface to appear cramped. Users who prefer this feature may re-enable it in the settings menu. |

---


## Troubleshooting

| Topic | Issue | Solution |
|---|---|---|
| **Steam Input: Looping Inputs** |  Steam Input conflict causing input looping in menus. | Set the controller as **Player 1** or use Steam's **Reorder Controllers**.  |

---
