# How To: Manage BIOS and Firmware

<img src="../../../wiki_icons/pixelitos/cpu.png" width="75">

BIOS and firmware act as the low-level software that initializes a system and ensures hardware operates correctly. In emulation, the correct BIOS/firmware is often essential for accurate system behavior and sometimes required for an emulator to run at all.

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

By default, BIOS and firmware files should be placed in the main BIOS directory or within its subfolders. Some components also require BIOS/firmware to be located alongside game ROMs.

| Type                  | Folder                          | Comment |
|-----------------------|----------------------------------|---------|
| **BIOS Folder**       | `retrodeck/bios`                 | Primary default location for all BIOS/firmware files |
| **BIOS Subfolders**   | `retrodeck/bios/<subfolders>`    | Used by some components that expect BIOS files in structured subdirectories |
| **ROMS Subfolders**    | `retrodeck/roms/<subfolders>`    | Used by some components that require BIOS/firmware files to be placed next to the games |

Some systems provide additional or alternative valid paths. Refer to the component-specific guides for full path requirements.

---

## System-Specific Instructions

Each component guide within this wiki includes detailed steps for installing the required BIOS or firmware. Always consult the relevant guide to ensure correct setup.

---

## RetroDECK BIOS Checker List

RetroDECK includes an automated BIOS Checker based on the internal `bios.json` file. This list is continually updated as new systems and requirements are added.

Each entry contains:

- **BIOS Name** – Expected filename  
- **md5** – MD5 checksum for validation  
- **system** – Emulator or system using the BIOS  
- **description** – Purpose of the file  
- **required** – Indicates if it is mandatory for system operation  
- **paths** – Valid alternative locations besides `~/retrodeck/bios`. If no `paths` key is provided, the BIOS Checker defaults to `~/retrodeck/bios`.

**Read more:**

[RetroDECK Cooker - bios.json](https://github.com/RetroDECK/RetroDECK/blob/cooker/config/retrodeck/reference_lists/bios.json)

### Examples

**neogeo.zip:**

```
    {
      "filename": "neogeo.zip",
      "md5": "00dad01abdbf8ea9e79ad2fe11bdb182",
      "system": "fbneo",
      "description": "Neo Geo BIOS",
      "required": "required",
      "paths": [
        "$rd_home_roms_path/neogeo",
        "$rd_home_roms_path/fbneo",
        "$rd_home_roms_path/arcade"
      ]
    },
```

**panafz1j-kanji.bin**

```
    {
      "filename": "panafz1j-kanji.bin",
      "md5": "c23fb5d5e6bb1c240d02cf968972be37",
      "system": "3do",
      "description": "Kanji font ROM for Panasonic FZ‑1J – required for Japanese games",
      "required": "Required for some Japanese games."
    },

```

### Can I help update the List?

Yes, you can help update the list by submitting pull requests on our GitHub. Follow the same structure to add more BIOS/Firmware or correct any mistakes.

---
