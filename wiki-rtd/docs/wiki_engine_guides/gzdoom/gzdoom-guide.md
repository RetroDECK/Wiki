# Guide: GZDoom

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="150">

WIP

GZDoom is the open source game engine for ID Software's older games like DOOM, DOOM2, HEXEN and HERETIC or it's own unique games.

### GZDoom Links:

[ZDoom Web Page](https://zdoom.org/index)

[GZDoom Github](https://github.com/ZDoom/gzdoom)

[ZDoom Forums](https://forum.zdoom.org/)

## Where to put the games
GZDoom games should be put under the `retrodeck/roms/doom/` directory.

### File types
- .wad - `Where's All the Data?` file
- .iwad - `internal wad`
- .pwad - `patch wad` have priority over iwad
- .pk3 - is a `.zip` file archive
- .ipk3 - `internal pk3` file
- .pk4 - is a `.zip` file archive
- .pk7 - is a `.7zip` file archive
- .pke - is a `.zip` file archive made for the the Eternity Engine
- .epk - is a `.zip` file archive made for the EDGE engine
- .deh — `DeHackEd file`, edits hardcoded parts of the DOOM engine.
- .bex — `Enhanced DeHackEd` file has more features then `.deh` and used by various ports.
- .lev — A file that renames levels of a `.pwad`
- .mus — `Music file` format of `DOOM`, `Heretic`, `Hexen` and `Strife`


### Does GZDoom require BIOS or Firmware?
No

## The RetroDECK DOOM Parser

The Iwad parser will look for any of the CORE DOOM files that could be required to run a DOOM mod in the `/retrodeck/roms/doom/` directory.<br>
We have not decided on the entire structure yet under `/retrodeck/roms/doom/` but you can follow our efforts on the Discord.


Here is what files it is currently looking for:

```
IWAD_FILES=("DOOM1.WAD" "DOOM.WAD" "DOOM2.WAD" "DOOM2F.WAD" "DOOM64.WAD" "TNT.WAD"
            "PLUTONIA.WAD" "HERETIC1.WAD" "HERETIC.WAD" "HEXEN.WAD" "HEXDD.WAD"
            "STRIFE0.WAD" "STRIFE1.WAD" "VOICES.WAD" "CHEX.WAD"
            "CHEX3.WAD" "HACX.WAD" "freedoom1.wad" "freedoom2.wad" "freedm.wad"
            "doom_complete.pk3"
            )
```

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
