# preset_state

**API Request Group:** SET

### Description

This API call sets the state of a specified preset for a given component. It performs compatibility prechecks before applying the change to ensure the request is valid and does not conflict with other active presets.

Supported components and presets are defined per component and can be retrieved using the `get all_components` API call. The accepted values for each preset are also defined in the component's manifest and may vary.

### Applicable Data Keys

- **component** - The internal system name of the component (as used in `get all_components`).

- **preset** - The internal name of the preset to be modified (as used in `get current_preset_state`).

- **state** - The desired new state for the preset.

- **cheevos_username** *(Optional)* - Required only when enabling a RetroAchievements-related 
preset. This is the username used to log into the RetroAchievements system.

- **cheevos_token** *(Optional)* - Also required for RetroAchievements presets. This token is obtained via the `do cheevos_login` API call.


### Additional Notes

Compatibility checks are performed before applying changes. If the request fails, an error message will explain the reason (e.g., invalid input, conflicting presets).

## Examples: preset_state

### Example Request: preset_state

```

{
  "action": "set",
  "request": "preset_state",
  "data": {
    "component": "<component_name>",
    "preset": "<preset_name>",
    "state": "<new_preset_state>",
    "cheevos_username": "<cheevos_username>",
    "cheevos_token": "<cheevos_login_token>"
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```

### Success Response: preset_state


```

{
  "status": "success",
  "result": "preset <preset_name> for component <component_name> was successfully changed to <state>"
  "request_id": "<request_id>"
}

```

### Failure Response: preset_state


```

{
  "status": "error",
  "result": {
    "response": "desired state <state> for component <component_name> preset <preset_name> is invalid"
  },
  "request_id": "<request_id>"
}

```

