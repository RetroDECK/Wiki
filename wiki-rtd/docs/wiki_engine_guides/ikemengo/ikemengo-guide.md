# IkemenGO / M.U.G.E.N - General Guide

<img src="../../../wiki_images/logos/ikemen-go-logo.png" width="150">

`IkemenGO` is a fighting game engine and the spiritual successor to the dead projects `Ikemen` and `M.U.G.E.N`. It strives to be compatible with games made for those engines.


### IkemanGO Links:

[IkemanGO Github](https://github.com/ikemen-engine/Ikemen-GO)

[IkemanGO Wiki](https://github.com/ikemen-engine/Ikemen-GO/wiki)

[IkemanGO Webpage](https://ikemen-engine.github.io/)


## Where to put the games
`IkemenGO` `Ikemen` and `M.U.G.E.N` games should be put under the `retrodeck/roms/mugen/` directory.

## What file formats are supported?

`.mugen`

### Information

- The games need to be uncompressed to a folder.
- Games made for `IkemenGO` have a higher success rate than those made for `M.U.G.E.N`.
- Each game is its own self-contained game, and no overarching settings exist.
- Depending on the age of the game you want to play it could require less or more tinkering.
- `M.U.G.E.N` have existed since the 90s and some incredibly old games might not run at all without heavy tinkering.

### Example folder structure of a IkemanGO game

```
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/chars/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/data/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/external/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/font/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/sound/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/stages/
~/retrodeck/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/Ultimate Dank Fighter IkemanGO.mugen
```
Notice the runnable Ultimate Dank Fighter Mugen.mugen

## IkemanGO Games

This How-to is for games that are made with IkemanGO

- Extract the game if it is compressed into a new folder under `roms/mugen/`.
- Rename the folder so it is called `<gamename>.mugen` in the end of it.
- Open the game folder and see if the `Ikemen_GO_Linux` file is there in the root of the folder.
- If the file is there rename it to `<gamename>.mugen`.
- Note that BOTH the `Ikemen_GO_Linux` file and the game folder are now called the same `<gamename>.mugen`.

The game should now be detected and runnable from RetroDECK.

### Example on renaming:
If the game is called Ultimate Dank Fighter IkemanGO rename the `Ikemen_GO_Linux` file & the games folder to `Ultimate Dank Fighter IkemanGO.mugen`

```
/roms/mugen/Ultimate Dank Fighter IkemanGO.mugen/Ultimate Dank Fighter IkemanGO.mugen
```

The `Ultimate Dank Fighter IkemanGO.mugen` file exists within the `Ultimate Dank Fighter IkemanGO.mugen` folder.

### Ikemen_GO_Linux is missing:

If the `Ikemen_GO_Linux` is missing in the games folder you can download it from the [IkemanGO Github](https://github.com/ikemen-engine/Ikemen-GO) under releases called
`Ikemen_GO-<latestversion>-linux.zip`.

Open up the `.zip` file and extract ONLY the `Ikemen_GO_Linux` file into the game directory and rename it as stated above.

## M.U.G.E.N Games

Read the [M.U.G.E.N Convertion Guidelines](../../mugen-conversion.md)
