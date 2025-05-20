# preset_state

**API Request Group:** SET

**Description:**

This call will set the state of any given preset for any given component to any given value, after performing compatibility prechecks. Supported components are any that are compatible with any number of presets. Supported presets are whatever the given component supports. Supported values are whatever are defined in that components manifest for that preset. As value state names can be arbitrary, this will vary from component to component, but all possible options are listed in the results of the API call "get all_components".

**Applicable data keys:**

- **component** - The name of the component, using the internal system name as referenced by other API calls such as "get all_components".

- **preset** - The name of the preset to be changed, using the internal preset name as referenced by other API calls such as "get current_preset_state".

- **state** - The new desired state to set the preset to.

- **cheevos_username** - (Optional) only needed if enabling a RetroAchivements-related preset, the username as provided by the user to log into the RetroAchivements system.

- **cheevos_token** -  (Optional) only needed if enabling a RetroAchivements-related preset, the token is provided upon successful login to the RetroAchivements system through the RetroDECK API call "do cheevos_login".

**Additional considerations:**

This call performs several compatibility prechecks prior to actually changing anything, such as if the supplied information is correct and that there are no other incompatible presets already enabled. An error message will be returned explaining why the request was rejected if any of the prechecks fail.

## preset_state - example request

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

## preset_state - success response


```

{
  "status": "success",
  "result": "preset <preset_name> for component <component_name> was successfully changed to <state>"
  "request_id": "<request_id>"
}

```

## preset_state - failure response

```

{
  "status": "error",
  "result": {
    "response": "desired state <state> for component <component_name> preset <preset_name> is invalid"
  },
  "request_id": "<request_id>"
}

```

