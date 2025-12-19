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
  set_setting_value "$ppssppcontrolsconf" "L" "1-45,10-193" "ppsspp" "ControlMapping"
  set_setting_value "$ppssppcontrolsconf" "R" "1-51,10-192" "ppsspp" "ControlMapping"
fi

if [[ $(check_version_is_older_than "$version_being_updated" "0.9.1b") == "true" ]]; then
  log i "Preparing the cheats for PPSSPP-SA..."
  create_dir -d "$cheats_path/PPSSPP"
  dir_prep "$cheats_path/PPSSPP" "$ppsspp_cheats_path"
  tar -xzf "/app/retrodeck/cheats/ppsspp.tar.gz" -C "$cheats_path/PPSSPP" --overwrite && log i "Cheats for PPSSPP installed"

  set_setting_value "$rd_conf" "ppsspp" "$(get_setting_value "$rd_defaults" "ppsspp" "retrodeck" "cheevos")" "retrodeck" "cheevos"
  set_setting_value "$rd_conf" "ppsspp" "$(get_setting_value "$rd_defaults" "ppsspp" "retrodeck" "cheevos_hardcore")" "retrodeck" "cheevos_hardcore"
fi

```

**Check More Examples:**

[RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)

---
