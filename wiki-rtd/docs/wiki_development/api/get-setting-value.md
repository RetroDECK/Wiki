# setting_value

**API Request Group:** GET

### Description

This API call retrieves the value of a specific setting from a known configuration file. To perform the lookup, the following information must be provided:

- The name configuration file
- The name of the setting
- Applicable setting file section header 
- The internal system name of the component

### Applicable Data Keys

- **setting_file** – The full path or a known variable name (e.g., `$rd_conf`) for the reference.

- **setting_name** - The name of the setting to retrieve.

- **system_name** - The internal RetroDECK system name, matching the component name used in other API calls such as `get all_components`.

- **section_name** - *(Optional)* – The section of the config file where the setting is located. Can be omitted if the setting is not sectioned.

### Additional Notes

It is possible to use known variable names for the `setting_fil` key value as wel. As they will be resolved to the true path internally. Ensure variable names are Bash-compatible and prefixed with `$` (e.g., `$rd_conf`).


## setting_value - example request

```

{
  "action": "get",
  "request": "setting_value",
  "data": {
    "setting_file": "<setting_file>",
    "setting_name": "<setting_name>",
    "system_name": "<system_name>",
    "section_name": "<section_name>"
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```

## setting_value - success response

```

{
  "status": "success",
  "result": {
    "setting_name": "<setting_name>",
    "setting_value": "<setting_value>"
  },
  "request_id": "<request_id>"
}

```

## setting_value - failure response

```
{
  "status": "error",
  "result": "the value of <setting_name> could not be read",
  "request_id": "<request_id>"
}

```
