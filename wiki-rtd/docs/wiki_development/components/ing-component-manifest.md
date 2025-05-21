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
      "system": "a machine-friendly value or array of values of what systems are emulated",
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

## Example: component_manifest.json for the RetroArch Component

```

{
  "retroarch": {
    "name": "RetroArch",
    "description": "Libretro Multi-emulator Frontend",
    "url": "https://retrodeck.readthedocs.io/en/latest/wiki_emulator_guides/retroarch/retroarch-guide/",
    "system": "retroarch",
    "system_friendly_name": "Multiple Retro Systems",
    "configurator_menus": {
        "settings": {
          "ra_setting_1": {
            "name": "Do a RetroArch thing",
            "description": "Enable / Disable: RetroArch stuff",
            "command": "configurator_rastuff_toggle_dialog"
          }
        },
        "tools": {
          "test_function": {
            "name": "RetroArch Test Function",
            "description": "A test function",
            "command": "ra_test extraarg"
          },
          "test_function2": {
            "name": "RetroArch Test Function2",
            "description": "A test function 2",
            "command": "retroarch_test2"
          }
        }
      },
    "compatible_presets": {
      "cheevos": [ "false", "true" ],
      "cheevos_hardcore": [ "false", "true" ],
      "snes9x-current_libretro": {
        "borders": [ "false", "true" ],
        "widescreen": [ "false", "true" ]
      },
      "gambatte_libretro": {
        "borders": [ "false", "true" ],
        "rewind": [ "false", "true" ]
      }
    },
    "preset_actions": {
      "config_file_format": "retroarch-all",
      "cheevos": {
        "cheevos_enable": {
          "action": "change",
          "new_setting_value": "True",
          "section": "",
          "target_file": "$ra_conf",
          "defaults_file": "$config/retroarch/retroarch.cfg"
        }
      },
      "snes9x-current_libretro": {
        "config_file_format": "retroarch",
        "borders": {
          "input_overlay": {
            "action": "change",
            "new_setting_value": "/var/config/retroarch/overlays/borders/pegasus/snes87.cfg",
            "section": "",
            "target_file": "/var/config/retroarch/config/Snes9x/snes.cfg",
            "defaults_file": "$config/retroarch/retroarch.cfg"
          }
        }
      }
    },
    "cores": {
      "citra_libretro": {
        "description": "Nintendo 3DS Libretro Core",
        "name": "Citra",
        "system": "n3ds"
      },
      "mame_libretro": {
        "description": "MAME: Multiple Arcade Machine Libretro Core",
        "name": "MAME",
        "system": "arcade"
      },
      "desmume_libretro": {
        "description": "DeSmuME Nintendo DS Libretro Core",
        "name": "desmume",
        "system": "nds"
      },
      "melonds_libretro": {
        "description": "MelonDS Nintendo DS Libretro Core",
        "name": "melonds",
        "system": "nds"
      },
      "swanstation_libretro": {
        "name": "SwanStation",
        "description": "Swanstation Libretro Core",
        "system": "psx"
      },
      "picodrive_libretro": {
        "name": "PicoDrive",
        "description": "SEGA MS/MD/CD/32X Libretro Core",
        "system": [
          "ms",
          "md",
          "cd",
          "32x"
        ]
      },
      "genesisplusgx_libretro": {
        "name": "Genesis Plus GX",
        "description": "SEGA MS/GG/MD/CD Libretro Core",
        "system": [
          "ms",
          "gg",
          "mc",
          "cd"
        ]
      },
      "genesisplusgxwide_libretro": {
        "name": "Genesis Plus GX Wide",
        "description": "SEGA MS/GG/MD/CD Libretro Core for Wide Screen",
        "system": [
          "ms",
          "gg",
          "mc",
          "cd"
        ]
      },
      "mupen64plus-next_libretro": {
        "name": "Mupen64Plus-Next",
        "description": "Nintendo 64 Libretro Core",
        "system": "n64"
      },
      "snes9x-current_libretro": {
        "name": "Snes9x - Current",
        "description": "Super Nintendo Libretro Core",
        "system": "snes",
        "system_friendly_name": "Nintendo SNES"
      },
      "gambatte_libretro": {
        "name": "Gambatte",
        "description": "Game Boy/Color Libretro Core",
        "system": [
          "gb",
          "gbc"
        ]
      },
      "mgba_libretro": {
        "name": "mGBA",
        "description": "Game Boy Advance Libretro Core",
        "system": "gba"
      }
    }
  }
}

```

---

## Example: component_manifest.json for the RetroDECK Component

Even an Component like RetroDECK will also have `component_manifest.json`.

Which contain any related information used in menus or API data gathering. As most internal components won't support things like presets, they will generally be shorter than actual emulator components.


```

{
  "retrodeck": {
    "name": "RetroDECK",
    "description": "RetroDECK Framework",
    "url": "https://retrodeck.net",
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
          "command": "retrodeck_test arg"
        },
        "test_function2": {
          "name": "RetroDECK Test Function2",
          "description": "A test function 2",
          "command": "retrodeck_test2"
        }
      }
    }
  }
}

```
