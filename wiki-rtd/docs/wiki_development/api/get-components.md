# components

**API Request Group:** GET

**Description:**

This call will return an array of objects containing basic information for every installed component. Returned information includes the internal "machine-readable" name for the component, a human-friendly name and description and a list of all systems emulated by the component.

**Applicable data keys:** None

**Additional considerations:** None

## components - example request


```

{
  "action": "get",
  "request": "components",
  "version": "1.0",
  "request_id": "<request_id>"
}

```

## components - success response


```

{
  "status": "success",
  "result": [
    {
      "component_name": "retrodeck",
      "component_friendly_name": "RetroDECK",
      "description": "RetroDECK Framework",
      "emulated_system": "none",
      "path": "/app/retrodeck/components/retrodeck",
      "compatible_presets": "none"
    },
    {
      "component_name": "ppsspp",
      "component_friendly_name": "PPSSPP",
      "description": "PlayStation Portable Emulator",
      "emulated_system": "psp",
      "path": "/app/retrodeck/components/ppsspp",
      "compatible_presets": {
        "cheevos": [
          "false",
          "true"
        ],
        "cheevos_hardcore": [
          "false",
          "true"
        ]
      }
    },
    {
      "component_name": "retroarch",
      "component_friendly_name": "RetroArch",
      "description": "Libretro Multi-emulator Frontend",
      "emulated_system": "retroarch",
      "path": "/app/retrodeck/components/retroarch",
      "compatible_presets": {
        "cheevos": [
          "false",
          "true"
        ],
        "cheevos_hardcore": [
          "false",
          "true"
        ],
        "snes9x-current_libretro": {
          "borders": [
            "false",
            "true"
          ],
          "widescreen": [
            "false",
            "true"
          ]
        },
        "gambatte_libretro": {
          "borders": [
            "false",
            "true"
          ],
          "rewind": [
            "false",
            "true"
          ]
        }
      }
    },
    {
      "component_name": "steam-rom-manager",
      "component_friendly_name": "Steam ROM Manager",
      "description": "Used to sync RetroDECK favorites and Launcher with Steam",
      "emulated_system": "none",
      "path": "/app/retrodeck/components/steam-rom-manager"
    }
  ],
  "request_id": "<request_id>"
}
Failure response:
{
  "status": "error",
  "result": "the current component information could not be read",
  "request_id": "<request_id>"
}

```
