# Doom 64 CE

**Doom 64 CE** is a set of overhauled total conversions for **GZDoom**, recreating **PlayStation DOOM** and **DOOM 64** with modern engine capabilities.

The project builds upon the original **PSX DOOM TC** and **DOOM 64 Retribution**, updating them to fully leverage recent GZDoom versions while introducing features that were not technically feasible at the time of their original release. Significant portions of the codebase are adapted from **GEC Master Edition (DZDoom)**, informed by reverse-engineered game code and existing source ports for accuracy.

Doom 64 CE is designed to be highly modular, offering numerous *optional* enhancements. Players may choose a near-vanilla experience or enable modern visual and gameplay features such as upscaled textures, PBR materials, advanced particle effects, and other enhancements commonly found in contemporary GZDoom mods.

## Installing Doom 64 CE in RetroDECK

### Prerequisites

**DOOM64.WAD** from a legal copy of **DOOM 64** (Steam or GOG)

Doom 64 CE requires the original `DOOM64.WAD` to run.

### Download DOOM 64 CE

**Doom 64 CE <latest version> (Full Download)**

Download the latest release from ModDB:  
[ModDB: DOOM CE](https://www.moddb.com/mods/doom-ce/downloads/)  
Extract the archive to a location of your choice.

## Create the DOOM 64 CE Folder

Create a folder named **DOOM 64 CE** under one of the following paths:

- `roms/doom/mods/DOOM 64 CE`

(Or anywhere under `roms/doom/` within your RetroDECK setup).

## Grab DOOM64.WAD (Steam)

Right-click **DOOM 64** in your Steam library and select  
**Manage → Browse Local Files**.

Copy the `DOOM64.WAD` file to a safe location for later use.

## Open Flips

Open RetroDECK Configurator 
Open Compoenents 
Open Flips
Press Apply Patch
Go to the doom CE download folder /patcher/ and select the DOOM64.bps and target the `DOOM64.WAD` you copied before. 

This will make a new `DOOM64.WAD` save it into `roms/doom/mods/DOOM 64 CE`



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
