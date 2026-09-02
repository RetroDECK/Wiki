# `component_launcher.sh`

`component_launcher.sh` is the launcher wrapper for a specific RetroDECK component. It prepares the required environment and executes the component within its sub-sandbox.

The `component_launcher.sh` file contains the component-specific logic required to launch an application inside its isolated sub-sandbox environment.

The contents vary between components depending on their requirements, including:

- Environment variables.
- Packaged libraries and runtime dependencies.
- Plugin and resource paths.
- Component-specific workarounds.
- Component-specific `HOME` directories.
- Default launch arguments.
- The location of the component executable.
- `chmod +x component_launcher.sh` must have executable permissions.

This script is the entry point used when launching a component from:

- ES-DE.
- RetroDECK Configurator.
- RetroDECK CLI.
- Other RetroDECK Framework functions.

Components are launched through:

    `/app/retrodeck/components/<component name>/component_launcher.sh`

--- 

## Component Name and Path

The launcher determine its own component name and installation path from its location:

```
    component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
    component_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
```

This avoids hard-coding the component installation path and allows the launcher to locate files packaged with the component.

--- 

## Launching Environment

The launcher is responsible for configuring any environment variables required by the component.

Common variables include:

| Variable | Purpose |
| --- | --- |
| `LD_LIBRARY_PATH` | Provides access to component and runtime libraries. |
| `QT_PLUGIN_PATH` | Defines the location of Qt plugins. |
| `QT_QPA_PLATFORM_PLUGIN_PATH` | Defines the Qt platform plugin location. |
| `HOME` | Provides a component-specific home directory when required. |

Only variables required by the component should be modified.

--- 

## Component Libraries

Components may include their own libraries or require libraries provided by the RetroDECK runtime.

For example: ` export LD_LIBRARY_PATH="$component_path/lib:$rd_shared_libs:${DEFAULT_LD_LIBRARY_PATH}"` 

A launcher may also add specific runtime dependencies: ` export LD_LIBRARY_PATH="$component_path/lib:$ffmpeg_path/25.08:$rd_shared_libs:${DEFAULT_LD_LIBRARY_PATH}"` 

This allows the component to locate libraries from its own package as well as shared RetroDECK runtime resources under ` shared-libs`  or other locations.

### Qt Plugins

Components using Qt may require additional plugin paths.

For example:

```
    export QT_PLUGIN_PATH="$rd_shared_libs/org.kde.Platform/6.10/plugins/:${QT_PLUGIN_PATH}"
    export QT_QPA_PLATFORM_PLUGIN_PATH="$rd_shared_libs/org.kde.Platform/6.10/plugins/platforms/:${QT_QPA_PLATFORM_PLUGIN_PATH}"
```

These variables should only be configured when required by the component.

### Component-Specific `HOME`

Some components do not respect XDG pathing standards and instead expect configuration or data to be stored under `HOME`. In these cases, the launcher can map `HOME` to the appropriate RetroDECK configuration location in either config or data.

For example: `HOME=/var/config/oricutron`

This redirects the component's home directory to RetroDECK's XDG-based configuration structure while keeping the component's configuration and data isolated from the normal environment.


### Logging

Launchers should log useful information when appropriate.

For example:

```
    log i "RetroDECK is now launching $component_name"
    log d "Library Path: $LD_LIBRARY_PATH"
    log d "QT Plugin Path: $QT_PLUGIN_PATH"
    log d "QT QPA Platform Plugin Path: $QT_QPA_PLATFORM_PLUGIN_PATH"
```

---

## Launch Arguments

A launcher can provide default arguments required by a component while still allowing additional arguments to be passed by the caller.

These are unique per component

For example:

```
    exec "$component_path/oricutron-sdl2" \
      -m atmos \
      -f \
      -R opengl \
      --vsynchack on \
      --scanlines off \
      --turbotape on \
      --lightpen off \
      "$@"
```

`"$@"` forwards all arguments received by `component_launcher.sh` to the component.

Default arguments should only be added when they are required for the RetroDECK component configuration.

The component executable should normally be started using `exec`: `exec "$component_path/bin/scummvm" "$@"`

---

## Frontend vs. Launcher Arguments

Not all launch arguments need to be handled directly by `component_launcher.sh`. Arguments that determine **which game, system, or frontend launch mode** is being used should generally be defined in `component_manifest.json` and passed to ES-DE.

The launcher should handle arguments that are required for the component's RetroDECK environment and apply to **all launches**, such as fullscreen or required paths. The manifest should handle arguments that vary depending on the selected game, system, or launch command.

**As a general guideline:**

| Location | Responsibility |
| --- | --- |
| `component_launcher.sh` | Component runtime environment, paths, libraries, required defaults and RetroDECK-specific arguments. |
| `component_manifest.json` | ES-DE systems, launch commands, game-specific arguments, launch modes and user-selectable commands. |

### Launcher Arguments

For example, `dhewm3` requires several arguments to configure its RetroDECK environment:

```
    exec "$component_path/dhewm3" \
      +set fs_gameDllPath /app/retrodeck/components/dhewm3 \
      +set fs_basepath /var/data/dhewm3/base \
      +set r_fullscreen 1 \
      "$@"
```

### Frontend Arguments

Arguments that select a specific game, mod, or game mode can instead be defined in `component_manifest.json`.

