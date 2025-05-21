# compressible_games

**API Request Group:** GET

### Description

This API call returns an array of objects representing games that are compatible with the specified compression format. 

### Applicable Data Keys

- **format** – Specifies the compression format to check for compatibility

**Additional details for applicable data keys:**

Valid values for key "format":

- **chd** – CHD compression, commonly used for disc-based systems (e.g., PSP).

- **rvz** – RVZ compression, specific to Dolphin-based systems (e.g., GameCube).

- **zip** – ZIP compression, supported by many systems.

- **all** – Checks compatibility for all supported compression formats.

If `all` is provided as the format, the system will evaluate compatibility across all supported compression types.

### Additional Notes

- For system-specific compression support, refer to the RetroDECK wiki.
- Depending on the size of the game library, this process may take some time. It is recommended to use a loading spinner or progress indicator in the UI.

## Examples: compressible_games

### Example Request: compressible_games

```

{
  "action": "get",
  "request": "compressible_games",
  "data": {
    "format": "zip"
  },
  "version": "1.0",
  "request_id": "12345"
}

```

### Success Response: compressible_games

```

{
  "status": "success",
  "result": [
    {
      "game": "/home/deck/retrodeck/roms/snes/3 Ninjas Kick Back (USA).sfc",
      "format": "zip"
    },
    {
      "game": "/home/deck/retrodeck/roms/snes/Aero Fighters (USA).sfc",
      "format": "zip"
    },
    {
      "game": "/home/deck/retrodeck/roms/snes/Aero the Acro-Bat (USA).sfc",
      "format": "zip"
    }
  ],
  "request_id": "<request_id>"
}

```

### Failure Response: compressible_games

```

{
  "status": "error",
  "result": "the compressible games list could not be generated",
  "request_id": "<request_id>"
}

```


