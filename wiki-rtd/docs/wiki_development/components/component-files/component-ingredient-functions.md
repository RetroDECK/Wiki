# component_functions.sh

`component_functions.sh` is part of the component ingredient files. 

That defines the component-specific configuration, paths, settings helpers, lifecycle actions, startup actions, optional Configurator tools and more. It provides the logic required by the **RetroDECK Framework** understand how-to to configure, prepare, maintain and migrate the component.

A component's `component_functions.sh` may contain:

- Component-specific path and configuration variables.
- Configuration read/write helpers.
- Component preparation and reset functions.
- RetroDECK Startup actions.
- Post-move and migration logic.
- Post-update and legacy migration functions.
- Configurator tools, other functions and dialogs.
- Component-specific installation or maintenance functions.
- New functions that we have not thought of yet.

---

## Naming

Component-specific variables and functions need to include the component name to avoid naming conflicts.

For example, PPSSPP uses:

- `ppsspp_*` for component-specific variables.
- `_set_setting_value::ppsspp`
- `_get_setting_value::ppsspp`
- `_add_setting::ppsspp`
- `_delete_setting::ppsspp`
- `_prepare_component::ppsspp`
- `_post_update::ppsspp`
- `_post_update_legacy::ppsspp`

RPCS3 uses:

- `rpcs3_*` for component-specific variables.
- `_set_setting_value::rpcs3`
- `_get_setting_value::rpcs3`
- `_prepare_component::rpcs3`
- `_post_update::rpcs3`
- `_post_update_legacy::rpcs3`
- `correct_rpcs3_desktop_files::rpcs3`

---

## Component Specific Variables

Component Specific Variables should be declared near the top of the file.

Components may define paths for configuration files, logs, caches, input profiles, component resources, firmware and other component-specific data that can be used in later functions inside the file.

### PPSSPP

```
    export ppsspp_config="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/ppsspp.ini"
    export ppsspp_config_controls="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/controls.ini"
    export ppsspp_retroachievements_dat="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/ppsspp_retroachievements.dat"
    export ppsspp_cheats_db="$rd_components/ppsspp/cheats/cheat.db"
    export ppsspp_rd_config_dir="$rd_components/ppsspp/rd_config"
    export ppsspp_rd_extras_dir="$rd_components/ppsspp/rd_extras"
    export ppsspp_textures_path="$XDG_CONFIG_HOME/ppsspp/PSP/TEXTURES"
    export ppsspp_shaders_path="$XDG_CONFIG_HOME/ppsspp/PSP/shaders"
    export ppsspp_cheats_path="$XDG_CONFIG_HOME/ppsspp/PSP/Cheats"
    export ppsspp_mods_path="$XDG_CONFIG_HOME/ppsspp/PSP/PLUGINS"
    export ppsspp_logs_path="$XDG_CONFIG_HOME/ppsspp/PSP/SYSTEM/DUMP"
```

### RPCS3

```
    export rpcs3_config="$XDG_CONFIG_HOME/rpcs3/config.yml"
    export rpcs3_config_evdev_positive_axis="$XDG_CONFIG_HOME/rpcs3/evdev_positive_axis.yml"
    export rpcs3_log="$XDG_CACHE_HOME/rpcs3/RPCS3.log"
    export rpcs3_config_vfs="$XDG_CONFIG_HOME/rpcs3/vfs.yml"
    export rpcs3_gui_current_settings="$XDG_CONFIG_HOME/rpcs3/GuiConfigs/CurrentSettings.ini"
    export rpcs3_input_active_profiles="$XDG_CONFIG_HOME/rpcs3/input_configs/active_profiles.yml"
    export rpcs3_input_Default="$XDG_CONFIG_HOME/rpcs3/input_configs/global/Default.yml"
    export rpcs3_component_dir="$rd_components/rpcs3"
    export rpcs3_firmware="http://dus01.ps3.update.playstation.net/update/ps3/image/us/2026_0318_a2b60b6ac1d2e49e230144345616927c/PS3UPDAT.PUP"
```

---

## Configuration Helpers

