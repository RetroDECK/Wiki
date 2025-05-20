# setting_value

**API Request Group:** GET

**Description:**

This call allows for getting the value of a specific setting name from any known config file. The name of the config file must be known, along with the setting name, any applicable setting file section header and the internal "system" name of the component.

Applicable data keys:

- **setting_file** - A full path or known variable name to the setting file to reference.

- **setting_name** - The specific setting name to reference.

- **system_name** - The RetroDECK-internal name of the system being referenced. This will match the component name from API functions such as "get all_components".

- **section_name** - (Optional) the section of the config file where the setting_name is found. Can be left blank or omitted entirely if the setting is not found in a specific section.

**Additional considerations:**

It is possible to use known variable names (such as $rd_conf) for the setting_file key value as well, as they will be resolved to the true path internally. These names must be in Bash-compatible format and start with a $.

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
