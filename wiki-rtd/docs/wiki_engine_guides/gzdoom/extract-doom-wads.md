# How to: Get WADs from your bought copies of DOOM

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="150">


### Notice: Steam Flatpak Version - steamapps/ location

If you got the Flatpak version of Steam the `~/.local/share/Steam/steamapps/` folder is located in:

`~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/` when you follow this guide.


## What are the Official Addons wads?

[Doom Wiki - Official Addons](https://doomwiki.org/wiki/Official_add-ons)

---

## 2024 KEX Engine Version

Bethesta updated the DOOM + DOOM II listing to a new KEX Engine as of **2024-08-08**

The KEX Engine version of `DOOM + DOOM II` have spread out the files and assigned a random BethestaNet ID number to wads as their filename.

### Steam - KEX

#### Where are the base core iwads?

Some are located in:

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
| Legacy of Rust           |   id Software, Nightdive Studios, MachineGames      |   `ID1.WAD`,  `ID1-WEAP.WAD`, `ID1-RES.WAD`, `ID24RES.WAD`, `IDDM1.WAD` | Uses the new ID24 Standard|

Both Master Levels in one wad and Legacy of Rust are new for the release.

#### Steam DOOM - BethestaNet - DLCs / Mods folder

All of the BethestaNet Wads are located in:

`~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/Nightdive Studios/DOOM/bnetwads/`

### GOG - W.I.P

W.I.P


### KEX - Getting the mod wads

**Prerequisite:** You first need to download the addons from the featured mods list.

Go from the `Main Menu` -> Select a game like DOOM II -> `Mods Menu` -> `Featured Mods`

Some of the mods you will also need to click on `Mods Menu` -> `Browse` and search for them if they are no longer on the `Featured Mods`
list to match the Unity set.

#### Where are the .wads located?


Each `.wad` downloaded have it's own sub-folder based on an internal ID and contains the `.wad` file and a `index.json` file.

Opening the `index.json` file in each folder will tell you what game the `.wad` is.


**Example SIGILII in Steam:**

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

#### Addon List - KEX version


This list only shows you the major `Featured Mods` and Mods from  and not all mods.

The BID WAD should tell you where the file is located as well the as the BID WAD is always the same as the folder.

**Example**:

`/bnetwads/1d7e0be3-15ef-4227-8f57-12b8fc4540e8/1d7e0be3-15ef-4227-8f57-12b8fc4540e8.wad - Is Anomaly Report's folder and WAD`

| Name                     |                      Creator                        |    True WAD Name     | BID WAD     |   Comment  |
| :---                     | :---                                                |        :---:         |  :---:   |       :---:   |
| Anomaly Report           |   Michael Jan Krizik (valkiriforce)                 |   `AR.WAD`           |  `1d7e0be3-15ef-4227-8f57-12b8fc4540e8.wad`    | |
| Arrival                  |   Walker Wright (Pavera) and Brayden Hart (AD_79)   |   `ARRIVAL.WAD`      |  `d00614a1-68a6-4c1b-a389-50d1e4342cc9.wad`    | |
| Base Ganymede            |   Adam Woodmansey (Khorus)                          |   `BGCOMP.WAD`       |  `7479c5ab-3bda-4f6f-9aab-0cb67362414b.wad`    | |
| BTSX Episode 1           |   Esselfortium et al.                               |   `BTSX_E1.WAD`      |  `7e3109da-1608-4243-85c9-6acc19f2b7f4.wad`     | |
| BTSX Episode 2           |   Esselfortium et al.                               |   `BTSX_E2.WAD`      |  `b795475e-d170-4b9d-b9a4-b544e2bf1b71.wad`     | |
| Deathless                |   James Paddock                                     |   `DEATHLESS.WAD`    |  `954ff3ca-c214-422f-bd46-69b0bee89802.wad`     | |
| Doom Zero                |   Christopher Golden (DASI-I)                       |   `DOOMZERO.WAD`     |  `d1790fb2-2a04-4a17-8f55-0c39a7282d94.wad`    | |
| Double Impact            |   Ralphis & RottKing                                |   `DBIMPACT.WAD`     |  `33decf0e-239e-4574-b919-dcb55dbba841.wad`     | |
| Earthless: Prelude       |   James Paddock & Fuzzball                          |   `EARTHLESS_PR.WAD` |  `976848fb-16d9-43d8-bfca-9e453d492705.wad`    | |
| Harmony                  |   Thomas van der Velden, James Paddock              |   `HARM1.WAD`        |  `a3795b5e-f445-4a61-a599-e4aef2e02865.wad`    | |
| No End In Sight          |  Emil Brundage, Christopher Lutz, Xaser             |   `NEIS.WAD`         |  `c2105fc1-de85-4e39-9794-53d26399e19e.wad`     | |
| REKKR                    |   Matthew Little (Revae) et al.                     |   `REKKR.WAD`        |  `b15ec9df-3db9-43dd-a733-0ca25c74fdfc.wad`    | |
| Revolution!              |   Thomas van der Velden; MIDI pack contributors     |   `TVR!.WAD`         |  `2598592c-079b-4a3e-a7e0-6cd3fdc15b7d.wad`    | |
| Scientist                |   Roland van der Velden                             |   `SCI.WAD`          |  `e8b69c7e-5763-49c4-8643-a8138cc397e0.wad`    | |
| SIGIL II                 |   Romero Games                                      |   `SIGILII.WAD`      |  `585d6a05-e50c-4ad7-aac7-726d35d23a50.wad`    | |
| Syringe                  |   Pavera, Tarnsman, Marcaek, & Xaser                |   `SYRINGE.WAD`      |  `d1b4f278-55b5-4597-9f66-b17176e0843d.wad`    | |
| The Troopers' Playground |   Matthias Worch                                    |   `TTP.WAD`          |  `a6d72845-9449-45ba-9322-98c66362ab09.wad`    | |

---


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

| Name                     |                      Creator                        |    True WAD name         | ADDON ID |   Comment  |
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
