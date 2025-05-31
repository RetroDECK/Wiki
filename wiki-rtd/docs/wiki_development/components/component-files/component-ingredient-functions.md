# component_functions.sh

A Bash script that defines configuration file paths and component-specific functions. 

### Legacy Note 

This file replaces the legacy `global.sh` structure by decentralizing component logic and configuration. This modular approach simplifies the addition of new components and avoids bloating a single monolithic script.

## Description

The `component_functions.sh` file contains:

- Component-specific path variables.
- Functions unique to the component (e.g., firmware installation, advanced functions found in the Configurator menus)

Each component has its own `component_functions.sh` file. These files are automatically sourced during system boot, ensuring all paths and functions are globally available without requiring manual inclusion or centralized maintenance.

## Examples

**Check More Examples:**

[RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)

### PPSSPP


```
#!/bin/bash

ppssppconf="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/ppsspp.ini"
ppssppcontrolsconf="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/controls.ini"
ppssppcheevosconf="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/ppsspp_retroachievements.dat"
ppssppcheatsdb="$rd_components/ppsspp/cheat.db"
```
