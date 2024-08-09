# How to: Get WADs from your bought copies of DOOM

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="150">

## Where are the Official Addons wads?

[Doom Wiki - Official Addons](https://doomwiki.org/wiki/Official_add-ons)

## 2024 KEX Engine Version

Bethesta updated the DOOM + DOOM II listing to a new KEX Engine as of **2024-08-08**

W.I.P

### Steam

The KEX Engine version of DOOM + DOOM II have spread out the files a bit more.

#### Where are the base core iwads?

`/Steam/steamapps/common/Ultimate Doom/rerelease/`


### Prerequisite: Download the Official Addons

Go from the `Main Menu` -> `Mods Menu` -> `Featured Mods`  subscribe to them all.


#### Steam DOOM DLC Location


### GOG



## Unity versions 2019

### Steam

Bethesta updated and removed the unity version as of **2024-08-08**

On Steam you can still access them on the Beta Branch (as of now) by:

1. `Right Click` on `DOOM + DOOM II` in Steam.
2. Press `Properties`.
3. Go to the `Betas` tab.
4. Beta Patrticipation change to `Previous re-release 2019 version`
5. Launch the game and keep following the guide


#### Where are the base core iwads?

DOOM 2:

- `Steam/steamapps/common/Doom 2/masterbase/doom2/`
- `Steam/steamapps/common/Doom 2/masterbase/master/wads/`
- `Steam/steamapps/common/Doom 2/masterbase/Doom 2/masterbase/doom2/`

DOOM 1:

`DOOM.WAD`

- `Steam/steamapps/common/Ultimate Doom/base/`

### Prerequisite: Download the Official Addons

You first need to download the addons from within the 2019 Unity Version.

Go from the `Main Menu` into the `Addons Menu` download them all.

#### Steam DOOM DLC Location

**DOOM 2:**

Steam:

`Steam/steamapps/compatdata/2300/pfx/drive_c/users/steamuser/Saved Games/id Software/DOOM 2/WADs/`

**DOOM 1:**

Steam:

`Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/id Software/DOOM Classic/WADs/`

#### Flatpak steamapps/ location

If you got the Flatpak version of Steam the Links the `Steam/steamapps/` folder is located in:<br>
`home/<username>/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/`

### GOG

W.I.P

### Addon List - Unity version

| Name                     |                      Creator                        |     WAD name         | ADDON ID |
| :---                     | :---                                                |        :---:         |  :---:   |
| Anomaly Report           |   Michael Jan Krizik (valkiriforce)                 |   `AR.WAD`           |  `16`    |
| Arrival                  |   Walker Wright (Pavera) and Brayden Hart (AD_79)   |   `ARRIVAL.WAD`      |  `15`    |
| Base Ganymede            |   Adam Woodmansey (Khorus)                          |   `BGCOMP.WAD`       |  `18`    |
| BTSX Episode 1           |   Esselfortium et al.                               |   `BTSX_E1.WAD`      |  `8`     |
| BTSX Episode 2           |   Esselfortium et al.                               |   `BTSX_E2.WAD`      |  `9`     |
| Deathless                |   James Paddock                                     |   `DEATHLESS.WAD`    |  `7`     |
| Doom Zero                |   Christopher Golden (DASI-I)                       |   `DOOMZERO.WAD`     |  `11`    |
| Double Impact            |   Ralphis & RottKing                                |   `DBIMPACT.WAD`     |  `5`     |
| Earthless: Prelude       |   James Paddock & Fuzzball                          |   `EARTHLESS_PR.WAD` |  `13`    |
| Harmony                  |   Thomas van der Velden, James Paddock              |   `HARM1.WAD`        |  `17`    |
| No End In Sight          |  Emil Brundage, Christopher Lutz, Xaser             |   `NEIS.WAD`         |  `6`     |
| No Rest for the Living   |   Nerve Software                                    |   `NERVE.WAD`        |  `3`     |
| The Plutonia Experiment  |   Dario Casali & Milo Casali                        |   `PLUTONIA.WAD`     |  `2`     |
| REKKR                    |   Matthew Little (Revae) et al.                     |   `REKKR.WAD`        |  `10`    |
| Revolution!              |   Thomas van der Velden; MIDI pack contributors     |   `TVR!.WAD`         |  `14`    |
| Scientist                |   Roland van der Velden                             |   `SCI.WAD`          |  `19`    |
| SIGIL                    |   Romero Games                                      |   `SIGIL.WAD`        |  `4`     |
| SIGIL II                 |   Romero Games                                      |   `SIGILII.WAD`      |  `21`    |
| Syringe                  |   Pavera, Tarnsman, Marcaek, & Xaser                |   `SYRINGE.WAD`      |  `12`    |
| TNT: Evilution           |   Team TNT                                          |   `TNT.WAD`          |  `1`     |
| The Troopers' Playground |   Matthias Worch                                    |   `TTP.WAD`          |  `20`    |

### How to extract them?

Each file is located in the `WADs/` folder from the step above with an ID number that you can check on the list.

#### Example: Sigil

Sigil has the ID of `4` and is then located in the `/WADs/4/` folder.

Within that folder there are images and also a file without an extension just called `4`.
That `4` file is the `SIGIL.WAD` file.

All you need to do is copy the ``/WADs/4/4` file to `retrodeck/roms/doom` then rename it `SIGIL.WAD`.


### Extra: Windows tips

If you want to move the WADs from a Windows installations instead you can use this software:
[Unity Doom Ripper](https://github.com/kevansevans/Unity-Doom-Ripper)

The WADs are located in

`My Documents\Saved Games\id Software\DOOM 2\WADs\`

or

`My Documents\Saved Games\id Software\DOOM Classic\WADs\`

Then just transfer them with a USB Stick or another way to your Linux machine.
