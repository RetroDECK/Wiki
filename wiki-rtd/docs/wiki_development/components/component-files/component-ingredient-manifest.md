# component_manifest.json

The `component_manifest.json` is part of the component ingredient files. 

It defines the metadata, capabilities, configuration, compatibility and integration points for a RetroDECK component.

It is consumed by the RetroDECK Framework, Configurator and related tools to identify and manage components.

A manifest can define:

- Component metadata and supported systems
- Component capabilities
- Backup locations
- Configurator menu entries
- ES-DE integration
- Supported presets and their states
- Actions used to apply presets
- Core-specific metadata
- BIOS and firmware requirements
- Compression support

---

## File Location

Each component has its own manifest in its component directory inside the Flatpak enviroment:

```
/app/retrodeck/components/<component_name>/component_manifest.json
```

For example:

```
/app/retrodeck/components/dolphin/component_manifest.json
```

---

## General Structure

A component manifest can contain the following sections and more:

```
{
  "<component_name>": {
    "name": "...",
    "core_framework_compatibility": "...",
    "component_version": "...",
    "capabilities": [],
    "description": "...",

    "url_rdwiki": "...",
    "url_webpage": "...",
    "url_flathub": "...",
    "url_donation_purchase": "...",
    "url_source": "...",

    "component_type": "...",
    "system": "...",
    "system_friendly_name": "...",

    "backup_data": {},

    "configurator_menus": {},

    "es_de_config": {},

    "compatible_presets": {},

    "preset_actions": {},

    "cores": {},

    "bios": [],

    "compression": {}
  }
}
```

Not every section is required. Only sections relevant to the component should be included and can also be expanded with new sections.

---

### Example: Dolphin 

The following example demonstrates the main manifest structures using patterns from components such as Azahar and Dolphin.

```
{
  "dolphin": {
    "name": "Dolphin",
    "core_framework_compatibility": "1",
    "component_version": "1.0.0",
    "component_type": "Emulator",
    "capabilities": [
      "reset",
      "open"
    ],

    "description": "Nintendo GameCube and Wii emulator for playing GameCube and Wii games.",

    "url_rdwiki": "https://retrodeck.readthedocs.io/en/latest/wiki_emulator_guides/dolphin-primehack/dolphin-primehack-guide/",
    "url_webpage": "https://dolphin-emu.org",
    "url_donation_purchase": "",
    "url_source": "https://github.com/dolphin-emu/dolphin",

    "component_type": "Emulator",

    "system": [
      "gc",
      "wii"
    ],

    "system_friendly_name": [
      "GameCube",
      "Wii"
    ],

    "backup_data": {
      "core": [
        {
          "path": "$XDG_CONFIG_HOME/dolphin-emu"
        },
        {
          "path": "$XDG_DATA_HOME/dolphin-emu"
        }
      ]
    },

    "es_de_config": {
      "es_find_rules": {
        "emulators": [
          {
            "name": "DOLPHIN",
            "description": "Nintendo GameCube and Wii emulator Dolphin",
            "rules": [
              {
                "type": "staticpath",
                "entries": [
                  "%COMPONENT_PATH%/component_launcher.sh"
                ]
              }
            ]
          }
        ]
      },

      "es_systems": [
        {
          "name": "gc",
          "fullname": "Nintendo GameCube",
          "path": "%ROMPATH%/gc",
          "extension": ".7z .ciso .dff .dol .elf .gcm .gcz .iso .json .m3u .rvz .tgc .wad .wbfs .wia .zip",

          "commands": [
            {
              "label": "Dolphin (Standalone)",
              "command": "env QT_QPA_PLATFORM=xcb %EMULATOR_DOLPHIN% -b -e %ROM%",
              "priority": 10
            }
          ],

          "platform": "gc",
          "theme": "gc"
        }
      ]
    },

    "compatible_presets": {
      "ask_to_exit": [
        "false",
        "true"
      ],
      "cheevos": [
        "false",
        "true"
      ]
    },

    "preset_actions": {
      "config_file_format": "dolphin",

      "ask_to_exit": [
        {
          "enabled_states": [
            "true"
          ],
          "setting_name": "ConfirmStop",
          "action": "change",
          "new_setting_value": "True",
          "section": "Interface",
          "target_file": "$dolphin_config",
          "defaults_file": "$dolphin_rd_config_dir/Dolphin.ini"
        }
      ],

      "universal_dyn_input": [
        {
          "enabled_states": [
            "true"
          ],
          "action": "install",
          "source": "/app/retrodeck/components/shared-data/DynamicInputTextures/",
          "destination": "$XDG_DATA_HOME/dolphin-emu/Load/DynamicInputTextures/",
          "cleanup_type": "purge"
        }
      ]
    },

    "bios": [
      {
        "filename": "gc-dvd-20010608.bin",
        "md5": "561532ad496f644897952d2cef5bb431",
        "system": "gc",
        "paths": [
          "$saves_path/gc/dolphin/EU",
          "$saves_path/gc/dolphin/US",
          "$saves_path/gc/dolphin/JP"
        ],
        "description": "GameCube DVD BIOS",
        "required": "Optional"
      }
    ],

    "compression": {
      "rvz": {
        "targets": [
          "gc",
          "wii"
        ]
      }
    }
  }
}
```

