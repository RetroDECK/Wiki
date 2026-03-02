# component_manifest.json

A JSON file that defines metadata, capabilities, and configuration logic for a RetroDECK component. This includes system compatibility, supported presets, menu integration, and core-specific settings.

## Description

The `component_manifest.json` file provides both informational and functional data used by the RetroDECK Framework, Configurator menus, and API calls. 

Each manifest includes:

- Component metadata (name, description, supported systems)
- Configurator menu entries
- Compatible presets and their possible states
- Actions required to apply presets
- Core-specific metadata (if applicable)

---


## Example Structure: PPSSPP

```
{
  "ppsspp": {
    "name": "PPSSPP",
    "description": "PPSSPP is a PlayStation Portable (psp) emulator.",
    "url_rdwiki": "https://retrodeck.readthedocs.io/en/latest/wiki_emulator_guides/ppsspp/ppsspp-guide/",
    "url_webpage": "https://www.ppsspp.org/",
    "url_donation_purchase": "https://www.ppsspp.org/buygold",
    "url_source": "https://github.com/hrydgard/ppsspp",
    "component_type": "Emulator",
    "system": "psp",
    "system_friendly_name": "Playstation Portable",
    "compatible_presets": {
      "savestate_auto_load": [
        "false",
        "true"
      ],
      "cheevos": [
        "false",
        "true"
      ],
      "cheevos_hardcore": [
        "false",
        "true"
      ]
    },
    "preset_actions": {
      "config_file_format": "ppsspp",
      "savestate_auto_load": [
        {
          "enabled_states": [
            "true"
          ],
          "setting_name": "AutoLoadSaveState",
          "action": "change",
          "new_setting_value": "2",
          "section": "General",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        }
      ],
      "cheevos": [
        {
          "enabled_states": [
            "true"
          ],
          "setting_name": "AchievementsEnable",
          "action": "change",
          "new_setting_value": "True",
          "section": "Achievements",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        },
        {
          "enabled_states": [
            "true"
          ],
          "setting_name": "AchievementsUserName",
          "action": "change",
          "new_setting_value": "$cheevos_username",
          "section": "Achievements",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        },
        {
          "enabled_states": [
            "true"
          ],
          "setting_name": "cheevos_token",
          "action": "change",
          "new_setting_value": "$cheevos_token",
          "section": "",
          "target_file": "$ppsspp_retroachievements_dat",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp_retroachievements.dat"
        }
      ],
      "cheevos_hardcore": [
        {
          "enabled_states": [
            "true"
          ],
          "setting_name": "AchievementsChallengeMode",
          "action": "change",
          "new_setting_value": "True",
          "section": "Achievements",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        }
      ],
      "bios": {
        "filename": "ppge_atlas.zim",
        "md5": "866855cc330b9b95cc69135fb7b41d38",
        "system": "psp",
        "description": "PSP Atlas ZIM - asset package for PSP homebrew",
        "required": "Optional"
      }
    }
  }
}
```

---

## Key Sections

### component_name

**component_name** - This is the internal name for this component as used in the Framework. This name must also match the component folder name. From the current path for these files listed above, this means this manifest file would be found at /app/retrodeck/components/component_name/component_manifest.json

- **name** - A human-friendly name for this component, as shown in menu dialogs

- **description** - A human-friendly description for this component, as shown in menu dialogs

- **url_rdwiki** - A link to the RetroDECK wiki entry for this component.

- **url_webpage** - A link to the components webpage.

- **url_flathub** - A link to the components place Flathub (if there is one).

- **url_donation_purchase** - A link to where to donate to or buy the component.

- **url_source** - A link to the source code of the component.

- **url_<other>** - Other relevant links.

- **system** - A single value or array of values of machine-friendly names of the systems emulated by this component

---

### component_type

Components are broadly categorized:  

- **Client**
- **Multi-Emulator**
- **Emulator**
- **Engine**
- **Port**
- **System**

**Example:**

"component_type": "System"

**Read here for more details:** 

- [Development Glossary](../../general/development-glossary.md) 
- [What is RetroDECK](../../../wiki_about/what-is-retrodeck.md)

---

### configurator_menus

**configurator_menus** - This is an optional section for components that should have component-specific settings in a given Configurator menu. This does not affect the visibility of presets, but is more used for one-off actions specific to that component (such as installing RPCS3 firmware, Showing/Hiding Portmaster or any of the internal RetroDECK tools like BIOS checking or folder moving.

- **<menu_name>** - This section is the name of the menu "class" the menu entry applies to. This will be used for dynamically generating menu entries, so if a menu is looking for "settings" menu entries, in this example only the "portmaster" menu entry would be used.

- **<entry_name>** - This is an arbitrary name to identify the menu entry for search. It is not currently used internally for anything except identification. As with all JSON keys, it must be uniquely named in its parent object.

- **name** - A human-friendly name of the menu entry, as shown in menu dialogs

- **description** - A human-friendly description of the menu entry, as shown in menu dialogs

- **command** - The command that will be run when the menu entry is selected. This can be a single line command if it is a simple action, or an internally defined function (with optional arguments) for more complex actions. Any component-specific function referenced here should be defined in that components component_functions.sh file.

---

### compatible_presets

- **compatible_presets** - A list of objects with the key being the preset name (as found in retrodeck.cfg) and the possible values for this preset for this component. In the array of values, the first value MUST always be the "disabled" state. The state name is arbitrary, but the first value is what is referenced by the Framework as the "disabled" state and all others are some form of "enabled". These entries are also what are referenced when adding new components to the retrodeck.cfg file on update. As new components are added, this section will be checked and any component that supports a given preset but an entry does not yet exist for it in retrodeck.cfg will be added at update time, so the supported presets lists no longer need to be shipped statically in retrodeck.cfg, all the components that exist and support any preset will have their entries maintained in retrodeck.cfg automatically.

- **preset_actions** - This is a section containing the actions that should be taken to enable / disable any given preset this component supports (these are replacing the information found the individual preset reference lists in pre-0.10.0b). If the component does not support any presets, this section can be omitted completely. 

- **config_file_format** - The format used by functions like set_setting_value for enacting this preset

- **preset_name** - The name of the preset, matching the entries in "compatible_presets" that the containing actions should be used for. Alternatively, this can be the name of a component core, if applicable. The rest of the action object will then go inside that core object. If this is a core preset action, the "config_file_format" will also go inside it.

- **setting_name** - The name of the setting being changed. This would be the actual line name used in the component config file being edited for this preset.

The objects in this section will have the following structure, taken from the legacy preset reference lists:


```
action
new_setting_value
section
target_file
defaults_file
```

These entries can contain variable names (such as sourced config file paths) or be omitted entirely if not needed, such as if the target file does not use sections the "section" line can be left out, or just left empty.

---

### cores

**cores** - If the component has sub-components (such as RetroArch cores) which need their own information for use in menus etc., they will be stored here. Each object in the "cores" section will have the following structure:

- **component_core_name** - A unique name that will show up for preset settings in retrodeck.cfg etc.

- **name** - A human friendly name for this core, as shown in menus

- **description** - A human-friendly description of this core, as shown in menus

- **system** - A single value or array of values of machine-friendly names of the systems emulated by this core.

- **system_friendly_name** - A human-friendly name of the system(s) emulated by this core, as shown in menus.

---

### bios

**bios** - Defines BIOS or firmware files that a component may require. RetroDECK's BIOS Checker Tool uses this section to validate and locate required files.

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

---
