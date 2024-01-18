# Guide: GZDoom

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="150">

WIP

## Where to put the games
Doom games should be put under the `retrodeck/roms/doom/` directory.

## .doom folder


## File types
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