---

## Component Identifier

### `<component_name>`

The top-level JSON key is the component's internal identifier.

```
{
  "dolphin": {
```

The identifier:

- Must match the component directory name.
- Is used internally by the RetroDECK Framework.
- Identifies the component throughout the `component_manifest.json`, `component_launcher.sh`, and `component_functions.sh`.


For example:

```
/app/retrodeck/components/dolphin/component_manifest.json
```

must use:

```
"dolphin"
```

as its top-level key.

---

## Component Metadata

These fields identify and describe the component.

| Field | Description |
| --- | --- |
| `name` | Human-readable component name shown in menus and dialogs. |
| `core_framework_compatibility` | Framework compatibility level required by the manifest. |
| `component_version` | Version of the RetroDECK component definition. |
| `capabilities` | Operations supported by the component, such as `reset` or `open`. |
| `description` | Human-readable description of the component. |
| `component_type` | RetroDECKs component category, such as `Emulator`, `Engine`, `Port`, `Game`. |
| `system` | Machine-readable system identifier, or an array of identifiers. |
| `system_friendly_name` | Human-readable system name, or an array matching `system`. |
| `url_rdwiki` | RetroDECK Wiki page for the component. |
| `url_webpage` | Component website. |
| `url_flathub` | Flathub page, if applicable. |
| `url_donation_purchase` | Donation or purchase page, if applicable. |
| `url_source` | Component source-code repository. |
| `url_<other>` | Additional relevant URLs. |


---

## Multiple Systems

A component supporting multiple systems can define `system` and `system_friendly_name` as arrays.

Example:

```
"system": [
  "gc",
  "wii"
],

"system_friendly_name": [
  "GameCube",
  "Wii"
]
```

The entries correspond by position.

---

## `backup_data`

Defines component data that should be included in RetroDECK backup and restore operations.

Example:

```
"backup_data": {
  "core": [
    {
      "path": "$XDG_CONFIG_HOME/dolphin-emu"
    },
    {
      "path": "$XDG_DATA_HOME/dolphin-emu"
    }
  ]
}
```

---

## `configurator_menus`

Defines optional component-specific entries for RetroDECK Configurator menus.

This section is intended for component-specific actions rather than general preset configuration.

Typical uses include:

- Running maintenance actions
- Launching component-specific tools
- Performing one-off configuration actions

| Field | Description |
| --- | --- |
| `<menu_name>` | Menu class to which the entry belongs. |
| `<entry_name>` | Unique identifier for the entry. |
| `name` | Human-readable menu entry name. |
| `description` | Human-readable description. |
| `command` | Command or internal function executed when selected. |

Component-specific functions referenced by `command` should be defined in the component's `component_functions.sh`.

```
"configurator_menus": {
  "<menu_name>": {
    "<entry_name>": {
      "name": "...",
      "description": "...",
      "command": "..."
    }
  }
}
```

---

---

## Cores

Defines metadata for RetroArch cores that require their own configuration or menu information.

| Field | Description |
| --- | --- |
| `<component_core_name>` | Unique internal identifier for the core. |
| `name` | Human-readable core name. |
| `description` | Human-readable core description. |
| `system` | Machine-readable system identifier, or an array of identifiers. |
| `system_friendly_name` | Human-readable system name, or an array of names. |

```
"cores": {
  "<component_core_name>": {
    "name": "...",
    "description": "...",
    "system": "...",
    "system_friendly_name": "..."
  }
}
```

---

## BIOS

Defines BIOS and firmware files associated with the component.

RetroDECK's BIOS Checker uses this section to locate and validate specified files.

A component can define multiple BIOS entries

| Field | Description |
| --- | --- |
| `filename` | Exact filename expected by RetroDECK. |
| `md5` | MD5 checksum used to validate the file. |
| `system` | System identifier associated with the BIOS or firmware. |
| `paths` | Location or locations where the BIOS may be found. |
| `description` | Description of the BIOS or firmware file. |
| `required` | Indicates whether the file is required, optional, or conditionally required. |

**Example: Dolphin**

Dolphin's BIOS needs to be inside the saves folder for the boot logo.

```
"bios": [
    {
      "filename": "gc-pal-10.bin",
      "md5": "0cdda509e2da83c85bfe423dd87346cc",
      "system": "gc",
      "paths": "$saves_path/gc/dolphin/EU",
      "description": "GameCube EU BIOS (for boot logo)",
      "required": "Optional"
    }
]
```

