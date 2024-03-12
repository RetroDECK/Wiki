# The RetroDECK .doom file

The RetroDECK `.doom` file is a feature for easy loading of doom files with mods.

## The RetroDECK .doom Parser

The `.doom` parser will look for any of the `CORE WADS` files that could be required to run a DOOM mod in the `/retrodeck/roms/doom/` directory.<br>

Here is what files it is currently looking for:

```
IWAD_FILES=("DOOM1.WAD" "DOOM.WAD" "DOOM2.WAD" "DOOM2F.WAD" "DOOM64.WAD" "TNT.WAD"
            "PLUTONIA.WAD" "HERETIC1.WAD" "HERETIC.WAD" "HEXEN.WAD" "HEXDD.WAD"
            "STRIFE0.WAD" "STRIFE1.WAD" "VOICES.WAD" "CHEX.WAD"
            "CHEX3.WAD" "HACX.WAD" "freedoom1.wad" "freedoom2.wad" "freedm.wad"
            "doom_complete.pk3"
            )
```


## Recommended folder structure in retrodeck/roms/doom

- It does not really matter where the files are under `/roms/doom/` the parser will scan all files and subfolders.
- Make sure you don't have any files that share the same filename in any subfolder under `/roms/doom/`.
- You make whatever structure you feel comfortable with or use our example.

**Example two folder structure:**

In this example we are making two folders under the `/roms/doom/` folder, with the goal of just using .doom files as the primary way to play doom games.

---

`/retrodeck/roms/doom/core_wads/`

In the `core_wads` folder you can put one or all of the official files game wads made by ID Software/Bethesda their addons and/or freedom so they are not mixed up with the mods.

---

`/retrodeck/roms/doom/mods/`

In the `mods` folder you can put all the extracted mod files. By putting them all into one folder and no subfolders you easily make sure you have no duplicate files as they would be in conflict.

---

`/retrodeck/roms/doom/`

In the root of the `roms/doom/` folder put all the `.doom` files you will create or download.

---

Result

When you launch the ES-DE interface from RetroDECK and navigate to DOOM category, all the `.doom` files will be listed first as your primary game list while the rest of the files are in their respective subfolder.



## What is the .doom file and how do you create it?

The `.doom` file is just an empty text file that is populated with the exact filenames of the files you want to load and in what order from top to bottom.

You should name the `.doom` file so you understand what it is, for example: `Project Brutality.doom`.

Each line represent one file, as long as the mods are compatible with each other you can add how lines as you want.

### What is the recommended load order of mods the .doom file?

The general guidelines on most mod pages is:

- Map WAD (Like DOOM2.WAD or DOOM.WAD).
- Bigger mods like Project Brutality.
- Any other mini-mods like huds, graphics or other tweaks.

But this can be different, check the where you download the mods if they have any recommended order requirement.

## Project Brutality .doom example:

In this example you have already downloaded a bunch of mods and have the core doom iwads already somewhere under the `/retrodeck/roms/doom/` folder.

You want to play [Project Brutality](https://www.moddb.com/mods/project-brutality) on DOOM 2 levels.

All you need to do is create an empty file called `Project Brutality.doom` in `/retrodeck/roms/doom/`.

Each line the the file will be the order the mods are loaded, make each lines value is called exactly what the file name is called.

So in the case of `Project Brutality.doom`

The contents will look like this

```
DOOM2.WAD
PB_Staging_9f2561c.pk3
```

The DOOM2.WAD is first loaded then the Project Brutality PB_Staging_9f2561c.pk3 file and the game starts.

`Project Brutality.doom` is accessible from the ES-DE interface.


### Another Example: Doom Infinite

[Doom Infinite](https://www.moddb.com/mods/doom-infinite)

Create the `Doom Infinite.doom` file in `/retrodeck/roms/doom/`

```
DOOM2.WAD
DOOM_Infinite_DEMO_0978_6.pk3
```

## Customize the RetroDECK .doom files

You can customize the `.doom` how you wish with the above examples as a guideline.<br>

There is nothing stopping you from adding more mods or create an infinite amount of `.doom` files.

Maybe you want to have Project Brutality with DOOM and Doom 2 as separate entries in the ES-DE interface.


`Project Brutality DOOM 2.doom`

```
DOOM2.WAD
PB_Staging_9f2561c.pk3
```

`Project Brutality DOOM.doom`

```
DOOM.WAD
PB_Staging_9f2561c.pk3
```

Want to have more minor mods into Project Brutality?<br>
Just keep adding the lines with the mod file names how many you want like this fake example:

`Project Brutality - But with Horses.doom`

```
doom_complete.pk3
PB_Staging_9f2561c.pk3
horse_armor.pk3
pinkgui.pk3
```

Be sure to name the .doom files so you understand what it is and you are done:

- `Project Brutality - The Ultimate Collection.doom`
- `Project Brutality - But with Horses.doom`
- `Project Brutality - Chex Quest with a Vengeance.doom`

It is that easy.

## Sharing is caring

Have you made a cool `.doom` file modpack?

Maybe you have found the perfect combination of over 50 + mods in one `.doom` file?

Share the `.doom` file and where to download the mods with the RetroDECK Community!
