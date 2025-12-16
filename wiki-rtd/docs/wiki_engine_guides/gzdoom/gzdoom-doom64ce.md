# Guide: Running Doom 64 CE in RetroDECK

<img src="../../../wiki_images/logos/doomce-logo.png" width="150">

**Doom 64 CE** is a set of overhauled total conversions for **GZDoom**, recreating **PlayStation DOOM** and **DOOM 64** with modern engine features.

Building on **PSX DOOM TC** and **DOOM 64 Retribution**, it updates the originals to leverage recent GZDoom capabilities and adds features previously unavailable.

Highly modular, **Doom 64 CE** allows players to choose a near-vanilla experience or enable enhancements like upscaled textures, PBR materials, and advanced particle effects.


---

## Installing Doom 64 CE in RetroDECK

#### Prerequisites

**DOOM64.WAD** from a legal copy of **DOOM 64** (Steam or GOG)

Doom 64 CE requires the original `DOOM64.WAD` to run.

---

### Download DOOM 64 CE

**Doom 64 CE <latest version> (Full Download)**

Download the latest release from ModDB:
[ModDB: DOOM CE](https://www.moddb.com/mods/doom-ce/downloads/)
Extract the archive to a location of your choice.

---

### Create the DOOM 64 CE Folder

Create a folder named **DOOM 64 CE** under one of the following paths:

- `roms/doom/mods/DOOM 64 CE`

(Or anywhere under `roms/doom/` within your RetroDECK setup).

---

### Grab DOOM64.WAD (Steam)

1. Right-click **DOOM 64** in your Steam library and select.
   **Manage → Browse Local Files**.
2. Copy the `DOOM64.WAD` file to a safe location.

> Note: While `DOOM64.WAD` can not run as a standard IWAD in GZDoom, it must be patched to be compatible with mods and correctly interpreted as an IWAD.

---

### Apply Flips Patch

<img src="../../../wiki_images/logos/flips-logo.png" width="25">

1. Open **RetroDECK Configurator**.
2. Go to **Components → Flips**.
3. Press **Apply Patch**.
4. Navigate to the Doom 64 CE download folder `/patcher/` and select `DOOM64.bps`.
5. Set the target to the `DOOM64.WAD` you copied earlier.

This will create a new patched `DOOM64.WAD`. 

Save it into: `roms/doom/mods/DOOM 64 CE`

---

### Add FM Banks and Soundfonts into Storage

Copy the files from the Doom 64 CE package into the following folders:

- `fm_banks` → `storage/gzdoom/audio/fm_banks`
- `soundfonts` → `storage/gzdoom/audio/soundfonts`

---


### Copy the Following Files

Place these files into: `roms/doom/mods/DOOM 64 CE`

```
DOOM64.CE.ipk3
DOOM64.CE.Addon.BGM.Extended.pk3
DOOM64.CE.Addon.GFX.Brightmaps.pk3
DOOM64.CE.Addon.GFX.Decals.pk3
DOOM64.CE.Addon.GFX.Extra.pk3
DOOM64.CE.Addon.GFX.Parallax.pk3
DOOM64.CE.Addon.GFX.PBR.pk3
DOOM64.CE.Addon.SFX.HQ.pk3
brightmaps.pk3
game_support.pk3
game_widescreen_gfx.pk3
lights.pk3
```

---

### Create `DOOM 64 CE.doom`

Create a file named **`DOOM 64 CE.doom`** in the root of the `roms/doom` folder (or your preferred location) and add the following contents:

```
DOOM64.WAD
DOOM64.CE.ipk3
DOOM64.CE.Addon.BGM.Extended.pk3
DOOM64.CE.Addon.GFX.Brightmaps.pk3
DOOM64.CE.Addon.GFX.Decals.pk3
DOOM64.CE.Addon.GFX.Extra.pk3
DOOM64.CE.Addon.GFX.Parallax.pk3
DOOM64.CE.Addon.GFX.PBR.pk3
DOOM64.CE.Addon.SFX.HQ.pk3
brightmaps.pk3
game_support.pk3
game_widescreen_gfx.pk3
lights.pk3
```

**Optional:** Remove any addon files from the doom file if you prefer a more vanilla experience.

---

### Play DOOM 64 CE

You can now launch your new doom file from RetroDECK and enjoy **DOOM 64 CE**.


