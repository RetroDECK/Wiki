# How to: Get WADs from your bought copies of DOOM

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="150">


### Notice: Steam Flatpak Version - steamapps/ location

If you got the Flatpak version of Steam the `~/.local/share/Steam/steamapps/` folder is located in:

`~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/` when you follow this guide.


## What are the Official Addons wads?

[Doom Wiki - Official Addons](https://doomwiki.org/wiki/Official_add-ons)

## 2024 KEX Engine Version

Bethesta updated the DOOM + DOOM II listing to a new KEX Engine as of **2024-08-08**

The KEX Engine version of `DOOM + DOOM II` have spread out the files and assigned a random BethestaNet ID number to wads as their filename.

### Steam - KEX

#### Where are the base core iwads?

`~/.local/share/Steam/steamapps/common/Ultimate Doom/rerelease/`

You can also find the location by

1. `Right Click` on `DOOM + DOOM II` in Steam.
2. Press `Properties`.
3. Go to the `Installed Files` tab.
4. Press the `Browse` button.

This folder does not only contain the base versions of `DOOM.WAD` + `DOOM2.WAD` but also:

| Name                     |                      Creator                        |     WAD name         |   Comment  |
| :---                     | :---                                                |        :---:         |        :---:   |
| Extras                   |   id Software, Nerve Software                       | `EXTRAS.WAD`         | [Extra.Wad](https://doomwiki.org/wiki/Extras.wad)|
| Master Levels            |   id Software                                       | `MASTERLEVELS.WAD`   | |
| No Rest for the Living   |   Nerve Software                                    |   `NERVE.WAD`        | |
| The Plutonia Experiment  |   Dario Casali & Milo Casali                        |   `PLUTONIA.WAD`     | |
| SIGIL                    |   Romero Games                                      |   `SIGIL.WAD`        | |
| TNT: Evilution           |   Team TNT                                          |   `TNT.WAD`          | |
| Legacy of Rust           |   id Software, Nightdive Studios, MachineGames      |   `ID1.WAD`,  `ID1-WEAP.WAD`, `ID1-RES.WAD`, `ID24RES.WAD`, `IDDM1.WAD` | Uses the new ID24 Standard |


### Prerequisite: Download the Official Addons

Go from the `Main Menu` -> `Mods Menu` -> `Featured Mods`  for most of the big mods like SIGIL 2.


#### Steam DOOM DLC Mods Location

All of the BethestaNet Wads are located in:

`~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/Nightdive Studios/DOOM/bnetwads/`

Each .wad downloaded have it's own sub-folder based on an internal ID and contains the `.wad` file and a `index.json` file.

Opening the `index.json` file in each folder will tell you what game the `.wad` is.


**Example SIGILII:**

`~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/Nightdive Studios/DOOM/bnetwads/585d6a05-e50c-4ad7-aac7-726d35d23a50/`

Contains the `index.json` and `585d6a05-e50c-4ad7-aac7-726d35d23a50.wad`

Opening the `index.json`:


```
{
	"id" : "585d6a05-e50c-4ad7-aac7-726d35d23a50",      <-- Mod's BethestaNet ID
	"title" : "SIGIL II",                               <-- Mod Title
	"version" : "2ed265fd-6fdf-45a5-a078-35811549ce3b", <-- Current uploaded version (for updates)
	"wad" : "585d6a05-e50c-4ad7-aac7-726d35d23a50.wad"  <-- The Wad file
}

```

It reveals that `585d6a05-e50c-4ad7-aac7-726d35d23a50.wad` is in fact `SIGILII.WAD`.

You can then copy and paste it into `retrodeck/roms/doom/` and rename it to `SIGILII.WAD`.

### GOG - W.I.P

W.I.P

## Unity version 2019

### Steam

#### Unity version 2019 - Via the Beta Branch

Bethesta updated and removed the unity version as of **2024-08-08**

On Steam you can still access them on the Beta Branch (as of now) by:

1. `Right Click` on `DOOM + DOOM II` in Steam.
2. Press `Properties`.
3. Go to the `Betas` tab.
4. Beta Patrticipation change to `Previous re-release 2019 version`
5. Launch the game and keep following the guide


#### Steam - Where are the base core iwads?

DOOM 2:

- `~/.local/share/Steam/steamapps/common/Doom 2/masterbase/doom2/`
- `~/.local/share/Steam/steamapps/common/Doom 2/masterbase/master/wads/`
- `~/.local/share/Steam/steamapps/common/Doom 2/masterbase/Doom 2/masterbase/doom2/`

DOOM 1:

`DOOM.WAD`

- `~/.local/share/Steam/steamapps/common/Ultimate Doom/base/`

#### Steam - DOOM DLC Location

**DOOM 2:**

Steam:

`~/.local/share/Steam/steamapps/compatdata/2300/pfx/drive_c/users/steamuser/Saved Games/id Software/DOOM 2/WADs/`

**DOOM 1:**

Steam:

`~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/id Software/DOOM Classic/WADs/`

### GOG

W.I.P

#### GOG - Where are the base core iwads?

W.I.P

#### GOG - DOOM DLC Location

W.I.P

### Untity 2019 Version - Get the Official Addons

**Prerequisite:** You first need to download the addons from within the 2019 Unity Version.

Go from the `Main Menu` into the `Addons Menu` download them all.

#### Addon List - Unity version

| Name                     |                      Creator                        |     WAD name         | ADDON ID |   Comment  |
| :---                     | :---                                                |        :---:         |  :---:   |       :---:   |
| Anomaly Report           |   Michael Jan Krizik (valkiriforce)                 |   `AR.WAD`           |  `16`    | |
| Arrival                  |   Walker Wright (Pavera) and Brayden Hart (AD_79)   |   `ARRIVAL.WAD`      |  `15`    | |
| Base Ganymede            |   Adam Woodmansey (Khorus)                          |   `BGCOMP.WAD`       |  `18`    | |
| BTSX Episode 1           |   Esselfortium et al.                               |   `BTSX_E1.WAD`      |  `8`     | |
| BTSX Episode 2           |   Esselfortium et al.                               |   `BTSX_E2.WAD`      |  `9`     | |
| Deathless                |   James Paddock                                     |   `DEATHLESS.WAD`    |  `7`     | |
| Doom Zero                |   Christopher Golden (DASI-I)                       |   `DOOMZERO.WAD`     |  `11`    | |
| Double Impact            |   Ralphis & RottKing                                |   `DBIMPACT.WAD`     |  `5`     | |
| Earthless: Prelude       |   James Paddock & Fuzzball                          |   `EARTHLESS_PR.WAD` |  `13`    | |
| Harmony                  |   Thomas van der Velden, James Paddock              |   `HARM1.WAD`        |  `17`    | |
| No End In Sight          |  Emil Brundage, Christopher Lutz, Xaser             |   `NEIS.WAD`         |  `6`     | |
| No Rest for the Living   |   Nerve Software                                    |   `NERVE.WAD`        |  `3`     | |
| The Plutonia Experiment  |   Dario Casali & Milo Casali                        |   `PLUTONIA.WAD`     |  `2`     | |
| REKKR                    |   Matthew Little (Revae) et al.                     |   `REKKR.WAD`        |  `10`    | |
| Revolution!              |   Thomas van der Velden; MIDI pack contributors     |   `TVR!.WAD`         |  `14`    | |
| Scientist                |   Roland van der Velden                             |   `SCI.WAD`          |  `19`    | |
| SIGIL                    |   Romero Games                                      |   `SIGIL.WAD`        |  `4`     | |
| SIGIL II                 |   Romero Games                                      |   `SIGILII.WAD`      |  `21`    | |
| Syringe                  |   Pavera, Tarnsman, Marcaek, & Xaser                |   `SYRINGE.WAD`      |  `12`    | |
| TNT: Evilution           |   Team TNT                                          |   `TNT.WAD`          |  `1`     | |
| The Troopers' Playground |   Matthias Worch                                    |   `TTP.WAD`          |  `20`    | |

#### How to extract them?

Each file is located in the `WADs/` folder from the step above with an ID number that you can check on the list.

**Example: Sigil**

Sigil has the ID of `4` and is then located in the `/WADs/4/` folder.

Within that folder there are images and also a file without an extension just called `4`.
That `4` file is the `SIGIL.WAD` file.

All you need to do is copy the ``/WADs/4/4` file to `retrodeck/roms/doom` then rename it `SIGIL.WAD`.


#### DOOM Unity Version - Extra: Windows tips

If you want to move the WADs from a Windows installations instead you can use this software:
[Unity Doom Ripper](https://github.com/kevansevans/Unity-Doom-Ripper)

The WADs are located in

`My Documents\Saved Games\id Software\DOOM 2\WADs\`

or

`My Documents\Saved Games\id Software\DOOM Classic\WADs\`

Then just transfer them with a USB Stick or another way to your Linux machine.