Components must implement helpers for reading and modifying their native configuration formats. The implementation is component-specific, but all helpers must follow the same naming convention. 

| Function | Purpose |
| --- | --- |
| `_set_setting_value::<component>` | Sets a configuration value. |
| `_get_setting_value::<component>` | Reads a configuration value. |
| `_add_setting::<component>` | Adds a configuration value when supported. |
| `_delete_setting::<component>` | Removes a configuration value when supported. |

**Tip:** If your component uses a configuration format already supported by another component, such as INI, TOML, or YAML and more. you can reuse the corresponding logic from its `component_functions.sh`. There is no need to reinvent the wheel for every component.

### PPSSPP

PPSSPP uses INI-style configuration files.

```
    _set_setting_value::ppsspp() {
      local file="$1"
      local name=$(sed_escape_pattern "$2")
      local value=$(sed_escape_replacement "$3")
      local section="${4:-}"

      # Update the requested PPSSPP configuration value.
      ...
    }

    _get_setting_value::ppsspp() {
      local file="$1"
      local name="$2"
      local section="${3:-}"

      # Read the requested PPSSPP configuration value.
      ...
    }
```

### RPCS3

RPCS3 uses both INI and YAML configuration files. Its helpers select the appropriate method based on the file extension.

For YAML files, RPCS3 uses `yq` to access nested configuration values.

```
    _set_setting_value::rpcs3() {
      local file="$1" name="$2" value="$3" section="${4:-}"

      if [[ "$file" =~ \.ini$ ]]; then
        # Update INI configuration.
        ...
      elif [[ "$file" =~ \.yml$ ]]; then
        # Update YAML configuration using yq.
        ...
      fi
    }

    _get_setting_value::rpcs3() {
      local file="$1" name="$2" section="${3:-}"

      if [[ "$file" =~ \.ini$ ]]; then
        # Read INI configuration.
        ...
      elif [[ "$file" =~ \.yml$ ]]; then
        # Read YAML configuration using yq.
        ...
      fi
    }

```

---

## Startup Actions

Components can define startup actions that are executed when RetroDECK starts.

Startup actions are useful for component-specific maintenance or corrective operations that must be performed after the component has been initialized.

### RPCS3: Correcting Desktop Files

RPCS3 uses a startup action to correct existing `.desktop` files so that they reference the current component launcher.

```
    _prepare_component::rpcs3() {
      local action="$1"
      shift

      case "$action" in
        startup)
          correct_rpcs3_desktop_files::rpcs3
          ;;
      esac
    }

    correct_rpcs3_desktop_files::rpcs3() {
      rpcs3_component_path="$(get_own_component_path)/component_launcher.sh"

      while IFS= read -r file; do
        sed -i "s|^Exec=\"[^\"]*\"\(.*\)|Exec=\"${rpcs3_component_path}\"\1|" "$file"
      done < <(
        find "$roms_path/ps3" \
          -mindepth 1 \
          -type f \
          -iname "*.desktop"
      )
    }
```

---

## Lifecycle Functions

Lifecycle functions handle each component's unique setup, reset, storage moves, startup operations, what should happen in RetroDECK updates and more.

| Function | Purpose |
| --- | --- |
| `_prepare_component::<component>` | Performs component preparation, reset, post-move, or startup actions. |
| `_post_update::<component>` | Applies bug fixes and migrations required after a component update post `0.11.0`. |
| `_post_update_legacy::<component>` | Applies bug fixes and migrations from older RetroDECK versions pre `0.11.0`. |

### Preparation Actions

`_prepare_component::<component>` receives an action that determines which operation is performed.

Common actions include:

| Action | Purpose |
| --- | --- |
| `reset` | Restores component configuration to default and prepares required directories. |
| `postmove` | Updates paths and moves component data after a user triggers a directory move. |
| `startup` | Performs component-specific actions during RetroDECK startup. |


### PPSSPP Example: reset & postmove

The PPSSPP reset and post-move operations prepare and link directories for:

- Saves.
- Save states.
- Texture packs.
- Shaders.
- Cheats.
- Plugins.
- Logs.

