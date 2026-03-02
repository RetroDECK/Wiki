# component_functions.sh

A Bash script that defines configuration file paths and component-specific functions. 

### Legacy Note 

This file replaces the legacy `global.sh` structure by decentralizing component logic and configuration. This modular approach simplifies the addition of new components and avoids bloating a single monolithic script.

## Description

The `component_functions.sh` file contains:

- Component-specific path variables.
- Functions unique to the component (e.g., firmware installation, advanced functions found in the Configurator menus)

Each component has its own `component_functions.sh` file. These files are automatically sourced during system boot, ensuring all paths and functions are globally available without requiring manual inclusion or centralized maintenance.

## Example: PPSSPP

```
#!/bin/bash

ppsspp_config="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/ppsspp.ini"
ppsspp_config_controls="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/controls.ini"
ppsspp_retroachievements_dat="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/ppsspp_retroachievements.dat"
ppsspp_cheats_db="$rd_components/ppsspp/cheats/cheat.db"
ppsspp_rd_config_dir="$rd_components/ppsspp/rd_config"
ppsspp_rd_extras_dir="$rd_components/ppsspp/rd_extras"
ppsspp_textures_path="$XDG_CONFIG_HOME/ppsspp/PSP/TEXTURES"
ppsspp_shaders_path="$XDG_CONFIG_HOME/ppsspp/PSP/shaders"
ppsspp_cheats_path="$XDG_CONFIG_HOME/ppsspp/PSP/Cheats"
ppsspp_mods_path="$XDG_CONFIG_HOME/ppsspp/PSP/PLUGINS"
ppsspp_logs_path="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/DUMP"
```

**Check More Examples:**

[RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)

---
