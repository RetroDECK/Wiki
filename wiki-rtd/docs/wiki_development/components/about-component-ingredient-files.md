# Components Ingredient Files

The **Components Ingredient Files** feed details about the Component to the RetroDECK Framework to be used with various features and functions.

## Index: Components Ingredient Files 

### component_launcher.sh

A Bash script that serves as the launcher wrapper for a specific RetroDECK component. It is responsible for setting up the environment and executing the component within its sub-sandbox.

**Read more here:** [component_launcher.sh](ing-component-launcher.md)

### component_functions.sh

A Bash script that defines configuration file paths and component-specific functions. Component-specific path variables and functions unique to the component (e.g., firmware installation, advanced functions found in the Configurator menus).

**Read more here:** [component_functions.sh](ing-component-functions.md)

### component_manifest.json

The JSON file provides both informational and functional data used by the RetroDECK Framework, Configurator menus, and API calls. 

Each manifest includes:

- Component metadata (name, description, supported systems)
- Configurator menu entries
- Compatible presets and their possible states
- Actions required to apply presets
- Core-specific metadata (if applicable)

**Read more here:** [component_manifest.json](ing-component-manifest.md)

### component_prepare.sh

A Bash script that is responsible for handling setup tasks unique to a specific component, such as:

- Resetting configuration files
- Preparing directories
- Moving or backing up data
- Post-move adjustments

**Read more here:** [component_prepare.sh](ing-component-prepare.md)

