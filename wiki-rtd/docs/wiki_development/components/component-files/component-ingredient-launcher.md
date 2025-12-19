# component_launcher.sh

A Bash script that serves as the launcher wrapper for a specific RetroDECK component. It is responsible for setting up the environment and executing the component within its sub-sandbox.

### Legacy Note

This script replaces the legacy approach of placing binaries in `/app/bin`. 

## Description

The `component_launcher.sh` file contains the logic required to launch a component in its isolated sub-sandbox environment. The contents will vary depending on the needs of the component and where it may be looking for its own packaged information.

This file is also what is called when the given component should be launched, either by ES-DE, the RetroDECK Configurator or CLI argument. 

When launching any component, it will be done by `/app/retrodeck/components/<component name>/component_launcher.sh`

## Executable

Make sure the `component_launcher.sh` is executable: 

```
chmod +x component_launcher.sh
```

## Example: PPSSPP


```
#!/bin/bash

# Setting component name and path based on the directory name
component_name="$(basename "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"
component_path="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"

export LD_LIBRARY_PATH="$component_path/lib:$rd_shared_libs:$rd_shared_libs/org.kde.Platform/6.10/:$rd_shared_libs/org.gnome.Platform/49/:$rd_shared_libs/org.freedesktop.Platform/24.08/:${LD_LIBRARY_PATH}"
export QT_PLUGIN_PATH="$rd_shared_libs/org.kde.Platform/6.10/plugins/:${QT_PLUGIN_PATH}"
export QT_QPA_PLATFORM_PLUGIN_PATH="$rd_shared_libs/org.kde.Platform/6.10/plugins/platforms/:${QT_QPA_PLATFORM_PLUGIN_PATH}"

log i "RetroDECK is now launching $component_name"
log d "Library path is: $LD_LIBRARY_PATH"
log d "QT plugin path is: $QT_PLUGIN_PATH"

# Workaround for vDSO issues in some environments
export LD_PRELOAD=""
unset LD_PRELOAD

log i "RetroDECK is now launching $component_name"
log d "Library path is: $LD_LIBRARY_PATH"

exec "$component_path/bin/PPSSPPSDL" "$@"
```

**Check More Examples:**

- [RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)

---
