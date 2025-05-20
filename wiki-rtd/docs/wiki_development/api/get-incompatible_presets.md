# incompatible_presets

**API Request Group:** GET

**Description:**

This call will return a key/value list of all known incompatible presets. As some presets cannot be enabled at the same time as other presets (such as "borders" and "widescreen"), the output can be used to take these incompatibilities into account in a GUI environment. For example, a user could be pre-warned about trying to enable a preset while another incompatible preset is already enabled.

**Applicable data keys:** None

**Additional considerations:** None

## incompatible_presets -  example request

```

{
  "action": "get",
  "request": "incompatible_presets",
  "version": "1.0",
  "request_id": "<request_id>"
}

```

## incompatible_presets - success response


```

{
  "status": "success",
  "result": {
    "borders": "widescreen",
    "other_preset_1": "other_preset_2"
  },
  "request_id": "<request_id>"
}

```

## incompatible_presets - failure response

```

{
  "status": "error",
  "result": "the incompatible presets list could not be read",
  "request_id": "<request_id>"
}

```
