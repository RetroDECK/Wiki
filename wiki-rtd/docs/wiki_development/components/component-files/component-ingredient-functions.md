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

# component_update.sh

A Bash script that contains component-specific preparation logic like resets and folder moves during RetroDECK updates.

It's like an upgrade only light version of: `component_prepare.sh`

## Description

The `component_update.sh` file is responsible for handling update tasks unique to a specific component, such as:

- Resetting configuration files
- Preparing directories
- Moving or backing up data
- Post-move adjustments

The when the `update_component` function is called the `RetroDECK Framework` processes every installed `component` and it will decide if it needs to trigger or not.

## Example: PPSSPP

```
#!/bin/bash

#########################################################################
# These actions happen conditionally based on the version being upgraded
#########################################################################

if [[ $(check_version_is_older_than "$version_being_updated" "0.7.0b") == "true" ]]; then
  # In version 0.7.0b, the following changes were made that required config file updates/reset or other changes to the filesystem:
  # - Move PPSSPP saves/states to appropriate folders

  dir_prep "$saves_path/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/SAVEDATA"
  dir_prep "$states_path/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/PPSSPP_STATE"

  set_setting_value "$ppssppconf" "AutoLoadSaveState" "0" "ppsspp" "General"
fi

if [[ $(check_version_is_older_than "$version_being_updated" "0.7.1b") == "true" ]]; then
  # In version 0.7.1b, the following changes were made that required config file updates/reset or other changes to the filesystem:
  # - Force update PPSSPP standalone keybinds for L/R.
  set_setting_value "$ppsspp_config_controls" "L" "1-45,10-193" "ppsspp" "ControlMapping"
  set_setting_value "$ppsspp_config_controls" "R" "1-51,10-192" "ppsspp" "ControlMapping"
fi

if [[ $(check_version_is_older_than "$version_being_updated" "0.9.1b") == "true" ]]; then
  log i "Preparing the cheats for PPSSPP-SA..."
  create_dir -d "$cheats_path/PPSSPP"
  dir_prep "$cheats_path/PPSSPP" "$ppsspp_cheats_path"
  tar -xzf "/app/retrodeck/cheats/ppsspp.tar.gz" -C "$cheats_path/PPSSPP" --overwrite && log i "Cheats for PPSSPP installed"

  set_setting_value "$rd_conf" "ppsspp" "$(get_setting_value "$rd_defaults" "ppsspp" "retrodeck" "cheevos")" "retrodeck" "cheevos"
  set_setting_value "$rd_conf" "ppsspp" "$(get_setting_value "$rd_defaults" "ppsspp" "retrodeck" "cheevos_hardcore")" "retrodeck" "cheevos_hardcore"
fi

if [[ $(check_version_is_older_than "$version_being_updated" "0.10.0b") == "true" ]]; then

  log i "0.10.0b Upgrade - Postmove: PPSSPP"

  prepare_component "postmove" "ppsspp"
  
  set_setting_value "$ppsspp_config" "GraphicsBackend" "0 (OPENGL)" "ppsspp" "Graphics"
  set_setting_value "$ppsspp_config" "InternalResolution" "3" "ppsspp" "Graphics"
  unzip -q -o -j "$ppsspp_rd_extras_dir/CWCheat-Database-Plus--master.zip" "*/cheat.db" -d "$cheats_path/PPSSPP"
fi

if [[ $(check_version_is_older_than "$version_being_updated" "0.10.3b") == "true" ]]; then

  log i "0.10.3b Upgrade - PPSSPP: Relink Shaders"

  dir_prep "$shaders_path/PPSSPP" "$ppsspp_shaders_path"

fi

```

**Check More Examples:**

[RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)

---

# component_prepare.sh

A Bash script that contains component-specific preparation logic like resets and folder moves.



### Legacy Note 

Previously centralized in the legacy `prepare_component.sh` core library.

## Description

The `component_prepare.sh` file is responsible for handling setup tasks unique to a specific component, such as:

- Resetting configuration files
- Preparing directories
- Moving or backing up data
- Post-move adjustments

The when the `prepare_component` function is called the `RetroDECK Framework` processes every installed `component` and it will decide if it needs to trigger or not.

## Example: PPSSPP

```
#!/bin/bash

# Setting component name and path based on the directory name
component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
component_config="/app/retrodeck/components/$component_name/rd_config"
component_extras="/app/retrodeck/components/$component_name/rd_extras"

if [[ "$action" == "reset" ]]; then # Run reset-only commands
  log i "------------------------"
  log i "Resetting $component_name"
  log i "------------------------"

  create_dir -d "$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/"
  cp -fv "$component_config/"* "$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/"
  set_setting_value "$ppsspp_config" "CurrentDirectory" "$roms_path/psp" "ppsspp" "General"
  dir_prep "$saves_path/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/SAVEDATA"
  dir_prep "$states_path/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/PPSSPP_STATE"
  dir_prep "$texture_packs_path/PPSSPP/TEXTURES" "$ppsspp_textures_path"
  dir_prep "$shaders_path/PPSSPP" "$ppsspp_shaders_path"
  dir_prep "$mods_path/PPSSPP/PLUGINS" "$ppsspp_mods_path"
  dir_prep "$logs_path/PPSSPP" "$ppsspp_logs_path"

  log i "Preparing PPSSPP cheats"
  create_dir -d "$cheats_path/PPSSPP"
  dir_prep "$cheats_path/PPSSPP" "$ppsspp_cheats_path"
  if [[ -d "$cheats_path/PPSSPP" && "$(ls -A "$cheats_path"/PPSSPP)" ]]; then
    backup_file="$backups_path/cheats/PPSSPP-$(date +%y%m%d).tar.gz"
    create_dir "$(dirname "$backup_file")"
    tar -czf "$backup_file" -C "$cheats_path" PPSSPP
    log i "PPSSPP cheats backed up to $backup_file"
  fi

  unzip -q -o -j "$component_extras/CWCheat-Database-Plus--master.zip" "*/cheat.db" -d "$cheats_path/PPSSPP"

  log i "Preparing PPSSPP BIOS"
  create_dir -d "$bios_path/PPSSPP"
  tar -xzf "$component_extras/ppsspp_foss_bios.tar.gz" -C "$bios_path/PPSSPP" --strip-components=1 assets/ && log i "PPSSPP BIOS files extracted to $bios_path/PPSSPP" || log e "Failed to extract PPSSPP BIOS files."
fi

if [[ "$action" == "postmove" ]]; then # Run only post-move commands
  log i "------------------------"
  log i "Post-moving $component_name"
  log i "------------------------"

  set_setting_value "$ppsspp_config" "CurrentDirectory" "$roms_path/psp" "ppsspp" "General"
  dir_prep "$saves_path/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/SAVEDATA"
  dir_prep "$states_path/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/PPSSPP_STATE"
  dir_prep "$texture_packs_path/PPSSPP/TEXTURES" "$ppsspp_textures_path"
  dir_prep "$shaders_path/PPSSPP" "$ppsspp_shaders_path"
  dir_prep "$cheats_path/PPSSPP" "$ppsspp_cheats_path"
  dir_prep "$mods_path/PPSSPP/PLUGINS" "$ppsspp_mods_path"
  dir_prep "$logs_path/PPSSPP" "$ppsspp_logs_path"
fi
```

**Check More Examples:**

[RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)

---

