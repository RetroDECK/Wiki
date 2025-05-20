# reset_component

**API Request Group:** DO

**Description:**

This call will perform a "reset" on the given component. The reset actions are component-specific and can be found in the matching "prepare_component.sh" file.

**Applicable data keys:**

- **component** - The name of the component, using the internal system name as referenced by other API calls such as "get all_components".

**Additional considerations:** None

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
