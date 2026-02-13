# How To: Manage BIOS and Firmware

<img src="../../wiki_icons/pixelitos/cpu.png" width="75">

BIOS and firmware act as the low-level software that initializes a system and ensures hardware operates correctly. In emulation, the correct BIOS/firmware is often essential for accurate system behavior and sometimes required for an emulator to run at all.

---

## Directory structure

<img src="../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

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

RetroDECK includes an automated BIOS Checker based on the each components `component_manifest.json` file under the `bios` key. 

Each entry most likely contains:

- **filename** - The exact filename of the file.

- **md5** - The MD5 checksum string.

- **system** - The target system or systems identifier in the ES-DE/RetroDECK structure that requires the file.

- **description** - A brief explanation of what the BIOS file contains or why it's needed.

- **required** - Indicates whether the BIOS is mandatory, optional, or if at least one file from a group is needed. 

Typical values include:<br>

`Required` - Needed for the games to run.<br>
`Required, for some <Country> games` - Needed for country-specific games to run.<br>
`Required, at least one` - At least one BIOS of this type must be present for games to run.<br>
`Optional` - Not required for general functionality but may enable extra features.

- **paths** *(optional)* - The location where the file should be placed if not in the default `retrodeck/bios` directory.

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
      "description": "Kanji font ROM for Panasonic FZ-1J - required for Japanese games",
      "required": "Required for some Japanese games."
    },

```

### Can I help update the Lists?

Yes, you can help update the lists by submitting pull requests on our GitHub in the components repo. Follow the same structure to add more BIOS/Firmware or correct any mistakes.

---
