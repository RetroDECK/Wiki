# IkemenGO / M.U.G.E.N - General Guide

<img src="../../../wiki_images/logos/ikemen-go-logo.png" width="75">

`IkemenGO` is a fighting game engine and the spiritual successor to the projects `Ikemen` and `M.U.G.E.N`. 

It strives to be compatible with games made for those engines.

---

### IkemanGO Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| IkemanGO - Github | [Link](https://github.com/ikemen-engine/Ikemen-GO) |
| IkemanGO - Webpage | [Link](https://ikemen-engine.github.io/) |
| IkemanGO - Wiki | [Link](https://github.com/ikemen-engine/Ikemen-GO/wiki) |


---

## Where to put the games

`IkemenGO` `Ikemen` and `M.U.G.E.N` games should be put under the `retrodeck/roms/mugen/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .mugen      | M.U.G.E.N / IkemenGO game engine folder |


---

## Does IkemenGO require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type | Directory               | Comment |
|:----:|:-----------------------|:-------|
| ROMs | `retrodeck/roms/mugen/` |        |


### Example folder structure of a IkemanGO game

The example game `Ultimate Dank Fighter Mugen.mugen` has this folder structure:


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

---

## IkemanGO: Tips and Tricks

- The games need to be uncompressed to a folder.
- Games made for `IkemenGO` have a higher success rate than those made for `M.U.G.E.N`.
- Each game is its own self-contained game, and no overarching settings exist.
- Depending on the age of the game you want to play it could require less or more tinkering.
- `M.U.G.E.N` have existed since the 90s and some incredibly old games might not run at all without heavy tinkering.
- You will need to make the game executable.

### The games have their own input bindings per game

As every game it's own unique instance and input bindings they need to be manually rebound per game so they fit how the game works and how you want to play.

These bindings are usually set in the interface or in the file `<gamename>/save/config.json`.


---

##  Adding IkemanGO Games to RetroDECK

This How-to is for games that are made with IkemanGO Engine.

- Extract the game if it is compressed into a new folder under `roms/mugen/`.
- Rename the folder so it is called `<gamename>.mugen` in the end of it.
- Open the game folder and see if the `Ikemen_GO_Linux` file is there in the root of the folder.
- If the file is there rename it to `<gamename>.mugen`.
- Make the game executable.
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

---

## Convert M.U.G.E.N Games

This is not a full guide on conversion, as each game is different and can have been made for a different version of M.U.G.E.N or have other unique properties for just that game.
It would be impossible to write a total guide to encompass all games and you will have to check various forums/web pages for the best approach for just that game.

In this How-to example we are going to use a fake game called `Hockey Fighter MUGEN.zip`

### Step 1: Prepare the files and folders

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

---
