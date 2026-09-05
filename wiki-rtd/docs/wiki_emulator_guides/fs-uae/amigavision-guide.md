# Guide: FS-UAE - AmigaVision

<img src="../../../wiki_images/logos/amigavision-logo.svg" width="150" alt="Amigavision logo">

**AmigaVision** is a community-driven, open-source Amiga frontend project designed to provide a streamlined, console-like experience while maintaining hardware accuracy and authenticity.

The project includes a minimal Workbench-based system, pre-optimized configurations for up to 4k resolutions. 

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
| **HDD files** `AmigaVision.hdf` `AmigaVision-Saves.hdf` | `retrodeck/storage/FS-UAE/AmigaVision/` |

### Step 2: Enable the AmigaVision

1. Open **RetroDECK Configurator** → **ES-DE Entries** → **FS-UAE: AmigaVision** and enable AmigaVision support.
2. Restart RetroDECK
3. Navigate to **Amiga** and launch **AmigaVision** in ES-DE.

---