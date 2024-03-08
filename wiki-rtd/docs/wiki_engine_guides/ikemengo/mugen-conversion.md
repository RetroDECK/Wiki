# Guidelines on M.U.G.E.N to IkemanGO conversion

This is not a full guide on conversion, as each game is different and can have been made for a different version of M.U.G.E.N or have other unique properties for just that game.
It would be impossible to write a total guide to encompass all games and you will have to check various forums/web pages for the best approach for just that game.

## Step 1: Prepare the files and folders

In this example we are going to use a fake game called `Hockey Fighter MUGEN.zip`

- Download the `Ikemen_GO-<latestversion>-linux.zip` from [IkemanGO Github](https://github.com/ikemen-engine/Ikemen-GO).
- Extract the `Ikemen_GO-<latestversion>-linux.zip` file in some location.
- Have a `M.U.G.E.N` game ready like `Hockey Fighter MUGEN.zip`.
- Extract `Hockey Fighter MUGEN.zip` in some location.
- Create a new folder under `~/retrodeck/roms/mugen/` called `Hockey Fighter MUGEN.mugen`, the result should look like `~/retrodeck/roms/mugen/Hockey Fighter MUGEN.mugen`

## Step 2: Copy the M.U.G.E.N files

From the extracted `Hockey Fighter MUGEN.zip` location copy the following folders into `~/retrodeck/roms/mugen/Hockey Fighter MUGEN.mugen`

```
chars
data
font
sound
stages
```

If the folders from the above top-level folder have capital letters you will need to rename them to lowercase `Chars` to `chars` and EVERY FILE in the `data` folder needs to be lower case as including the file extension.

## Step 3: Copy the IkemanGO files


From the extracted `Ikemen_GO-<latestversion>-linux.zip` location copy the following folders into the game directory:

**HEADS UP:** <br>
DO NOT OVERWRITE WHEN COPYING OVER THE FILES! PRESS NO!


```
data
external
font
Ikemen_GO_Linux <-- file
```

## Step 4: Rename the Ikemen_GO_Linux file

If the game is called Hockey Fighter MUGEN rename the `Ikemen_GO_Linux` file to `Hockey Fighter MUGEN.mugen` so the result is:

```
~/retrodeck/roms/mugen/Hockey Fighter MUGEN.mugen/Hockey Fighter MUGEN.mugen
```

## Step 5: Run the game

The game should now at least show up in RetroDECK and if you are lucky also work when run. If the game does not work check out the forums or web page where you got the game for guidance.
