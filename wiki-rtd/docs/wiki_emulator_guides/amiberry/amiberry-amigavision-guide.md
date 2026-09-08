# Guide: Amiberry - AmigaVision

<img src="../../../wiki_images/logos/amigavision-logo.svg" width="150" alt="Amigavision logo">

**AmigaVision** is a community-driven, open-source Amiga frontend project designed to provide a streamlined, console-like experience while maintaining hardware accuracy and authenticity.

The project includes a minimal Workbench-based system, pre-optimized configurations for up to 4k resolutions. 



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
| Main Directory   | `retrodeck/storage/Amiberry/HardDrives`         |   `AmigaVision.hdf`  <br> `AmigaVision-Saves.hdf`          |
| Listning Directory   | `retrodeck/storage/Amiberry/HardDrives/listings/`         |               |
| Shared Directory   | `retrodeck/storage/Amiberry/HardDrives/Shared/`         |               |
| BIOS Directory   | `retrodeck/bios/`         |     `AmigaVision.rom`             |

---

## How-to: Use AmigaVision with RetroDECK

**Prerequisite:**  

You must have an AmigaVision collection ready (built via the provided scripts on the website or downloaded a demo collection from the community). Ensure `AmigaVision.hdf`, `AmigaVision.rom` and `AmigaVision-Saves.hdf` are available.

### Step 1: Add the AmigaVision Files

- Navigate to the HardDrives directory: `retrodeck/storage/Amiberry/HardDrives/`
- Copy / extract the contents of your folders / archive to the corresponding RetroDECK directories:  

| Source Folder | Destination |
|:--|:--|
| **Shared Directory** | `retrodeck/storage/Amiberry/HardDrives/shared/` |
| **Listings Directory** | `retrodeck/storage/Amiberry/HardDrives/listings/` |
| **HDD files** `AmigaVision.hdf` `AmigaVision-Saves.hdf` | `retrodeck/storage/Amiberry/HardDrives/` |
| **AmigaVision Kickstart Rom** `AmigaVision.rom` | `retrodeck/bios/` |

**Note:** RetroDECK includes a pre-configured `AmigaVision.uae` file, so no manual setup is needed. The required shaders are also bundled with RetroDECK.

### Step 2: Enable the AmigaVision

1. Open **RetroDECK Configurator** → **ES-DE Entries** → **Amiberry: AmigaVision** and enable AmigaVision support.
2. Restart RetroDECK.
3. Navigate to **Amiga** and launch **AmigaVision** in ES-DE.

---