# compress_games

**API Request Group:** DO

### Description

This API call compresses one or more specified games into a chosen format. Input data includes both individual key-value pairs and game objects, structured similarly to the output of the `get compressible_games` API call

### Applicable Data Keys

- **post_compression_cleanup** *(Optional)* - Accepts `"true"` or `"false"`. When set to `"true"`, the original game files will be deleted after successful compression and validation. If omitted or left blank, this defaults to `"false"`.

- **games [ ]** - An array of objects, each representing a game to be compressed.

- **game** - The file path to the game. This key must be included within each object in the `games[]` array.

- **format** - The desired compression format. This must be specified within the same object as the game path.

### Additional Notes

- This API does **not** perform compatibility checks. Ensure that the selected compression format is appropriate for each game to avoid errors.
- To validate compatibility and compression readiness, use the `get compressible_games` API call.
- For more details on supported formats by system, refer to the RetroDECK wiki

## Examples: compress_games

### Example Request: compress_games

```

{
  "action": "do",
  "request": "compress_games",
  "data": {
    "post_compression_cleanup": "true",
    "games": [
      {
        "game": "/home/deck/retrodeck/roms/snes/3 Ninjas Kick Back (USA).sfc",
        "format": "zip"
      },
      {
        "game": "/home/deck/retrodeck/roms/snes/Aero Fighters (USA).sfc",
        "format": "zip"
      }
    ]
  }
}

```

### Success Response: compress_games


```
{
  "status": "success",
  "result": "the compression process is complete"
  "request_id": "<request_id>"
}

```

### Failure Response: compress_games

```
{
  "status": "error",
  "result": "the compression process could not be completed"
  "request_id": "<request_id>"
}

```
