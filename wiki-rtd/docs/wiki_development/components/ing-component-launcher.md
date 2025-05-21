# component_launcher.sh

A Bash script that serves as the launcher wrapper for a specific RetroDECK component. It is responsible for setting up the environment and executing the component within its sub-sandbox.

### Legacy Note

This script replaces the legacy approach of placing binaries in `/app/bin`. 

## Description

The `component_launcher.sh` file contains the logic required to launch a component in its isolated sub-sandbox environment. The contents will vary depending on the needs of the component and where it may be looking for its own packaged information.

This file is also what is called when the given component should be launched, either by ES-DE, the RetroDECK Configurator or CLI argument. 

When launching any component, it will be done by `/app/retrodeck/components/<component name>/component_launcher.sh`

## Example: component_launcher.sh for the PPSSPP Component

```
#!/bin/bash
RD_MODULES="/app/retrodeck/components"
LD_LIBRARY_PATH="$RD_MODULES/ppsspp/lib:${LD_LIBRARY_PATH}"
exec "$RD_MODULES/ppsspp/bin/PPSSPPSDL" "$@"
```
