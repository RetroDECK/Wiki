# Guide: GZDoom

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="75">

GZDoom is the open source source port / game engine for ID Software's older games like DOOM, DOOM2, HEXEN and HERETIC or it's own unique games.

---

### GZDoom Links:

[ZDoom Web Page](https://zdoom.org/index)

[GZDoom Github](https://github.com/ZDoom/gzdoom)

[ZDoom Forums](https://forum.zdoom.org/)

---

## Where to put the games?

DOOM games should be put under the `retrodeck/roms/doom/` directory.

---

## What file formats does GZDoom support?

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


## Does GZDOOM require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No, but will need copies of DOOM. 

### Where to buy official DOOM?

To get started, you will need to purchase `DOOM` and `DOOM II`.

While `DOOM 3` and `DOOM 64` 64 are not necessary, sometimes it's more cost-effective to buy the entire bundle.

**GOG Links:**

- [DOOM + DOOM II - GOG](https://www.gog.com/en/game/doom_doom_ii)
- [DOOM 64 - GOG](https://www.gog.com/en/game/doom_64)
- [DOOM 3 - GOG](https://www.gog.com/en/game/doom_3)

**Steam Links:**

- [DOOM Classic Bundle - Steam](https://store.steampowered.com/bundle/27490/DOOM_Classic_Bundle/)
- [DOOM + DOOM II - Steam](https://store.steampowered.com/app/2280/DOOM__DOOM_II/)
- [DOOM 64 - Steam](https://store.steampowered.com/app/1148590/DOOM_64/)
- [DOOM 3 - Steam](https://store.steampowered.com/app/208200/DOOM_3/)

### Freedoom

The Freedoom project aims to provide all the content needed to form a complete, entirely free/libre game for the Doom engine.

It is designed to be compatible with most custom levels, music, graphics, and other modifications ("mods") made for the original Doom games by Doom fans and artists over the decades.

[FreeDOOM](https://freedoom.github.io/)

---


## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/doom/` |                               |  
| Saves Folder |`retrodeck/saves/wiiu/doom/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/gzdoom/`         |   `gzdoom.ini`|
| Data Folder |`~/.var/app/org.retrodeck.retrodeck/data/gzdoom` |   |

---


## What are iwads gzdoom is looking for?

The [IWADS](https://doomwiki.org/wiki/IWAD) Gzdoom is looking for to be able to run are the following:

| File                     | What is it?                                      | Comments |
| :---                     | :---:                                            | :---:    |
| ACTION2.WAD              | Action Doom 2: Urban Brawl                       |          |
| BLASPHEM.WAD             | Blasphemer                                       |          |
| CHEX.WAD                 | Chex Quest                                       |          |
| CHEX3.WAD                | Chex Quest 3                                     |          |
| DELAWEARE.WAD            | Delaweare                                        |          |
| DOOM.WAD                 | Doom shareware                                   |          |
| DOOM1.WAD                | Doom                                             |          |
| DOOM2.WAD                | Doom II: Hell on Earth                            |          |
| DOOM2F.WAD               | Doom II French                                   |          |
| DOOM64.WAD               | Doom 64                                          |          |
| DOOM_COMPLETE.PK3        | WadSmoosh merged Doom                            |          |
| FREEDOOM1.WAD            | Freedoom Phase 1                                 |          |
| FREEDOOM2.WAD            | Freedoom Phase 2                                 |          |
| FREEDM.WAD               | Freedoom Deathmatch                              |          |
| HEXDD.WAD                | Hexen: Deathkings of the Dark Citadel           | Needs HEXEN.WAD to play |
| HEXEN.WAD                | Hexen: Beyond Heretic                             |          |
| HACX.WAD                 | HACX                                             |          |
| HARM1.WAD                | Harmony                                          |          |
| HERETIC.WAD              | Heretic: Shadow of the Serpent Riders           |          |
| HERETIC1.WAD             | Heretic shareware                                |          |
| PLUTONIA.WAD             | Plutonia Experiment                               |          |
| ROTWB.WAD                | Rise Of The Wool Ball                             |          |
| SQUARE1.PK3              | The Adventures of Square                           |          |
| STRIFE0.WAD              | Strife shareware                                  |          |
| STRIFE1.WAD              | Strife                                            |          |
| TNT.WAD                  | TNT: Evilution                                    |          |
| VOICES.WAD               | Strife Voices                                    | Needs STRIFE1.WAD to be used   |


---

## Where can I find more WADs?

Non-official WADs (mods) are available across the internet on old forums, GitHub, and various websites.

### Doomworld

Doomworld is the oldest DOOM community on the web and hosts the annual [Cacowards](https://www.doomworld.com/cacowards). It is the lifeblood of the DOOM community, containing generations of knowledge and a vast collection of WADs.

[Doomworld Files](https://www.doomworld.com/files/)

[Doomworld ID Games(Legacy)](https://www.doomworld.com/idgames/)

### Doomwiki

[List of notable WADs](https://doomwiki.org/wiki/List_of_notable_WADs)

### ModDB

[ModDB](https://www.moddb.com/games/doom/mods)

---

## GZDoom Controls

**Known Issues**

- Multiple controllers for local multiplayer don't work well due to bugs between GZDoom and Steam Input.
- Set the primary controller as player one, especially if using an external controller with the Steam Deck. This prevents input loops.
- Avoid pressing "Save configur## Where to put the games?

WiiU games should be put under the `retrodeck/roms/wiiu/` directory.
ation" in the GZDoom options menu if you have mods that add extra controls, as it will wipe those extra controls. Inputs will still be saved without pressing save.

### Standard Controls

The controls are semi-based on the inputs from `Timesplitters: Future Perfect` for the PlayStation 2 and are described as an Xbox Layout style controller.

|  Action                                    |    Button        |    Comment      |
| :---                                      | :---:           |         :---:   |
| Primary Fire                              |   `R2`          |                 |
| Secondary Fire                            |   `R1`          |                |
| Action / Open                             |   `A`     |                |
| Jump                                      |   `B`     |                |
| Reload                                    |   `Y`     |                |
| Crouch                                    |   `X`     |                |
| Quick Turn                                |   `R3`     |            |
| Run Toggle                                |   `L3`     |                |
| Main Menu                                 |   `Start`     |         |
| Open Map                                  |   `Select`     |         |
| Use Item                                  |   `Dpad - Down`     |         |
| Select Item                               |   `Dpad - Up`     |         |
| Swap Next Weapon                          |   `Dpad - Right`     |         |
| Swap Previous Weapon                      |   `Dpad - Left`     |         |
| Movement: Forward / Back + Strafe         |   `Left Joystick`     |                  |
| Movement: Look Up / Down + Turn           |   `Right Joystick`     |                  |

### Mod Controls - Extras

Optional extra binds for certain `Project Brutality` or `Brutal Doom` based mods.

|  Action                                    |    Button        |    Comment      |
| :---                                      | :---:           |         :---:   |
| Quick Melee / Special Action              |   `L1`          |                 |
| Throw Grenade / Second Special Action     |   `L2`          |    Replaces Zoom (most DOOM mods use Secondary Fire for this anyhow)          |
| Dash                                      |   `R3`          |    Replaces Quick Turn           |

### The Mod Needs More Inputs

Many mods have more inputs than what is bindable on a controller. `L1`,  `L2`, `Dpad - Up`, `Dpad - Down` are mostly free for those types of actions.

- Bind `L1` and `L2` to more action-oriented things you need to use more often.
- Use `Dpad - Up`, `Dpad - Down` for things you use less often, like Extra Menus.
- If it is a new movement type that can replace quick turn, bind it on `R3` and replace Quick Turn or either of the `L1` or `L2`.

You are also free to change any of the default binds shipped by RetroDECK, and if you mess something up, you can always reset GZDoom via the Configurator.

---

## I have bought the games how do I get my files?

Read the:

[How to: Extract Doom iWads](extract-doom-wads.md)

---

## I want to play doom with mods

Read the:

[RetroDECK .doom file for modding](retrodeck-doomfile.md)

---

## WadSmoosh+ and doom_complete.pk3

`doom_complete.pk3` is the file generated by [WadSmoosh+](https://github.com/vanessakindell/wadsmoosh-plus).

WadSmoosh+ merges **DOOM, DOOM II, and all supported official add-ons** into a single unified PK3, allowing you to select any campaign without loading individual WADs. 

This makes using mods and switching between episodes much easier.

### How to create: doom_complete.pk3

1. Download the latest release of WadSmoosh+.
2. Place **all required WAD files** into the `source_wads` folder.
3. Run the script from a terminal:`./wadsmoo.sh`. 
 
### Wads supported by WadSmoosh+

| WAD File         | Category / Source                                   | Description                         |
|------------------|------------------------------------------------------|-------------------------------------|
| betray.wad       | Xbox Doom Bonus Levels                               | Xbox-exclusive bonus map.           |
| doom.wad         | Doom / Ultimate Doom                                 | Original Doom IWAD.                 |
| doomunity.wad    | Unity Doom                                           | Unity version of Doom (rename **doom.wad** ➝ **doomunity.wad** ).              |
| doom2.wad        | Doom II                                              | Original Doom II IWAD.              |
| doom2bfg.wad     | Doom II BFG Edition                                  | BFG Edition extra content.          |
| doom2unity.wad   | Unity Doom II                                        | Unity version of Doom II. (rename **doom.wad** ➝ **doomunity.wad** ).           |
| doom3do.wad      | Doom 3DO Soundtrack                                  | 3DO music WAD.                      |
| doomzero.wad     | Doom Zero                                            | Unity-released megawad.             |
| extras.wad       | Unity Add-ons                                        | Bonus assets for Unity ports.       |
| freedoom1.wad    | Freedoom Phase 1                                     | Free replacement Doom IWAD.         |
| freedoom2.wad    | Freedoom Phase 2                                     | Free replacement Doom II IWAD.      |
| hell2pay.wad     | Hell To Pay                                          | Commercial total conversion.        |
| id1.wad          | Legacy of Rust (KEX re-release)                      | Extra IWAD-style file.              |
| id1-res.wad      | Legacy of Rust (KEX re-release)                      | Resource file.                      |
| id24res.wad      | Legacy of Rust (KEX re-release)                      | Resource file.                      |
| iddm1.wad        | Legacy of Rust (KEX re-release)                      | Deathmatch pack.                    |
| jptr_v40.wad     | The Lost Episodes of Doom                            | Early commercial fan episodes.      |
| neis.wad         | No End in Sight                                      | Ultimate Doom megawad.              |
| nerve.wad        | No Rest for the Living                               | Official Doom II episode.           |
| perdgate.wad     | Perdition's Gate                                     | Commercial add-on.                  |
| pl2.wad          | Plutonia 2                                           | Fan-made Plutonia sequel.           |
| prcp.wad         | Plutonia Revisited                                   | Community Plutonia project.         |
| plutonia.wad     | Final Doom                                           | Plutonia IWAD.                      |
| sewers.wad       | Xbox Doom Bonus Levels                               | Xbox-exclusive bonus map.           |
| sigil.wad        | Sigil                                                | Romero’s Episode 5.                 |
| sigil_shreds.wad | Sigil (Music Add-on)                                 | Optional enhanced soundtrack.       |
| sigil2.wad       | Sigil II                                             | Romero’s Doom II megawad.           |
| tnt.wad          | Final Doom                                           | TNT IWAD.                           |
| tnt2_beta6.wad   | TNT: Devilution                                      | Fan-made TNT sequel.                |
| tntr.wad         | TNT: Revilution                                      | Community TNT sequel.               |

---


