# setting_value

**API Request Group:** SET

**Description:**

This call will change the value of any given setting name in any given setting file. The structure is similar to the API call "get setting_value" only with an additional key for the new setting value.

**Applicable data keys:**

- setting_file** - A full path or known variable name to the setting file to reference.

- **setting_name** - The specific setting name to reference.

- **setting_value** - The new value to set the given setting to.

- **system_name** - The RetroDECK-internal name of the system being referenced. This will match the component name from API functions such as "get all_components".

- **section_name** - (Optional) the section of the config file where the setting_name is found. Can be left blank or omitted entirely if the setting is not found in a specific section.

**Additional considerations:**

It is possible to use known variable names (such as $rd_conf) for the setting_file key value as well, as they will be resolved to the true path internally. These names must be in Bash-compatible format and start with a $. The requested change will also be validated to have actually happened, and an error message returned if it could not be.

## setting_value - example request


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

## setting_value - success response


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
## setting_value - failure response

```

{
  "status": "error",
  "result": {
    "response": "setting value on <setting_name> was not able to be changed"
  },
  "request_id": "<request_id>"
}

```
