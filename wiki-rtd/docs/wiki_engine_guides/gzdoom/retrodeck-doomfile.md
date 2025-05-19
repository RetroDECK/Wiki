# The .doom file

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="75">

The `.doom` file is a feature for easy loading of DOOM files with mods. It is based on the work done by [AmberELEC .doom](https://amberelec.org/systems/doom.html) and others, with additional improvements made by RetroDECK.

## The RetroDECK .doom Parser

The `.doom` parser will look for any of the iwads files that could be required to run a DOOM mod in the `retrodeck/roms/doom/` directory.

Here are the files it is currently looking for:

```
IWAD_FILES=("DOOM1.WAD" "DOOM.WAD" "DOOM2.WAD" "DOOM2F.WAD" "DOOM64.WAD" "TNT.WAD"
            "PLUTONIA.WAD" "HERETIC1.WAD" "HERETIC.WAD" "HEXEN.WAD" "HEXDD.WAD"
            "STRIFE0.WAD" "STRIFE1.WAD" "VOICES.WAD" "CHEX.WAD"
            "CHEX3.WAD" "HACX.WAD" "freedoom1.wad" "freedoom2.wad" "freedm.wad"
            "doom_complete.pk3"
            )
```


## Recommended Folder Structure in retrodeck/roms/doom

- The parser will scan all files and subfolders under `/roms/doom/`, so the exact location of the files doesn't matter.
- Ensure that no files share the same filename in any subfolder under `/roms/doom/`.
- You can create any structure you feel comfortable with, or use the example below.

### Example two folder structure

In this example, we create two folders under the `/roms/doom/` folder, with the goal of using `.doom` files as the primary way to play DOOM games.

---

`/retrodeck/roms/doom/iwads/`

In the `iwads` folder, you can place one or all of the official game WADs made by ID Software/Bethesda, their addons, and/or Freedoom so they are not mixed up with the mods.

---

`/retrodeck/roms/doom/mods/`

In the `mods` folder, you can place all the extracted mod files. By putting them all into one folder and no subfolders, you can easily ensure there are no duplicate files that could cause conflicts.

---

`/retrodeck/roms/doom/`

In the root of the roms/doom/ folder, place all the `.doom` files you create or download.

---

**Result:**

When you launch the ES-DE interface from RetroDECK and navigate to the DOOM category, all the .doom files will be listed first as your primary game list, while the rest of the files are in their respective subfolders.



## What is the .doom file and how do you create it?

The `.doom`file is an empty file that lists the exact filenames of the files you want to load, in the order you want them to load, from top to bottom.

You should name the `.doom` file so you understand what it is, for example: `Project Brutality.doom`.

Each line represents one file. As long as the mods are compatible with each other, you can add as many lines as you want.

**NOTE: No spaces in mod file names**

The parser does not currently allow spaces in the mod files. If your mod file is called, for example, `PB Staging 9f2561c.pk3`, rename it to `PB_Staging_9f2561c.pk3` using underscores `_` instead of spaces.

### What is the recommended load order of mods in the .doom file?

The general guidelines on most mod pages are:

- Map WAD (like DOOM2.WAD or DOOM.WAD).
- Bigger mods like Project Brutality.
- Any other mini-mods like HUDs, graphics, or other tweaks.

However, this can vary, so check where you download the mods for any recommended order requirements.

### Questio - I come from one of the ELEC's what does RetroDECK do different with the .doom file, can I migrate?

RetroDECK has written a new parser from the ground up. You no longer need to write the path in the `.doom` files. RetroDECK scans all folders and subfolders of `/roms/doom/`, so you only need to put the name of the mod file. If you are migrating to RetroDECK, all you need to do is remove the path in your `.doom` files.

## Project Brutality .doom example:


In this example, you have already downloaded a bunch of mods and have the IWADs somewhere under the `retrodeck/roms/doom/` folder.

You want to play [Project Brutality](https://www.moddb.com/mods/project-brutality) on DOOM 2 levels.

All you need to do is create an empty file called  `Project Brutality.doom` in `/retrodeck/roms/doom/`.

Each line the the file will be the order the mods are loaded, make each lines value is called exactly what the file name is called.

So in the case of `Project Brutality.doom`, the contents will look like this:

```
DOOM2.WAD
PB_Staging_9f2561c.pk3
```

The DOOM2.WAD is first loaded, then the Project Brutality PB_Staging_9f2561c.pk3 file, and the game starts.

Project Brutality.doom is accessible from the ES-DE interface.

### Another Example: Doom Infinite

[Doom Infinite](https://www.moddb.com/mods/doom-infinite)

Create the `Doom Infinite.doom` file in `/retrodeck/roms/doom/`

```
DOOM2.WAD
DOOM_Infinite_DEMO_0978_6.pk3
```

## Customize the RetroDECK .doom files

You can customize the `.doom` files as you wish, using the above examples as a guideline. There is nothing stopping you from adding more mods or creating an infinite number of .doom files.

For example, you might want to have Project Brutality with DOOM and DOOM 2 as separate entries in the ES-DE interface.

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

If you want to add more minor mods to Project Brutality, just keep adding the lines with the mod file names, like this example:

`Project Brutality - But with Horses.doom`

```
doom_complete.pk3
PB_Staging_9f2561c.pk3
horse_armor.pk3
pinkgui.pk3
```

Be sure to name the `.doom` files so you understand what they are:

- `Project Brutality - The Ultimate Collection.doom`
- `Project Brutality - But with Horses.doom`
- `Project Brutality - Chex Quest with a Vengeance.doom`

It's that easy!

## Sharing is Caring

- Have you made a cool `.doom` file modpack? 
- Maybe you have found the perfect combination of over 50+ mods in one .doom file? 
- Share the .doom file and where to download the mods with the RetroDECK Community!

## Adding .doom Files to Steam as Separate Games

<img src="../../../wiki_system_guides/srm/brutaldoom.png" width="800">

You can use the built-in `Steam Sync` function to add .doom files as separate games in Steam with art.

Check the SRM Guide for more information.

**Check the:**

[SRM Guide](../../wiki_system_guides/srm/srm-guide.md) for more information.

