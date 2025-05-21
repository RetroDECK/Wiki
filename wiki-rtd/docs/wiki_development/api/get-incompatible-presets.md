# incompatible_presets

**API Request Group:** GET

**Description:**

This API call returns a key-value list of all known incompatible presets. Some presets cannot be enabled simultaneously (e.g., `borders` and `widescreen`), and this information can be used in a GUI to prevent conflicts. For example, users can be warned if they attempt to enable a preset that conflicts with one already active.

**Applicable Data Keys:** None

**Additional Notes:** None

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
