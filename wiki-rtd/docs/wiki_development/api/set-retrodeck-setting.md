# retrodeck_setting

**API Request Group:** SET

**Description:**

This is an extension of the call "set setting_value", made to simplify changing internal RetroDECK settings. The process is the same but the data key set is simplified. All the current RetroDECK settings can be retrieved through the API call "get retrodeck_settings".

**Applicable data keys:**

- **setting_name** - The specific setting name to reference.

- **setting_value** - The new value to set the given setting to.

- **section_name** - (Optional) The section of the config file where the setting_name is found. Can be left blank or omitted entirely if the setting is not found in a specific section.

Additional considerations:
Although this call can alter the state of preset setting values in the retrodeck.cfg file directly, it will not actually apply the preset settings themselves, so should not be used in this way. The requested change will also be validated to have actually happened, and an error message returned if it could not be.

## retrodeck_setting - example request

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

## retrodeck_setting - success response

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

## retrodeck_setting - failure response


```

{
  "status": "success",
  "result": {
    "response": "setting value on <setting_name> was not able to be changed"
  },
  "request_id": "<request_id>"
}

```