**Example: Dreamcast**


```
"bios": [
    {
      "filename": "hod2bios.zip",
      "md5": [
        "629bb0552463ba116ccf23d9a468a9f0",
        "f4011d3116500354edf7302a90402711"
      ],
      "system": "dreamcast",
      "description": "House of the Dead 2 Naomi BIOS",
      "paths": "$bios_path/dc",
      "required": "Required, for that specific game"
    }
]
```

---

### BIOS Paths

The `paths` field can contain either a single path or an array of paths.

Single path:

```
"paths": "$saves_path/gc/dolphin/EU"
```

Multiple paths:

```
"paths": [
  "$saves_path/gc/dolphin/EU",
  "$saves_path/gc/dolphin/US",
  "$saves_path/gc/dolphin/JP"
]
```

If `paths` is not defined, the default location is the root of the `retrodeck/bios` directory.


---

### Requried

Common values include:

| Value | Meaning |
| --- | --- |
| `Required` | The file is required for the relevant games or functionality. |
| `Required, for some <Country> games` | Required for games from the specified region. |
| `Required, at least one` | At least one BIOS from the relevant group must be present. |
| `Required, for that specific game` | Required for that game. |
| `Optional` | Not required for normal operation. |

---

## Compression

Defines compression formats supported by the component and is used by RetroDECK's compression tool.

This section is useful when RetroDECK provides component-specific handling for compressed game formats.

| Field | Description |
| --- | --- |
| `<format>` | Compression format handled by the component. |
| `targets` | Systems for which the compression format is supported. |

Example:

```
"compression": {
  "rvz": {
    "targets": [
      "gc",
      "wii"
    ]
  }
}
```

Indicates that RVZ compression is supported for GameCube and Wii.


---

## ES-DE

ES-DE treats every component or system defined in `es_de_config` under the group name **Emulator**, regardless of the component's actual type or purpose.

### `es_de_config`

Defines the component's integration with ES-DE. 

It contains:

- `es_find_rules` - Defines how ES-DE locates the component.
- `es_systems` - Defines the systems, ROM paths, supported extensions, and launch commands provided by the component.

### `es_find_rules`

Defines how ES-DE identifies and locates the component executable.

| Key | Description |
| --- | --- |
| `emulators` | List of emulator definitions used by ES-DE . |
| `name` | Name used by ES-DE to identify the emulator defined in uppercase. |
| `description` | Human-readable description of the emulator. |
| `rules` | Rules used to locate the emulator. |
| `type` | Type of rule used to locate the emulator, such as `staticpath`. |
| `entries` | Paths or entries evaluated by the rule. |

### `es_systems`

Defines the ES-DE systems supported by the component.

| Key | Description |
| --- | --- |
| `name` | Machine-readable ES-DE system identifier. |
| `fullname` | Human-readable name of the system. |
| `path` | ROM directory associated with the system. Corresponds to `retrodeck/roms/<roms_system_folder>`. |
| `extension` | Space-separated list of supported file extensions.<br>Only lowercase extensions need to be defined.<br>RetroDECK automatically provides both lowercase and uppercase variants for ES-DE.<br> Unlike standard ES-DE configuration, both cases do not need to be specified. |
| `commands` | List of launch commands available for the system. |
| `label` | Human-readable name of the launch command shown by ES-DE. |
| `command` | Command used to launch the ROM via the component's `component_launcher.sh`. |
| `priority` | Determines the default launch command when multiple commands are available for the same system, either within a component or across RetroDECK.<br>Lower values have higher priority. The command with the highest priority is used as the default.<br>For example, if both a Dolphin Standalone and a RetroArch core command are available for GameCube, the command with the highest priority is selected as the standard/default option for the users. |
| `platform` | ES-DE platform identifier. |
| `theme` | ES-DE theme identifier. |

### Example: Dolphin

