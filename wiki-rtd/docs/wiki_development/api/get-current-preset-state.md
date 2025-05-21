# current_preset_state

**API Request Group:** GET

### Description

This API call retrieves the current state information for a specified preset, component, or a combination of both. It supports flexible querying:

- If `any` is specified for the `preset` key, the API will return data for all presets.
- If the `component` key is omitted, the API will return all components compatible with the specified preset.
- If `all` is specified for the `preset` and no component is provided, the API will return the state of all presets across all components.

### Applicable Data Keys

- **preset** – The name of a specific preset, `any` for all presets, or `all` to retrieve the state of all presets for all components.

- **component** *(Optional)* – The internal name of a specific component. If omitted, data will be returned for all applicable components.

### Additional Notes

None


## Examples: current_preset_state

### Example Request: current_preset_state

### Success Response: current_preset_state

### Failure Response: current_preset_state
