# Guide: GZDoom

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="75">

GZDoom is the open source game engine for ID Software's older games like DOOM, DOOM2, HEXEN and HERETIC or it's own unique games.

---

### GZDoom Links:

[ZDoom Web Page](https://zdoom.org/index)

[GZDoom Github](https://github.com/ZDoom/gzdoom)

[ZDoom Forums](https://forum.zdoom.org/)

---

## Where to put the games?

DOOM games should be put under the `retrodeck/roms/doom/` directory.

## What file formats does GZDoom support?

| File Format | Description |
|-------------|-------------|
| .wad        | Doom level resource file |
| .iwad       | Internal WAD file |
| .pwad       | Patch WAD file |
| .kpf        | KEX Engine zip replacement |
| .pk3        | Enhanced engine zip container |
| .pk4        | id Tech 4 zip container |
| .pk7        | 7-Zip compressed container |
| .pke        | Eternity Engine mod zip |
| .lmp        | Doom data unit |
| .deh        | DeHackEd file |
| .bex        | Enhanced DeHackEd file |
| .mus        | Doom music file |
| .doom       | RetroDECK DOOM parser file (Only in RetroDECK) |

## Does GZDOOM require BIOS or Firmware?

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

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/doom/` |                               |  
| Saves Folder |`retrodeck/saves/wiiu/doom/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/gzdoom/`         |   `gzdoom.ini`|
| Data Folder |`~/.var/app/org.retrodeck.retrodeck/data/gzdoom` |   |

## What are iwads gzdoom is looking for?

The [IWADS](https://doomwiki.org/wiki/IWAD) Gzdoom is looking for to be able to run are the following:

| File                     |                      What is it?                  | Comments |
| :---                     | :---:                                             |  :---:   |
| DOOM.WAD                 |   Doom (1993)                                     |          |
| DOOM1.WAD                |   Doom (1993) - Shareware Version                 |          |
| DOOM2.WAD                |   Doom 2                                          |          |
| DOOM2F.WAD               |   Doom 2 - French Version                         |          |
| DOOM64.WAD               |   Doom 64                                         |          |
| TNT.WAD                  |   Final Doom - TNT: Evilution                     |          |
| PLUTONIA.WAD             |   Final Doom - The Plutonia Experiment            |          |
| HERETIC1.WAD             |   Heretic - Shareware Version                     |          |
| HERETIC.WAD              |    Heretic: Shadow of the Serpent Riders          |          |
| HEXEN.WAD                |   Hexen                                           |          |
| HEXDD.WAD                |   Hexen: Deathkings of the Dark Citadel           | Needs to be loaded with HEXEN.WAD to be played |
| STRIFE0.WAD              |   Strife: Quest for the Sigil - Demo Version      |          |
| STRIFE1.WAD              |   Strife: Quest for the Sigil - Commercial Version |          |
| VOICES.WAD               |   Extra Voices for Strife                          |       Needs to be loaded with STRIFE1.WAD to be used    |
| CHEX.WAD                 |   Chex Quest                                       |          |
| CHEX3.WAD                |   Chex Quest 3                                     |          |
| HACX.WAD                 |   Hacx                                             |          |
| freedoom1.wad            |   Freedoom: Phase 1                                             |          |
| freedoom2.wad            |   Freedoom: Phase 2                                             |          |
| freedm.wad               |   FreeDM                                             |          |
| doom_complete.pk3        |   WadSmoosh combined file                                             |          |

### What is doom_complete.pk3?

`doom_complete.pk3` is a file made by [WadSmoosh](https://jp.itch.io/wadsmoosh). It can combine all of the "DOOM + DOOM 2 + Official addons" into one file where you can select from all the campaigns without needing to load each separate wad.

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


## Where to put the games

GZDoom games should be put under the `retrodeck/roms/doom/` directory.

### Supported file types

| File type                    |                      What is it?                  | Comments |
| :---                     | :---:                                             |  :---:   |
|.wad | Where's All the Data? | |
|.iwad | internal wad|  |
|.pwad | patch wad | Have a priority over .wad |
|.pk3 | .zip file archive | |
|.ipk3 |  internal pk3 | |
| .pk4 |.zip file archive | |
|.pk7 | .7zip file archive | |
| .pke | .zip file archive | Made for the the Eternity Engine |
| .epk | .zip file archive | Made for the EDGE engine |
| .deh | DeHackEd file| Edits hardcoded parts of the DOOM engine. |
| .bex | Enhanced DeHackEd | Has more features then .deh and used by various ports. |
| .lev | A file that renames levels of a .pwad | |
| .mus | Music file | Used by `DOOM`, `Heretic`, `Hexen` and `Strife` |


### Does GZDoom require BIOS or Firmware?

No

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/doom/` |                               |  
| Saves Folder |`retrodeck/saves/doom/gzdoom/` |                               |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/gzdoom/`         |   `gzdoom.ini`|
| Data Folder |`~/.var/app/org.retrodeck.retrodeck/data/gzdoom/` | `audio` folder    |


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

## I have bought the games how do I get my files?

Read the:

[How to: Extract Doom iWads](extract-doom-wads.md)


## I want to play doom with mods

Read the:

[RetroDECK .doom file for modding](retrodeck-doomfile.md)