```
"es_de_config": {
  "es_find_rules": {
    "emulators": [
      {
        "name": "DOLPHIN",
        "description": "Nintendo GameCube and Wii emulator Dolphin",
        "rules": [
          {
            "type": "staticpath",
            "entries": [
              "%COMPONENT_PATH%/component_launcher.sh"
            ]
          }
        ]
      }
    ]
  },

  "es_systems": [
    {
      "name": "gc",
      "fullname": "Nintendo GameCube",
      "path": "%ROMPATH%/gc",
      "extension": ".7z .ciso .dff .dol .elf .gcm .gcz .iso .json .m3u .rvz .tgc .wad .wbfs .wia .zip",
      "commands": [
        {
          "label": "Dolphin (Standalone)",
          "command": "env QT_QPA_PLATFORM=xcb %EMULATOR_DOLPHIN% -b -e %ROM%",
          "priority": 10
        }
      ],
      "platform": "gc",
      "theme": "gc"
    },
    {
      "name": "triforce",
      "fullname": "Namco-Sega-Nintendo Triforce",
      "path": "%ROMPATH%/triforce",
      "extension": ".7z .ciso .dff .dol .elf .gcm .gcz .iso .json .m3u .rvz .tgc .wad .wbfs .wia .zip",
      "commands": [
        {
          "label": "Dolphin (Standalone)",
          "command": "env QT_QPA_PLATFORM=xcb %EMULATOR_DOLPHIN% -b -e %ROM%",
          "priority": 10
        }
      ],
      "platform": "arcade",
      "theme": "triforce"
    },
    {
      "name": "wii",
      "fullname": "Nintendo Wii",
      "path": "%ROMPATH%/wii",
      "extension": ".7z .ciso .dff .dol .elf .gcm .gcz .iso .json .m3u .rvz .tgc .wad .wbfs .wia .zip",
      "commands": [
        {
          "label": "Dolphin (Standalone)",
          "command": "env QT_QPA_PLATFORM=xcb %EMULATOR_DOLPHIN% -b -e %ROM%",
          "priority": 10
        }
      ],
      "platform": "wii",
      "theme": "wii"
    }
  ]
}
```

---

## Presets

### `compatible_presets`

Defines the presets supported by the component and their valid states.

Each key is a preset name corresponding to a preset defined and handled by the RetroDECK Framework in:

- `/app/retrodeck/components/framework/component_manifest.json`
- `/app/retrodeck/components/framework/component_functions.sh`


Example:

```
"compatible_presets": {
  "ask_to_exit": [
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
  ],
  "universal_dyn_input": [
    "false",
    "true"
  ]
}
```

### `config_file_format`

Defines the configuration-file format used when applying settings through functions such as `set_setting_value` in the component's own `component_manifest.json`.

Example:

```
"config_file_format": "dolphin"
```


---

### Preset States

The **first state must always represent the disabled state**.

Example:

```
"cheevos": [
  "false",
  "true"
]
```

The Framework interprets this as:

- `false` - disabled
- `true` - enabled

The state names themselves are component-defined. The first entry is what identifies the disabled state.


---

### `preset_actions`

Defines the actions required to apply supported presets using the configuration and logic defined in the component's own `component_manifest.json`.


```
"preset_actions": {
  "config_file_format": "dolphin",

  "<preset_name>": [
    {
      "enabled_states": [
        "true"
      ],
      "setting_name": "...",
      "action": "change",
      "new_setting_value": "...",
      "section": "...",
      "target_file": "...",
      "defaults_file": "..."
    }
  ]
}
```

| Field | Description |
| --- | --- |
| `enabled_states` | Preset states for which the action is applied. |
| `setting_name` | Name of the configuration setting being modified. |
| `action` | Operation to perform. |
| `new_setting_value` | Value written by the action. |
| `section` | Configuration-file section containing the setting, if applicable. |
| `target_file` | Configuration or data file being modified. |
| `defaults_file` | Default configuration file used when applicable. |
| `source` | Source path for actions such as `install`. |
| `destination` | Destination path for actions such as `install`. |
| `cleanup_type` | Cleanup behavior associated with an installation action. |

Fields may contain RetroDECK variables.

Fields that are not required by an action can be omitted.

---

### `action: change`

Changes a setting in a configuration file.

Example:

```
{
  "enabled_states": [
    "true"
  ],
  "setting_name": "ConfirmStop",
  "action": "change",
  "new_setting_value": "True",
  "section": "Interface",
  "target_file": "$dolphin_config",
  "defaults_file": "$dolphin_rd_config_dir/Dolphin.ini"
}
```

The action:

1. Selects the specified configuration file.
2. Locates the specified setting.
3. Changes its value.
4. Uses the defaults file where required by the configuration handling functions.

---

### `action: raw_write`

Writes a value directly to a target file.

Example:

```
{
  "enabled_states": [
    "true"
  ],
  "action": "raw_write",
  "new_setting_value": "$cheevos_token",
  "target_file": "$ppsspp_retroachievements_dat"
}
```

`setting_name`, `section`, and `defaults_file` are not required when the action operates directly on the target file.

---

### `action: install`

Installs or copies files from a source location to a destination.

| Field | Description |
| --- | --- |
| `source` | Source directory or file to install. |
| `destination` | Destination directory or file. |
| `cleanup_type` | Defines how installed data is cleaned up when the preset is disabled or removed. |


Example:

```
{
  "enabled_states": [
    "true"
  ],
  "action": "install",
  "source": "/app/retrodeck/components/shared-data/DynamicInputTextures/",
  "destination": "$XDG_DATA_HOME/dolphin-emu/Load/DynamicInputTextures/",
  "cleanup_type": "purge"
}
```

---