# current_preset_state

**API Request Group:** GET

**Description:**

This call will return the current information for any given preset, component or combination of both. A value of "any" is also acceptable for the "preset" key value, and if the component key value is omitted it will return a list of all components compatible with the given preset. Specifying "all" for the preset with no specified component will return the state of all presets for all components.

**Applicable data keys:**

- **preset** - A specific preset name, or "any" to gather data for all presets.

- **component** - (Optional) A specific component to gather data for given preset. Can be left blank or omitted entirely, at which point data will be gathered for all applicable components.

**Additional considerations:**  None
