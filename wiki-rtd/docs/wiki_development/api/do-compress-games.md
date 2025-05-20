# compress_games

**API Request Group:** DO

**Description:**

This call will compress one or more provided games into the specified compression format. The provided data will include single key/value pairs as well as game objects containing their own keys and values, matching the output structure of the API call "get compressible_games".

**Applicable data keys:**

- **post_compression_cleanup** - (Optional) either "true" or "false", setting this value to "true" will have the compression process remove the original game files once they are compressed and validated that the compression completed successfully. This key can be blank or omitted entirely and will default to "false" unless specified as "true".

- **games [ ]** - This is a parent array of objects for the games to be compressed.

- **game** - This is the path to the game to be compressed, in its own object within the games[] array.

- **format** - This is the specified format to compress the game into, held within the same object as the desired game.

**Additional considerations:**

No compatibility checks are performed for this part of the compression process, so ensure the games you specify match a compatible compression format, or incorrect compressions may occur. Compression validation can be performed on all games with the API call "get compressible_games", and additional information on what systems support what compression formats can be found on the RetroDECK wiki.

#### compress_games - example request

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

## compress_games - success response


```
{
  "status": "success",
  "result": "the compression process is complete"
  "request_id": "<request_id>"
}

```
## compress_games - failure response

```
{
  "status": "error",
  "result": "the compression process could not be completed"
  "request_id": "<request_id>"
}

```
