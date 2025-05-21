# reset_component

**API Request Group:** DO

**Description:**

This API call performs a reset operation on the specified component. The reset behavior is specific to each component and is defined in the corresponding `prepare_component.sh` script.


**Applicable data keys:**

- **component** - The internal system name of the component to reset, as referenced in other API calls such as `get all_components`.


**Additional Notes** None

## reset_component - example request

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

## reset_component - success response


```

{
  "status": "success",
  "result": "reset of component <component_name> is complete"
  "request_id": "<request_id>"
}

```

## reset_component - failure response

```

{
  "status": "error",
  "result": "reset of component <component_name> could not be completed"
  "request_id": "<request_id>"
}

```
