# component_manifest.json

A JSON file that defines metadata, capabilities, and configuration logic for a RetroDECK component. This includes system compatibility, supported presets, menu integration, and core-specific settings.


### Legacy Notes

It replaces static preset lists and centralizes component-specific logic.

## Description

The `component_manifest.json` file provides both informational and functional data used by the RetroDECK Framework, Configurator menus, and API calls. 

Each manifest includes:

- Component metadata (name, description, supported systems)
- Configurator menu entries
- Compatible presets and their possible states
- Actions required to apply presets
- Core-specific metadata (if applicable)

---


## Example Structure: component_manifest.json


```

{
  "component_name": {
    "name": "Component Name",
      "description": "A human-friendly description of the component to be shown in menus",
      "url": "<link to the pcomponents RetroDECK wiki entry>",
      "system": "a machine-friendly value or array of values of what systems are being played/emulated/functions",
      "component_type": "Classifies the component according to RetroDECKs types",
      "configurator_menus": {
        "settings": {
          "portmaster": {
            "name": "Portmaster: Show / Hide",
            "description": "Enable / Disable: PortMaster in ES-DE.",
            "command": "configurator_portmaster_toggle_dialog"
          }
        },
        "tools": {
          "test_function": {
            "name": "RetroDECK Test Function",
            "description": "A test function",
            "command": "ppsspp_test arg"
          },
          "test_function2": {
            "name": "RetroDECK Test Function2",
            "description": "A test function 2",
            "command": "retrodeck_test2"
          }
        }
      },
      "compatible_presets": {
        "preset_1": [ "false", "true" ],
        "preset_2": [ "false", "true", "true but better" ]
      },
      "preset_actions": {
        "config_file_format": "file format used in commands like set_setting_value",
        "preset_1_name": {
          "setting_name1": {
            "action": "change",
            "new_setting_value": "some new value",
            "section": "",
            "target_file": "$component_config_file1",
            "defaults_file": "$component_defaults_file1"
          }
        },
      "component_core_name": {
        "config_file_format": "file format used in commands like set_setting_value",
        "preset_name": {
          "setting_name2": {
            "action": "change",
            "new_setting_value": "some new value",
            "section": "some_section",
            "target_file": "$component_config_file1",
            "defaults_file": "$component_defaults_file1"
          }
        }
      }
    },
    "cores": {
      "component_core_name": {
        "name": "Menu-friendly core name",
        "description": "Core description",
        "system": [ "emulated system1", "emulated_system2" ]
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

- **url** - A link to the RetroDECK wiki entry for this component, or elsewhere if a wiki entry doesn't exist

- **system** - A single value or array of values of machine-friendly names of the systems emulated by this component

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


### configurator_menus

**configurator_menus** - This is an optional section for components that should have component-specific settings in a given Configurator menu. This does not affect the visibility of presets, but is more used for one-off actions specific to that component (such as installing RPCS3 firmware, Showing/Hiding Portmaster or any of the internal RetroDECK tools like BIOS checking or folder moving.

- **<menu_name>** - This section is the name of the menu "class" the menu entry applies to. This will be used for dynamically generating menu entries, so if a menu is looking for "settings" menu entries, in this example only the "portmaster" menu entry would be used.

- **<entry_name>** - This is an arbitrary name to identify the menu entry for search. It is not currently used internally for anything except identification. As with all JSON keys, it must be uniquely named in its parent object.

- **name** - A human-friendly name of the menu entry, as shown in menu dialogs

- **description** - A human-friendly description of the menu entry, as shown in menu dialogs

- **command** - The command that will be run when the menu entry is selected. This can be a single line command if it is a simple action, or an internally defined function (with optional arguments) for more complex actions. Any component-specific function referenced here should be defined in that components component_functions.sh file.

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

### cores

**cores** - If the component has sub-components (such as RetroArch cores) which need their own information for use in menus etc., they will be stored here. Each object in the "cores" section will have the following structure:

- **component_core_name** - A unique name that will show up for preset settings in retrodeck.cfg etc.

- **name** - A human friendly name for this core, as shown in menus

- **description** - A human-friendly description of this core, as shown in menus

- **system** - A single value or array of values of machine-friendly names of the systems emulated by this core.

- **system_friendly_name** - A human-friendly name of the system(s) emulated by this core, as shown in menus.

---

## Example: component_manifest.json


**Check More Examples:**

[RetroDECK Components: Cooker](https://github.com/RetroDECK/components/tree/cooker)

### PPSSPP


```
{
  "ppsspp": {
    "name": "PPSSPP",
    "description": "PPSSPP is a PlayStation Portable (psp) emulator.",
    "url_rdwiki": "https://retrodeck.readthedocs.io/en/latest/wiki_emulator_guides/ppsspp/ppsspp-guide/",
    "url_webpage": "https://www.ppsspp.org/",
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
          "enabled_states": [ "true" ],
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
          "enabled_states": [ "true" ],
          "setting_name": "AchievementsEnable",
          "action": "change",
          "new_setting_value": "True",
          "section": "Achievements",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        },
        {
          "enabled_states": [ "true" ],
          "setting_name": "AchievementsUserName",
          "action": "change",
          "new_setting_value": "$cheevos_username",
          "section": "Achievements",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        },
        {
          "enabled_states": [ "true" ],
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
          "enabled_states": [ "true" ],
          "setting_name": "AchievementsChallengeMode",
          "action": "change",
          "new_setting_value": "True",
          "section": "Achievements",
          "target_file": "$ppsspp_config",
          "defaults_file": "$ppsspp_rd_config_dir/ppsspp.ini"
        }
      ]
    }
  }
}

```

---

