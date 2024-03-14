# Guide: GZDoom

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="150">

GZDoom is the open source game engine for ID Software's older games like DOOM, DOOM2, HEXEN and HERETIC or it's own unique games.

### GZDoom Links:

[ZDoom Web Page](https://zdoom.org/index)

[GZDoom Github](https://github.com/ZDoom/gzdoom)

[ZDoom Forums](https://forum.zdoom.org/)

### Freedoom

The Freedoom project aims to provide all the content needed to form a complete, entirely free/libre game for the Doom engine.

It is designed to be compatible with most custom levels, music, graphics and other modifications (“mods”) made for the original Doom games by Doom fans and artists over the decades.

[FreeDOOM](https://freedoom.github.io/)

### Where to buy official DOOM?

We recommend that you at buy both `DOOM 1993` and `DOOM 2`.

`DOOM 3` and `DOOM 64` are not needed but we list them here because it is sometimes cheaper to buy the whole bundle.

**GOG Links:**

- [DOOM 1993 - GOG](https://www.gog.com/en/game/doom_1993)
- [DOOM 2 - GOG](https://www.gog.com/en/game/doom_ii)
- [DOOM 64 - GOG](https://www.gog.com/en/game/doom_64)
- [DOOM 3 - GOG](https://www.gog.com/en/game/doom_3)

**Steam Links:**

- [DOOM Classic Bundle - Steam](https://store.steampowered.com/bundle/27490/DOOM_Classic_Bundle/)
- [DOOM 1993 - Steam](https://store.steampowered.com/app/2280/DOOM_1993/)
- [DOOM 2 - Steam](https://store.steampowered.com/app/2300/DOOM_II/)
- [DOOM 64 - Steam](https://store.steampowered.com/app/1148590/DOOM_64/)
- [DOOM 3 - Steam](https://store.steampowered.com/app/208200/DOOM_3/)


## What are iwads gzdoom is looking for?

The [IWADS](https://doomwiki.org/wiki/IWAD) Gzdoom is looking for to be able to run are the following:

| File                     |                      What is it?                  | Comments |
| :---                     | :---:                                             |  :---:   |
| DOOM1.WAD                |   Doom 1 -   Shareware Version                    |          |
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

None-official wads (mods) are all over the internet from old forums, github and various websites.

**Doomworld:**

The oldest DOOM community on the web and hosts of the annual [Cacowards](https://www.doomworld.com/cacowards).

Doomworld is the lifeblood of DOOM community, generations of knowledge and a vast collections of wads exist within it.

- [Doomworld Files](https://www.doomworld.com/files/)
- [Doomworld ID Games(Legacy)](https://www.doomworld.com/idgames/)

**Doomwiki:**

[List of notable WADs](https://doomwiki.org/wiki/List_of_notable_WAD)

**ModDB:**

- [ModDB](https://www.moddb.com/games/doom/mods)


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

## I have bought the games how do I get my files?

Read the:

[How to: Extract Doom iWads](extract-doom-wads.md)

## I only want to play standard doom and have no interest in modding or customization
Do as said above put the .WAD files directly into `retrodeck/roms/doom/` and they will run as normal, enjoy.

## I want to play doom with mods

Read the:

[RetroDECK .doom file for modding](retrodeck-doomfile.md)
