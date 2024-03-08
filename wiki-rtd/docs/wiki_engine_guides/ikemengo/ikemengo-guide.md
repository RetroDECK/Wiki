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

## IkemanGO Game How-to Setup

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

## Guidelines on M.U.G.E.N to IkemanGO conversions

This is not a full guide on conversion, as each game is different and can have been made for a different version of M.U.G.E.N or have other unique properties for just that game.
It would be impossible to write a total guide to encompass all games and you will have to check various forums/web pages for the best approach for just that game.

This is not an easy task to do in most cases.

### Step 1: Prepare the files and folders

In this example we are going to use a fake game called `Hockey Fighter MUGEN.zip`

- Download the `Ikemen_GO-<latestversion>-linux.zip` from [IkemanGO Github](https://github.com/ikemen-engine/Ikemen-GO).
- Extract the `Ikemen_GO-<latestversion>-linux.zip` file in some location.
- Have a `M.U.G.E.N` game ready like `Hockey Fighter MUGEN.zip`.
- Extract `Hockey Fighter MUGEN.zip` in some location.
- Create a new folder under `~/retrodeck/roms/mugen/` called `Hockey Fighter MUGEN.mugen`, the result should look like `~/retrodeck/roms/mugen/Hockey Fighter MUGEN.mugen`

### Step 2: Copy the M.U.G.E.N files

From the extracted `Hockey Fighter MUGEN.zip` location copy the following folders into `~/retrodeck/roms/mugen/Hockey Fighter MUGEN.mugen`

```
chars
data
font
sound
stages
```

If the folders from the above top-level folder have capital letters you will need to rename them to lowercase `Chars` to `chars` and EVERY FILE in the `data` folder needs to be lower case as including the file extension.

### Step 3: Copy the IkemanGO files


From the extracted `Ikemen_GO-<latestversion>-linux.zip` location copy the following folders into the game directory:

**HEADS UP:** <br>
DO NOT OVERWRITE WHEN COPYING OVER THE FILES! PRESS NO!


```
data
external
font
Ikemen_GO_Linux <-- file
```

### Step 4: Rename the Ikemen_GO_Linux file

If the game is called Hockey Fighter MUGEN rename the `Ikemen_GO_Linux` file to `Hockey Fighter MUGEN.mugen` so the result is:

```
~/retrodeck/roms/mugen/Hockey Fighter MUGEN.mugen/Hockey Fighter MUGEN.mugen
```

### Step 5: Run the game

The game should now at least show up in RetroDECK and if you are lucky also work when run. If the game does not work check out the forums or web page where you got the game for guidance.