For example, `dhewm3` uses the manifest to provide different ES-DE launch commands for launching the base **Doom 3** game or a mod against the **Doom 3: Resurrection of Evil (D3XP)** expansion. The frontend handles the game-specific `+set fs_game` and `+set fs_game_base d3xp` arguments, allowing different launch options to be defined without adding game-specific logic to `component_launcher.sh`.

This allows the user to select the appropriate ES-DE launch command based on the game without modifying the core arguments defined by `component_launcher.sh`, such as `+set fs_basepath`, `+set r_fullscreen 1`, and `+set fs_gameDllPath`.

**component_launcher.sh**
```
#!/bin/bash

source /app/libexec/launcher_functions.sh

# Setting component name and path based on the directory name
component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
component_path="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"

export LD_LIBRARY_PATH="$component_path/lib:$rd_shared_libs:${DEFAULT_LD_LIBRARY_PATH}"

log i "RetroDECK is now launching $component_name"
log d "Library path is: $LD_LIBRARY_PATH"
log d "DOOM WADs directory is: $DOOMWADDIR"

exec "$component_path/dhewm3" +set fs_gameDllPath /app/retrodeck/components/dhewm3 +set fs_basepath /var/data/dhewm3/base +set r_fullscreen 1 "$@"
```

**component_manifest.json**
```
    "es_systems": [
      {
        "name": "doom3",
        "fullname": "Doom 3",
        "path": "%ROMPATH%/doom3",
        "extension": ".doom3",
        "commands": [
          {
            "label": "dhewm 3 (Standalone)",
            "command": "%EMULATOR_DHEWM3% +set fs_game %BASENAME%",
            "priority": 10
          },
          {
            "label": "dhewm 3 [Custom D3XP Mod] (Standalone)",
            "command": "%EMULATOR_DHEWM3% +set fs_game %BASENAME% +set fs_game_base d3xp",
            "priority": 20
          }
        ],
        "platform": "pc, pcwindows",
        "theme": "doom3"
      }
    ]
```

---

## Examples

### PPSSPP

PPSSPP demonstrates a simple launcher that configures shared runtime libraries and Qt-related environment variables.

```
    #!/bin/bash

    source /app/libexec/launcher_functions.sh

    component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
    component_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    export LD_LIBRARY_PATH="$rd_shared_libs:$rd_shared_libs/org.gnome.Platform/49/:$rd_shared_libs/org.freedesktop.Platform/24.08/:${LD_LIBRARY_PATH}"
    export QT_PLUGIN_PATH="${QT_PLUGIN_PATH}"
    export QT_QPA_PLATFORM_PLUGIN_PATH="${QT_QPA_PLATFORM_PLUGIN_PATH}"

    log i "RetroDECK is now launching $component_name"
    log d "Library path is: $LD_LIBRARY_PATH"
    log d "QT plugin path is: $QT_PLUGIN_PATH"

    # Workaround for vDSO issues in some environments.
    export LD_PRELOAD=""
    unset LD_PRELOAD

    exec "$component_path/bin/PPSSPPSDL" "$@"
```

---    

### Oricutron

Oricutron demonstrates a launcher with component-local libraries, a dedicated `HOME`, and predefined launch arguments.

```
    #!/bin/bash

    source /app/libexec/launcher_functions.sh

    component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
    component_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    export LD_LIBRARY_PATH="$component_path/lib:$rd_shared_libs:${DEFAULT_LD_LIBRARY_PATH}"

    HOME=/var/config/oricutron

    log i "RetroDECK is now launching $component_name"
    log d "Library path is: $LD_LIBRARY_PATH"
    log d "QT plugin path is: $QT_PLUGIN_PATH"
    log d "QT QPA PLATFORM plugin path is: $QT_QPA_PLATFORM_PLUGIN_PATH"

    exec "$component_path/oricutron-sdl2" \
      -m atmos \
      -f \
      -R opengl \
      --vsynchack on \
      --scanlines off \
      --turbotape on \
      --lightpen off \
      "$@"
```
      
      
### ScummVM

ScummVM demonstrates a launcher that uses component-local libraries, FFmpeg, and KDE platform plugins.

```
    #!/bin/bash

    source /app/libexec/launcher_functions.sh

    component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
    component_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

    export LD_LIBRARY_PATH="$component_path/lib:$ffmpeg_path/25.08:$rd_shared_libs:$rd_shared_libs/org.kde.Platform/6.10/:$rd_shared_libs/org.gnome.Platform/49/:$rd_shared_libs/org.freedesktop.Platform/25.08/:${DEFAULT_LD_LIBRARY_PATH}"
    export QT_PLUGIN_PATH="$rd_shared_libs/org.kde.Platform/6.10/plugins/:${QT_PLUGIN_PATH}"
    export QT_QPA_PLATFORM_PLUGIN_PATH="$rd_shared_libs/org.kde.Platform/6.10/plugins/platforms/:${QT_QPA_PLATFORM_PLUGIN_PATH}"

    log i "RetroDECK is now launching $component_name"
    log d "Library Path: $LD_LIBRARY_PATH"
    log d "QT Plugin Path: $QT_PLUGIN_PATH"
    log d "QT QPA Platform Plugin Path: $QT_QPA_PLATFORM_PLUGIN_PATH"

    exec "$component_path/bin/scummvm" "$@"
```

## Related Source

- [RetroDECK Components — Cooker](https://github.com/RetroDECK/components/tree/cooker)
