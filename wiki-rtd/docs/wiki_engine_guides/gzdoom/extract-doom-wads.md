# How to: Get WADs from your bought copies of DOOM

<img src="../../../wiki_images/logos/gzdoom-logo.png" width="75">


### Notice: Steam Flatpak Version - steamapps/ Location

If you are using the **Flatpak version of Steam**, the `~/.local/share/Steam/steamapps/` folder is located at:

`~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/` when you follow this guide.

---

## DOOM64.WAD (Steam)

1. Right-click **DOOM 64** in your Steam library and select.
   **Manage → Browse Local Files**.
2. Copy the `DOOM64.WAD` file to a safe location.

> Note: While `DOOM64.WAD` can not run as a standard IWAD in GZDoom, it must be patched to be compatible with mods and correctly interpreted as an IWAD.

--- 

## 2024 KEX Engine Version (Steam)

Bethesda updated the **DOOM + DOOM II** listin to the new **KEX Engine** as of **2024-08-08**.

The KEX Engine version spreads out the files and assigns a random **BethesdaNet ID number** to WADs as their filenames.

---


### Where are the base core iwads?

Some are located in:

`~/.local/share/Steam/steamapps/common/Ultimate Doom/rerelease/`

You can also find the location by

1. `Right Click` on `DOOM + DOOM II` in Steam.
2. Press `Properties`.
3. Go to the `Installed Files` tab.
4. Press the `Browse` button.

---

### Where are the downloaded bnetwads?

All of the downloaded bnetwads are located in:

`~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/Nightdive Studios/DOOM/bnetwads/`


---

### KEX Engine - Shipped by Default

The main game folder contains the following (Master Levels in one wad and Legacy of Rust are new for the release):

