# Guide: FS-UAE - AmigaVision

<img src="../../../wiki_images/logos/amigavision-logo.svg" width="150">

**AmigaVision** is a community-driven, open-source Amiga launcher project designed to provide a streamlined, console-like experience while maintaining hardware accuracy and authenticity. It allows users to create a customized AmigaVision setup from personal game collections.  

The project includes a minimal Workbench-based system, pre-optimized configurations for up to 4k resolutions, and is compatible with FS-UAE. 

**When to Use AmigaVision**

- You want the benefit of pre-optimized configurations for games and demos.  
- You prefer a single entry in ES-DE under the Amiga category, launching the AmigaVision frontend.

---

### AmigaVision Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| AmigaVision Launcher | [Link](https://amiga.vision/) |


---

## Does AmigaVision require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes

| ROM File | Comments |
|---------|----------|
| AmigaVision.rom | Renamed Kickstart 4.0 ROM |  
| AmigaVision.hdf | AmigaVision main HDD |  
| AmigaVision-Saves.hdf | AmigaVision saves HDD |  


---


## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| Main Directory   | `retrodeck/storage/FS-UAE/AmigaVision/`         |   `AmigaVision.hdf`  <br> `AmigaVision-Saves.hdf`          |
| Listning Directory   | `retrodeck/storage/FS-UAE/AmigaVision/listings/`         |               |
| Shared Directory   | `retrodeck/storage/FS-UAE/AmigaVision/shared/`         |               |

---

## How to Use AmigaVision with RetroDECK

**Prerequisite:**  

You have built your AmigaVision collection using the provided scripts and specifications, producing the `AmigaVision.hdf` and `AmigaVision-Saves.hdf` files (check their website).

### Step 1: Create the AmigaVision Files and Add the BIOS

1. Navigate to the RetroDECK Amiga directory: `retrodeck/roms/amiga/`
2. Create a file named `AmigaVision.fdi` in this directory.  
3. Place the `AmigaVision.rom` file into the BIOS directory: `retrodeck/bios/`
4. Copy the contents of your folders to the corresponding RetroDECK directories:  

**Shared Directory:** copy contents to `retrodeck/storage/FS-UAE/AmigaVision/shared/`  
**Listings Directory:** copy contents to `retrodeck/storage/FS-UAE/AmigaVision/listings/`
**HDD files:** copy `AmigaVision.hdf` and `AmigaVision-Saves.hdf` to `retrodeck/storage/FS-UAE/AmigaVision/`

### Step 2: Configuring the Alternative Emulator in RetroDECK

1. Launch **RetroDECK**.
2. Navigate to the **Amiga** menu and **AmigaVision** entry.
3. Open the **Edit This Game's Metadata** menu.
4. Select **Alternative Emulator**.
5. Choose **`FS-UAE (Standalone) AmigaVision`** from the list.
6. Save.

RetroDECK will now launch AmigaVision using FS-UAE.

---
