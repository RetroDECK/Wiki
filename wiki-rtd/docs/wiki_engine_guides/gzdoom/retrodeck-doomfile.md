# The RetroDECK .doom file

The RetroDECK `.doom` file is a feature for easy loading of doom files with mods.

## The RetroDECK .doom Parser

The `.doom` parser will look for any of the core doom iwads files that could be required to run a DOOM mod in the `/retrodeck/roms/doom/` directory.<br>

Here is what files it is currently looking for:

```
IWAD_FILES=("DOOM1.WAD" "DOOM.WAD" "DOOM2.WAD" "DOOM2F.WAD" "DOOM64.WAD" "TNT.WAD"
            "PLUTONIA.WAD" "HERETIC1.WAD" "HERETIC.WAD" "HEXEN.WAD" "HEXDD.WAD"
            "STRIFE0.WAD" "STRIFE1.WAD" "VOICES.WAD" "CHEX.WAD"
            "CHEX3.WAD" "HACX.WAD" "freedoom1.wad" "freedoom2.wad" "freedm.wad"
            "doom_complete.pk3"
            )
```

### What are core doom iwads?

It is just how the RetroDECK Team defines the [IWADS](https://doomwiki.org/wiki/IWAD) Gzdoom is looking for to be able to run.

- DOOM1.WAD - Doom 1 alternate name
- DOOM.WAD - Doom 1
- DOOM2.WAD - Doom 2
- DOOM2F.WAD - Doom 2 French
- DOOM64.WAD - Doom 64
- TNT.WAD - Final Doom - TNT: Evilution
- PLUTONIA.WAD -  Final Doom - The Plutonia Experiment
- HERETIC1.WAD - Heretic - Shareware Version
- HERETIC.WAD - Heretic: Shadow of the Serpent Riders
- HEXEN.WAD - Hexen
- HEXDD.WAD - Hexen: Deathkings of the Dark Citadel (Needs HEXEN.WAD as well to be played)
- STRIFE0.WAD - Strife: Quest for the Sigil - Demo
- STRIFE1.WAD - Strife: Quest for the Sigil - Commercial / Veteran Edition
- VOICES.WAD - Extra Voices for Strife: Quest for the Sigil - Commercial / Veteran Edition
- CHEX.WAD - Chex Quest
- CHEX3.WAD - Chex Quest 3
- HACX.WAD -  Hacx
- freedoom1.wad - Freedoom: Phase 1
- freedoom2.wad - Freedoom: Phase 2
- freedm.wad - FreeDM
- doom_complete.pk3 - WadSmoosh combined file

### What is doom_complete.pk3?

`doom_complete.pk3` is a file made by [WadSmoosh](https://jp.itch.io/wadsmoosh). It can combine all of the "DOOM + DOOM 2 + Official addons" into one file where you can select from all the campaigns without needing to load each separate wad.

## Recommended folder structure in retrodeck/roms/doom?

WIP

## What is the .doom file and how do you create it?

The `.doom` file is just an empty text file that is populated with the exact filenames of the files you want to load and in what order from top to bottom.

You should name the `.doom` file so you understand what it is, for example: `Project Brutality.doom`.

Each line represent one file, as long as the mods are compatible with each other you can add how lines as you want.

### What is the recommended load order of the .doom file?

The general guidelines on most mod pages is:

- Map WAD (Like DOOM2.WAD or DOOM.WAD).
- Bigger mods like Project Brutality.
- Any other mini-mods like huds, graphics or other tweaks.

But this can be different, check the where you download the mods if they have any recommended order requirement.

## Project Brutality .doom example:

In this example you have already downloaded a bunch of mods and have the core doom files already under the `/retrodeck/roms/doom/` folder.

You want to play [Project Brutality](https://www.moddb.com/mods/project-brutality) on DOOM 2 levels.

On the ModDB Page of Project Brutality they say that the order to run it is:


All you need to do is create an empty file called `Project Brutality.doom` in `/retrodeck/roms/doom/`.

Each line the the file will be the order the mods are loaded, make each lines value is called exactly what the file name is called.

So in the case of `Project Brutality.doom`

The contents will look like this

```
DOOM2.WAD
PB_Staging_9f2561c.pk3
```

The DOOM2.WAD is first loaded then the Project Brutality PB_Staging_9f2561c.pk3 file and the game starts.

`Project Brutality.doom` is now accessible from the ES-DE interface.


### Another Example: Doom Infinite

[Doom Infinite](https://www.moddb.com/mods/doom-infinite)

Create the `Doom Infinite.doom` file in `/retrodeck/roms/doom/`

```
DOOM2.WAD
DOOM_Infinite_DEMO_0978_6.pk3
```

## Customize the RetroDECK .doom files

You can customize it how you wish with the above examples as a guideline.<br>
There is nothing stopping you from adding more mods or create an infinite amount of `.doom` files.

Maybe you want to have Project Brutality with DOOM and Doom 2 as separate entries in the ES-DE interface.

 <br>

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
Just keep adding the lines with the mod file names how many you want.

Name the .doom file so you understand what it is and you are done:

- `Project Brutality - The Ultimate Collection.doom`
- `Project Brutality - But with Horses.doom`
- `Project Brutality - Chex Quest with a Vengeance.doom`

It is that easy.