| Name                     |                      Creator                        |     WAD name         |   Comment  |
| :---                     | :---                                                |        :---:         |        :---:   |
| DOOM (1993)              |   id Software                                       | `DOOM.WAD`           | |
| DOOM II                  |   id Software                                       | `DOOM2.WAD`          | |
| Extras                   |   id Software, Nerve Software                       | `EXTRAS.WAD`         | [Extra.Wad](https://doomwiki.org/wiki/Extras.wad)|
| Master Levels            |   id Software                                       | `MASTERLEVELS.WAD`   | |
| No Rest for the Living   |   Nerve Software                                    |   `NERVE.WAD`        | |
| The Plutonia Experiment  |   Dario Casali & Milo Casali                        |   `PLUTONIA.WAD`     | |
| SIGIL                    |   Romero Games                                      |   `SIGIL.WAD`        | |
| SIGIL II                    |   Romero Games                                      |   `SIGILII.WAD`       | Was added later |
| TNT: Evilution           |   Team TNT                                          |   `TNT.WAD`          | |
| Legacy of Rust           |   id Software, Nightdive Studios, MachineGames      |   `ID1.WAD`,  `ID1-WEAP.WAD`, `ID1-RES.WAD`, `ID24RES.WAD`, `IDDM1.WAD` | Uses the new ID24 Standard|


---

### KEX Engine - Getting the Downloaded BethesdaNet

**Prerequisite:** First, download the add-ons from the featured mods list.

1. From the **Main Menu**, select a game (e.g., DOOM II) → **Mods Menu** → **Featured Mods**.
2. For some mods that are no longer on the Featured Mods list, go to **Mods Menu** → **Browse** and search for them to match the Unity Version set.

#### Where are the BethesdaNet WADs located?

Each downloaded `.wad` has its own sub-folder based on an internal ID.  
The folder contains:

- The `.wad` file  
- An `index.json` file


**Example SIGILII in Steam:**

`~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/Nightdive Studios/DOOM/bnetwads/585d6a05-e50c-4ad7-aac7-726d35d23a50/`

- 585d6a05-e50c-4ad7-aac7-726d35d23a50.wad 
- index.json


Opening `index.json`:


```
{
	"id" : "585d6a05-e50c-4ad7-aac7-726d35d23a50",      // Mod's BethesdaNet ID
	"title" : "SIGIL II",                               // Mod Title
	"version" : "2ed265fd-6fdf-45a5-a078-35811549ce3b", // Current uploaded version
	"wad" : "585d6a05-e50c-4ad7-aac7-726d35d23a50.wad"  // The WAD file
}

```

This reveals that `585d6a05-e50c-4ad7-aac7-726d35d23a50.wad` is in fact **SIGILII.WAD**.

**You can then copy it into:**

`retrodeck/roms/doom/` and rename it to:

`SIGILII.WAD`.

---

### Addon List with True WAD Names - KEX Engine version

This list only shows you some of the bnetwads (to match the content of the Unity version).

| Name                     |                      Creator                        |    True WAD Name     | bnetwad id     |   Comment  |
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
| Syringe                  |   Pavera, Tarnsman, Marcaek, & Xaser                |   `SYRINGE.WAD`      |  `d1b4f278-55b5-4597-9f66-b17176e0843d.wad`    | |
| The Troopers' Playground |   Matthias Worch                                    |   `TTP.WAD`          |  `a6d72845-9449-45ba-9322-98c66362ab09.wad`    | |

The `bnetwad id` should tell you what the file is called and also where the file is located as the `bnetwad id` always match the contaning folders name.

**Example**:

`/bnetwads/1d7e0be3-15ef-4227-8f57-12b8fc4540e8/1d7e0be3-15ef-4227-8f57-12b8fc4540e8.wad - Is Anomaly Report's folder and WAD`


---


## Unity version 2019

### What are the Official Addons wads in Unity?

[Doom Wiki - Official Addons](https://doomwiki.org/wiki/Official_add-ons)

### Unity version 2019 - Via the Beta Branch

Bethesta updated and removed the unity version as of **2024-08-08**

On Steam you can still access them on the Beta Branch (as of now) by:

1. `Right Click` on `DOOM + DOOM II` in Steam.
2. Press `Properties`.
3. Go to the `Betas` tab.
4. Beta Patrticipation change to `Previous re-release 2019 version`
5. Launch the game and keep following the guide.

---

### Base Core IWADs and DLC Locations (Steam)

| Game     | Type        | Location                                                                                  |
|----------|------------|-------------------------------------------------------------------------------------------|
| DOOM 2   | Masterbase IWADs | `~/.local/share/Steam/steamapps/common/Doom 2/masterbase/doom2/`                          |
| DOOM 2   | Masterbase IWADs | `~/.local/share/Steam/steamapps/common/Doom 2/masterbase/master/wads/`                   |
| DOOM 2   | Masterbase IWADs | `~/.local/share/Steam/steamapps/common/Doom 2/masterbase/Doom 2/masterbase/doom2/`      |
| DOOM 2   | DLC/WADs   | `~/.local/share/Steam/steamapps/compatdata/2300/pfx/drive_c/users/steamuser/Saved Games/id Software/DOOM 2/WADs/` |
| DOOM 1   | Base IWAD  | `~/.local/share/Steam/steamapps/common/Ultimate Doom/base/`                               |
| DOOM 1   | DLC/WADs   | `~/.local/share/Steam/steamapps/compatdata/2280/pfx/drive_c/users/steamuser/Saved Games/id Software/DOOM Classic/WADs/` |


---

### Unity 2019 Version - Getting the Official Add-ons

**Prerequisite:** First, download the add-ons from within the 2019 Unity Version.

1. From the **Main Menu**, go to the **Add-ons Menu**.
2. Download all available add-ons.

---

### How to Grab the Files?

Each add-on file is located in the `WADs/` folder from the previous step. Each folder is named with an ID number that corresponds to the add-on.

**Example: Sigil**

- Sigil has the ID `4`, so it is located in `/WADs/4/`.
- Inside that folder, you will find images and a file named `4` (no extension).  
- That `4` file is the actual `SIGIL.WAD`.

To use it:

1. Copy `/WADs/4/4`
2. Into`retrodeck/roms/doom`
3. Rename it `SIGIL.WAD`

---

### Addon List with ID - Unity version 

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


---

#### DOOM Unity Version - Extra: Windows tips

If you want to move the WADs from a Windows installations instead you can use this software:
[Unity Doom Ripper](https://github.com/kevansevans/Unity-Doom-Ripper)

The WADs are located in

`My Documents\Saved Games\id Software\DOOM 2\WADs\`

or

`My Documents\Saved Games\id Software\DOOM Classic\WADs\`

Then just transfer them with a USB Stick or another way to your Linux machine.

---

