# setting_value

**API Request Group:** SET

### Description

This API call updates the value of a specified setting within a given configuration file. It functions similarly to the `get setting_value` call, but includes an additional key to define the new value.

### Applicable Data Keys

- **setting_file** – The full path or a known variable name (e.g., `$rd_conf`) referencing the configuration file. Variable names must be Bash-compatible and begin with `$`.

- **setting_name** – The name of the setting to be updated.

- **setting_value** – The new value to assign to the specified setting.

- **system_name** – The internal RetroDECK system name, matching the component name used in API calls like `get all_components`.

- **section_name** *(Optional)* – The section of the configuration file where the setting is located. Can be omitted if the setting is not sectioned

### Additional Notes

- Known variable names will be resolved internally to their actual file paths.
- The system will validate that the change was successfully applied. If not, an error message will be returned.

## Examples: setting_value 

### Example Request: setting_value 


```

{
  "action": "set",
  "request": "setting_value",
  "data": {
    "setting_file": "<setting_file>",
    "setting_name": "<setting_name>",
    "setting_value": "<new_setting_value>",
    "system_name": "<system_name>",
    "section_name": "<section_name>"
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```


### Success Response: setting_value 


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
### Failure Response: preset_state

```

{
  "status": "error",
  "result": {
    "response": "setting value on <setting_name> was not able to be changed"
  },
  "request_id": "<request_id>"
}

```