The reset operation may also install component configuration, prepare cheats, and extract required BIOS files.

```
    _prepare_component::ppsspp() {
      local action="$1"
      shift

      case "$action" in
        reset)
          # Reset PPSSPP configuration and prepare directories.
          ...
          ;;

        postmove)
          # Update PPSSPP paths after a storage move.
          ...
          ;;
      esac
    }
```

### PPSSPP: update

PPSSPP uses version checks to migrate configuration, fix bugs and data between older versions.

Examples include:

- Moving save data and save states.
- Updating controller mappings.
- Installing or migrating cheats.
- Relinking shaders.
- Updating graphics settings.
- Applying Wayland-specific configuration workarounds.

```
    _post_update_legacy::ppsspp() {
      local previous_version="$1"

      if check_version_is_older_than "$previous_version" "0.7.0b"; then
        # Migrate saves and save states.
        ...
      fi

      if check_version_is_older_than "$previous_version" "0.7.1b"; then
        # Update controller mappings.
        ...
      fi

      if check_version_is_older_than "$previous_version" "0.10.3b"; then
        # Relink shaders.
        ...
      fi
    }
```

### RPCS3 Example: reset & postmove

RPCS3 preparation handles its virtual filesystem, save data, save states, captures, patches and required storage directories.

```
    _prepare_component::rpcs3() {
      local action="$1"
      shift

      case "$action" in
        reset)
          # Reset RPCS3 configuration and prepare directories.
          ...
          ;;

        postmove)
          # Update RPCS3 paths after a storage move.
          ...
          ;;

        startup)
          # Perform RPCS3 startup actions.
          correct_rpcs3_desktop_files::rpcs3
          ;;
      esac
    }
```

### RPCS3: update

RPCS3 legacy migrations handle changes to configuration and storage locations.

Examples include:

- Migrating the RPCS3 virtual filesystem configuration.
- Moving existing emulator data from legacy locations.
- Migrating save data.
- Creating backups before data migrations.
- Moving RPCS3 storage directories introduced by newer versions.

```
    _post_update_legacy::rpcs3() {
      local previous_version="$1"

      if check_version_is_older_than "$previous_version" "0.7.0b"; then
        # Migrate RPCS3 configuration and data.
        ...
      fi

      if check_version_is_older_than "$previous_version" "0.8.0b"; then
        # Migrate save data and create a backup.
        ...
      fi

      if check_version_is_older_than "$previous_version" "0.10.0b"; then
        # Migrate RPCS3 storage directories.
        ...
      fi
    }
```





---

## Configurator Tools & Other operations

Component files may define functions used by the RetroDECK Configurator or other operations.

These functions can provide installation, maintenance, or other component-specific operations.

### RPCS3 Firmware Installation

RPCS3 provides a Configurator tool for downloading and installing firmware.

```
    update_rpcs3_firmware() {
      if check_network_connectivity; then
        # Display installation instructions.
        # Download the firmware.
        # Launch RPCS3 to install it.
        # Clean up temporary files.
        ...
      else
        # Display a network connectivity warning.
        ...
      fi
    }
```

A separate dialog can be used during the initial RetroDECK setup:

```
    finit_install_rpcs3_firmware_dialog() {
      # Ask whether RPCS3 firmware should be installed.
      ...
    }
```

---

#

## Example Component Structure

A typical component file can contain some or all of the following:

```
    #!/bin/bash

    # Component paths
    export component_config="..."
    export component_log="..."
    export component_data="..."

    # Configurator tools
    component_install_tool() {
      ...
    }

    # Configuration helpers
    _set_setting_value::component() {
      ...
    }

    _get_setting_value::component() {
      ...
    }

    # Component lifecycle
    _prepare_component::component() {
      case "$1" in
        reset)
          ...
          ;;
        postmove)
          ...
          ;;
        startup)
          ...
          ;;
      esac
    }

    # Updates
    _post_update::component() {
      ...
    }

    # Legacy migrations
    _post_update_legacy::component() {
      ...
    }
```

---

## Related Source

- [RetroDECK Components — Cooker](https://github.com/RetroDECK/components/tree/cooker)

---
