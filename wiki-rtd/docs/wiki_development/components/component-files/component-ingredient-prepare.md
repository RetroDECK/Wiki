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

## Example: component_prepare.sh for the PPSSPP Component

```

#!/bin/bash
if [[ "$component" =~ ^(ppsspp|all)$ ]]; then
  component_found="true"
  if [[ "$action" == "reset" ]]; then # Run reset-only commands
    log i "------------------------"
    log i "Preparing PPSSPPSDL"
    log i "------------------------"
    if [[ $multi_user_mode == "true" ]]; then # Multi-user actions
      create_dir -d "$multi_user_data_folder/$SteamAppUser/config/ppsspp/PSP/SYSTEM/"
      cp -fv "$config/ppssppsdl/"* "$multi_user_data_folder/$SteamAppUser/config/ppsspp/PSP/SYSTEM/"
      set_setting_value "$multi_user_data_folder/$SteamAppUser/config/ppsspp/PSP/SYSTEM/ppsspp.ini" "CurrentDirectory" "$roms_folder/psp" "ppsspp" "General"
      dir_prep "$multi_user_data_folder/$SteamAppUser/config/ppsspp" "$XDG_CONFIG_HOME/ppsspp"
    else # Single-user actions
      create_dir -d "$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/"
      cp -fv "$config/ppssppsdl/"* "$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/"
      set_setting_value "$ppssppconf" "CurrentDirectory" "$roms_folder/psp" "ppsspp" "General"
    fi
    # Shared actions
    dir_prep "$saves_folder/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/SAVEDATA"
    dir_prep "$states_folder/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/PPSSPP_STATE"
    dir_prep "$texture_packs_folder/PPSSPP" "$XDG_CONFIG_HOME/ppsspp/PSP/TEXTURES"
    create_dir -d "$cheats_folder/PPSSPP"
    dir_prep "$cheats_folder/PPSSPP" "$XDG_CONFIG_HOME/ppsspp/PSP/Cheats"
    if [[ -d "$cheats_folder/PPSSPP" && "$(ls -A "$cheats_folder"/PPSSPP)" ]]; then
      backup_file="$backups_folder/cheats/PPSSPP-$(date +%y%m%d).tar.gz"
      create_dir "$(dirname "$backup_file")"
      tar -czf "$backup_file" -C "$cheats_folder" PPSSPP
      log i "PPSSPP cheats backed up to $backup_file"
    fi
    tar -xzf "/app/retrodeck/cheats/ppsspp.tar.gz" -C "$cheats_folder/PPSSPP" --overwrite
  fi
  if [[ "$action" == "postmove" ]]; then # Run only post-move commands
    set_setting_value "$ppssppconf" "CurrentDirectory" "$roms_folder/psp" "ppsspp" "General"
    dir_prep "$saves_folder/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/SAVEDATA"
    dir_prep "$states_folder/PSP/PPSSPP-SA" "$XDG_CONFIG_HOME/ppsspp/PSP/PPSSPP_STATE"
    dir_prep "$texture_packs_folder/PPSSPP" "$XDG_CONFIG_HOME/ppsspp/PSP/TEXTURES"
    dir_prep "$cheats_folder/PPSSPP" "$XDG_CONFIG_HOME/ppsspp/PSP/Cheats"
  fi
fi

```


