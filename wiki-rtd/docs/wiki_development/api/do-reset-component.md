# reset_component

**API Request Group:** DO

### Description

This API call performs a reset operation on the specified component. The reset behavior is specific to each component and is defined in the corresponding `prepare_component.sh` script.


### Applicable Data Keys

- **component** - The internal system name of the component to reset, as referenced in other API calls such as `get all_components`.


### Additional Notes

None

## Examples: reset_component

### Example Request: reset_component

```

{
  "action": "do",
  "request":"reset_component",
  "data": {
    "component": "<component_name>
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```


### Success Response: reset_component


```

{
  "status": "success",
  "result": "reset of component <component_name> is complete"
  "request_id": "<request_id>"
}

```

### Failure Response: reset_component

```

{
  "status": "error",
  "result": "reset of component <component_name> could not be completed"
  "request_id": "<request_id>"
}

```
