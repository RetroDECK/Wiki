# retrodeck_setting

**API Request Group:** SET

## Description

This API call is a simplified extension of the `set setting_value` function, designed specifically for modifying internal RetroDECK settings. It streamlines the process by requiring fewer parameters. All current RetroDECK settings can be retrieved using the `get retrodeck_settings` API call.

## Applicable Data Keys

- **setting_name** - The name of the setting to be updated.

- **setting_value** - The new value to assign to the specified setting.

- **section_name** *(Optional)* - The section of the configuration file where the setting resides. This can be omitted if the setting is not sectioned.



## Additional Notes

Although this call can modify preset-related values in the `retrodeck.cfg` file, it does **not** 
apply the presets themselves.

The system will validate that the change was successfully applied. If not, an error message will be returned.


## Examples: retrodeck_setting

### Example Request: retrodeck_setting 


```

{
  "action": "set",
  "request": "setting_value",
  "data": {
    "setting_name": "<setting_name>",
    "setting_value": "<new_setting_value>",
    "section_name": "<section_name>"
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```

### Success Response: retrodeck_setting 

```

{
  "status": "success",
  "result": {
    "setting_name": "<setting_name>",
    "setting_value": "<new_setting_value>"
  },
  "request_id": "<request_id>"
}

```


### Failure Response: retrodeck_setting 


```

{
  "status": "success",
  "result": {
    "response": "setting value on <setting_name> was not able to be changed"
  },
  "request_id": "<request_id>"
}

```

