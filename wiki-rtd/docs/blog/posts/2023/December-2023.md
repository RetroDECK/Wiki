---
date: 2023-12-18
---
# December 2023: RetroDECK's Doomy December:

Twas the night before Christmas, and all through Mars space.<br>
Not a creature was stirring, all over the base. <br>
The chainsaws were hung by the fireplace with care. <br>
In hopes that the demons would soon be there.<br>
...

Rip and tear!
<br>
<br>
<!-- more -->

<img src="../../../doom-esde.png" width="550">

*Theme is Alekfull NX (Revisited) by antfortytwo and fagnerpc. Also testing and feedback by Lazorne (RetroDECK).*

# GZDoom and modding

We in the RetroDECK team always believe that modding, texture replacements and tinkering is a core part of the gaming experience. <br>
So on this secret December update we decided to share some technical details on what we are working on for DOOM.

If you like running DOOM mods/fan-games today by installing GZDoom from flathub it can be quite daunting for the average player on how to get it running.

Access the hidden folders, understand what configs to edit to make it work and in some cases drag-and-drop files into the GZDoom application.

So what we are working on now is to make it at least a bit easier to play DOOM mods with RetroDECK.

---

## How it works in RetroDECK today

The files you put in `/retrodeck/roms/doom/` today are:

- .iwad
- .wad
- .pwad

Then they are added into the ES-DE interface and run as default with the `RetroArch Core` - `PrBoom`.<br>
`PrBoom` only supports a few file types, many doom mods don't work and this in total offers an inferior experience.<br>
You do get the benefit of all that RetroArch offers with the core tho.

---

## How it will work in 0.8b with GZDoom

With the addition of GZDoom into RetroDECK we will make it the new default for running DOOM and also get support for the following file formats:

- .iwad
- .wad
- .pwad
- .pk3
- .ipk3
- .pk4
- .deh
- .bex

But we will also create a new format called the `.doom` file and a new parser to handle them.

---

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

---

## The .doom file

The .doom file is an empty text file they you can write what order to load the wads into GZDoom.<br>
The goal is:

- Easier controll to load what you want.
- Reduce duplicates files and you only will need one core file and one version of the mod file.
- Make it easier to run from the ES-DE interface.

---

## Project Brutality .doom examples:

Lets say you have a bunch of mods and core doom wads already downloaded under the `/retrodeck/roms/doom/` folder.

You want to play [Project Brutality](https://www.moddb.com/mods/project-brutality) on DOOM 2 levels.

On the ModDB Page of Project Brutality they say that the order to run it is:

- Map WAD
- Project Brutality
- Any other mini-mods

All you need to do is create an empty file called `Project Brutality.doom`

Each line the the file will be the order the mods are loaded.

So in the case of `Project Brutality.doom`

The contents will look like this

```
DOOM2.WAD
PB_Staging_9f2561c.pk3
```

You can now run Project Brutality from RetroDECK.

---

### But I want the metal soundtrack!

Maybe after a few minutes you feel.... wait I really want the `Doom Metal Soundtrack Mod - Volume 5` mod as well to give better sound.

So you go back out open the `Project Brutality.doom` text file and add:

```
DOOM2.WAD
PB_Staging_9f2561c.pk3
DoomMetalVol5.wad
```

Save and go back out to play with those metal tunes.

---

### I'm sick of Project Brutality, I want to play something else a Rogue-Like!

[Doom Infinite](https://www.moddb.com/mods/doom-infinite)

`Doom Infinite.doom`
```
DOOM2.WAD
DOOM_Infinite_DEMO_0978_6.pk3
```

---

## Customize the .doom files
You can customize it how you wish with the above examples as a guideline.<br>
There is nothing stopping you from adding more mods or create an infinite amount of `.doom` files.

Maybe you want to have Project Brutality with DOOM and Doom 2 as separate entries in the ES-DE interface. <br>

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

---

## Sharing is caring

As it is soon Christmas we want to talk about the importance of sharing.<br>
Maybe you will make a really neat `.doom` file in the future with 10, 20, 50 mods that you think is really cool.<br>

Share the `.doom` file and where to download the mods with the RetroDECK Community, tell everyone:

```
HEY Everyone!

Download the mods from here (links)!
Put them into the /retrodeck/roms/doom/ folder.
Then put this .doom file I made: CoolDOOM.doom into the same folder.
For the ultimate cool experience!
```

---

### 🎆🤶 Happy Holidays 🎅🎇

Did you like the Christmas Boot Logo? We got many more holidays up for grabs check: About RetroDECK 📖 -> Boot Logos <br>

If you are an artist and want make a logo to contact the RetroDECK Team on Discord for more information if you are interested.

With that the RetroDECK Team wishes you happy holidays and a happy new year!


**Check out our:**

[Discord](https://discord.gg/WDc5C9YWMx)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)
