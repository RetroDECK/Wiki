# Guide: dhewm 3

<img src="../../../wiki_images/logos/dhewm3-logo.svg" width="150" alt="dhewm 3 logo">

dhewm 3 is the open source source port / game engine for ID Softwares DOOM 3 with mod support.

---

### dhewm 3 Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| dhewm 3 - Github | [Link](https://github.com/dhewm/dhewm3) |
| dhewm 3 - Web Page | [Link](https://dhewm3.org/) |


---

## Where to put the games?

DOOM games should be put under the `retrodeck/roms/doom3/` directory.

---

## What file formats does dhewm 3 support?

| File Type | What is it? | Comments |
| :--- | :---: | :---: |
| .doom3 | RetroDECK DOOM 3 launcher file |  |

---

## Does GZDOOM require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No. GZDoom does not require any BIOS or firmware files.

However, you do need copies of the official **DOOM 3** and **Doom 3: Resurrection of Evil** game data files and place them in  `retrodeck/roms/doom3/base`,  `retrodeck/roms/doom3/d3xp` / `retrodeck/roms/doom3/d3xp.doom3`. 

| pk4 File | Path | MD5 | Comments |
|------|------|-----|----------|
| DOOM 3 - pak000.pk4 | `retrodeck/roms/doom3/base` | `71b8d37b2444d3d86a36fd61783844fe` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak001.pk4 | `retrodeck/roms/doom3/base` | `4bc4f3ba04ec2b4f4837be40e840a3c1` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak002.pk4 | `retrodeck/roms/doom3/base` | `fa84069e9642ad9aa4b49624150cc345` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak003.pk4 | `retrodeck/roms/doom3/base` | `f22d8464997924e4913e467e7d62d5fe` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak004.pk4 | `retrodeck/roms/doom3/base` | `38561a3c73f93f2e6fd31abf1d4e9102` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak005.pk4 | `retrodeck/roms/doom3/base` | `2afd4ece27d36393b7538d55a345b90d` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak006.pk4 | `retrodeck/roms/doom3/base` | `a6e7003fa9dcc75073dc02b56399b370` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak007.pk4 | `retrodeck/roms/doom3/base` | `6319f086f930ec1618ab09b4c20c268c` | **DOOM 3 v1.3.1** |
| DOOM 3 - pak008.pk4 | `retrodeck/roms/doom3/base` | `28750b7841de9453eb335bad6841a2a5` | **DOOM 3 v1.3.1** |
| DOOM 3: Resurrection of Evil - pak000.pk4 | `retrodeck/roms/doom3/d3xp` / `retrodeck/roms/doom3/d3xp.doom3` | `a883fef0fd10aadeb73d34c462ff865d` | **Optional** |
| DOOM 3: Resurrection of Evil - pak001.pk4 | `retrodeck/roms/doom3/d3xp` / `retrodeck/roms/doom3/d3xp.doom3` | `06fc9be965e345587064056bf22236d2` | **Optional** |

**Note:** 

- The setup requires the original **DOOM 3** patched to **v1.3.1** (this is already done in GOG and Steam) and **Doom 3: Resurrection of Evil** files. 
- The remastered **DOOM 3: BFG Edition** is not supported.

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| Type   | Directory                                         | Comment                     |
|:------:|:-------------------------------------------------|:----------------------------|
| ROMs   | `retrodeck/roms/doom3/`                            |                             |
| base   | `retrodeck/roms/doom3/base`                            |                             |
| d3xp   | `retrodeck/roms/doom3/d3xp` /  `retrodeck/roms/doom3/d3xp.doom3`                             |                             |
| Saves  | `retrodeck/roms/doom3/<gamedir>/SavedGames`                      |           Each game is self contained                  |

---

## Where to buy official DOOM 3?

Below is a combined table containing both **Steam** and **GOG** purchase links for DOOM 3 and its expansion.

| Game / Bundle | Steam Link | GOG Link |
|--------------------------|------------------------------------------------------------------------|------------------------------------------------------------------------|
| DOOM 3 | [Steam](https://store.steampowered.com/app/208200/DOOM_3/) | [GOG](https://www.gog.com/en/game/doom_3) |

**Note:** 

- Buying DOOM 3 gives you the original **DOOM 3** with the **Resurrection of Evil** expansion, as well as the remastered **DOOM 3: BFG Edition**.

### I have bought the game how do I get my files?

**DOOM 3: Resurrection of Evil - Note:** 

You only need `pak000.pk4` the `pak001.pk4` not the rest of the .pk4 files under `<path>/Doom 3/d3xp/`.

**Steam**

Find the location by:

- Right-click **DOOM 3** and **DOOM 3: Resurrection of Evil** in your Steam library and select: **Manage → Browse Local Files**.

```
~/.local/share/Steam/steamapps/common/Doom 3/
├── base/
│   ├── pak000.pk4
│   ├── pak001.pk4
│   ├── pak002.pk4
│   ├── pak003.pk4
│   ├── pak004.pk4
│   ├── pak005.pk4
│   ├── pak006.pk4
│   ├── pak007.pk4
│   └── pak008.pk4
└── d3xp/
    ├── pak000.pk4
    └── pak001.pk4
```

**GOG**

```
~/GOG Games/DOOM 3/
├── base/
│   ├── pak000.pk4
│   ├── pak001.pk4
│   ├── pak002.pk4
│   ├── pak003.pk4
│   ├── pak004.pk4
│   ├── pak005.pk4
│   ├── pak006.pk4
│   ├── pak007.pk4
│   └── pak008.pk4
└── d3xp/
    ├── pak000.pk4
    └── pak001.pk4
```

---

## How-to: Play DOOM 3 in RetroDECK?

Make sure all the game files are at their proper location **Read Above**.

### DOOM 3

1. Navigate to `retrodeck/roms/doom3/`.
2. Create an empty file named `DOOM 3.doom3`.
3. Launch **DOOM 3** from RetroDECK.

### DOOM 3: Resurrection of Evil

1. Navigate to `retrodeck/roms/doom3/`.
2. Copy the `d3xp` folder containing the required game files.
3. Rename the copied folder to `d3xp.doom3`.
4. In ES-DE, highlight **d3xp**.
5. Open the **Main Menu** and select **Edit This Games Metadata**.
6. Change the **Name** field to `DOOM 3: Resurrection of Evil`.
7. Save the changes and launch the expansion from RetroDECK.

**Note:** Some mods are hardcoded to look for the `d3xp` directory. A copy named `d3xp.doom3` is therefore required so the expansion can be used as a non-list entry while preserving the original `d3xp` directory for mod compatibility.

---


## How-to: Play DOOM 3 Mods in RetroDECK

dhewm 3 supports two types of native DOOM 3 mods:

- **Standalone Game Mods:** Standalone experiences that should appear as separate games in ES-DE, such as **CLASSIC DOOM III**.
- **Enhancement Mods:** Mods that modify or enhance the base game, such as **Blood Mod** that adds HD texture packs.

**The following installation steps apply to both types:**

1. Download the mod from its respective source.
2. Extract the mod archive to `retrodeck/roms/doom3/<MOD_NAME>/`.
3. Ensure the mod files are located directly in `retrodeck/roms/doom3/<MOD_NAME>/` and are not nested inside additional subdirectories.

---

### dhewm 3: Built-in MOD Compatibility

dhewm 3 has native support for the following mods:

[dhewm 3 - MOD List](https://dhewm3.org/mods.html)

| Mod Name | Mod ID |
|----------|--------|
| Blood Mod v1.8 | `bloodmod`  `bloodmod_roe`|
| CLASSIC DOOM III | `cdoom` |
| Doom 3: The Lost Mission | `d3le` |
| Dentons Enhanced Doom3 | `dentonmod` |
| Desolated - The Crying Fate | `desolated` |
| ELDOOM | `eldoom` |
| HeXen: Edge Of Chaos | `eoc` |
| Fitz Packerton | `fitz` |
| Grimm: Quest for the Gatherers Key | `grimm` |
| Hard Corps v0.8.66 | `hardcorps` |
| LibreCoop Alpha v1.5 | `librecoop` / `librecoopd3xp` |
| Perfected Doom3 (ROE) v7 | `perfected` / `perfected_d3xp` |
| Real Gibs v1.06 | `realgibs` |
| Scarlet Rivensin: The Ruiner v0.9.82 | `rivensin` |
| Sikkmod v1.2 | `sikkmod` |
| Sikkmod RoE v1.1 | `sikkmodd3xp` |

---

### Loading mods from the Mods Menu

<img src="../dhewm3-mods-menu.png" width="600" alt="">

Some mods must be loaded manually from the DOOM 3 Mods menu:

1. Select Mods
2. Select the desired mod.
3. Select Load.

---

### Make Standalone Game Mods Show Up in ES-DE

**Example:** **CLASSIC DOOM III**

1. Rename the mod directory so it uses the `.doom3` extension.
2. For **CLASSIC DOOM III**, rename `cdoom` to `cdoom.doom3`.
3. The final path should be `retrodeck/roms/doom3/cdoom.doom3`.
4. In ES-DE, highlight **cdoom**.
5. Open the **Main Menu** and select **Edit This Games Metadata**.
6. Set the **Name** field to `CLASSIC DOOM III`.
7. Save the changes and launch **CLASSIC DOOM III** from RetroDECK.

**Note:** 

This method is **not guaranteed to work** with every Standalone Game Mod. If the mod does not launch, remove the .doom3 extension and try loading the mod from the **Mods** menu in DOOM 3.

---

### Enhancement Mods

**Example: Blood Mod**

Extract the mod archive directly into `retrodeck/roms/doom3/`. Do not place mod files inside additional nested directories.


**Example:**

```
retrodeck/roms/doom3/bloodmod/
retrodeck/roms/doom3/bloodmod_roe/
```

Then load the mod from the **Mods** menu in DOOM 3.

---

### Other Mods with No Built-in Support

Try the following options to see what works for your mod.

Extract the mod archive directly into `retrodeck/roms/doom3/` as normal.

**Note:** 

This method can be hit or miss and is **not guaranteed to work**. Compatibility depends on how the mod is designed.

#### Mods Menu

Try loading the mod from the **Mods** menu in DOOM 3.

#### Show Up in ES-DE as `.doom3`

If the mod works as a standalone game, try adding the `.doom3` extension so it appears as a separate game in ES-DE.

See the **Make Standalone Game Mods Show Up in ES-DE** guide above.

#### Try Launching It as a D3XP Mod

Another option is to launch the mod as a D3XP mod.

1. In ES-DE, highlight the mod you want to change.
2. Open **Game Options**.
3. Select **Edit This Game's Metadata**.
4. Scroll to **Alternative Emulator**.
5. Select **dhewm3 [Custom D3XP Mod] (Standalone)**.
6. Select **Save**.

This launches the mod with the `+set fs_game_base d3xp` option enabled, which may be required by some mods. The required game data files must be located in `retrodeck/roms/doom3/d3xp` for this to work.

---

