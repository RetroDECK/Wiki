# Guide: FS-UAE - AmigaVision

<img src="../../../wiki_images/logos/amigavision-logo.svg" width="150" alt="Amigavision logo">

**AmigaVision** is a community-driven, open-source Amiga launcher / frontend project designed to provide a streamlined, console-like experience while maintaining hardware accuracy and authenticity. It allows users to create a customized AmigaVision setup from personal game collections.  

The project includes a minimal Workbench-based system, pre-optimized configurations for up to 4k resolutions and is compatible with FS-UAE. 

A pre-configued `AmigaVision.fs-uae` configuration file is included by default in RetroDECK.

**When to Use AmigaVision**

- You want the benefit of pre-optimized configurations for games and demos.  
- You prefer a single entry in ES-DE under the Amiga category, launching the AmigaVision frontend.

---

### AmigaVision Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| AmigaVision - Website | [Link](https://amiga.vision/) |


---


## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| Main Directory   | `retrodeck/storage/FS-UAE/AmigaVision/`         |   `AmigaVision.hdf`  <br> `AmigaVision-Saves.hdf`          |
| Listning Directory   | `retrodeck/storage/FS-UAE/AmigaVision/listings/`         |               |
| Shared Directory   | `retrodeck/storage/FS-UAE/AmigaVision/shared/`         |               |

---

## How-to: Use AmigaVision with RetroDECK

**Prerequisite:**  

You must have an AmigaVision collection ready (built via the provided scripts on the website or downloaded a demo collection from the community). Ensure `AmigaVision.hdf` and `AmigaVision-Saves.hdf` are available.

### Step 1: Add the AmigaVision Files

- Navigate to the RetroDECK AmigaVision directory: `retrodeck/storage/FS-UAE/AmigaVision/`
- Copy / extract the contents of your folders / archive to the corresponding RetroDECK directories:  

| Source Folder | Destination |
|:--|:--|
| **Shared Directory** | `retrodeck/storage/FS-UAE/AmigaVision/shared/` |
| **Listings Directory** | `retrodeck/storage/FS-UAE/AmigaVision/listings/` |
| **HDD files** `AmigaVision.hdf` `AmigaVision-Saves.hdf` | `retrodeck/storage/FS-UAME/AmigaVision/` |

### Step 2: Generate the AmigaVision.fdi

#### Method 1: Using the Configurator

- Open **RetroDECK Configurator** → **FS-UAE: AmigaVision** and enable AmigaVision support.
- This generates `AmigaVision.fdi` under `retrodeck/roms/amiga/`.

#### Method 2: Manual Setup

- Manually create a file called `AmigaVision.fdi` under `retrodeck/roms/amiga/`.

### Step 3: Configuring the `AmigaVision` Alternative Emulator in RetroDECK

1. Launch **RetroDECK**.
2. Navigate to **Amiga** → **AmigaVision** in ES-DE.
3. Press **Select** or **F1** to open **Edit This Game's Metadata**.
4. Choose **Alternative Emulator**.
5. Select **FS-UAE (Standalone) AmigaVision**.
6. Save changes.

RetroDECK will now launch AmigaVision using FS-UAE.

---