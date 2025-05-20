# compressible_games

**API Request Group:** GET

**Description:**

This call will return an array of objects of any game found to be compatible with the compression system for the provided format. If "all" is specified for the format, all compatible compression methods will be checked.

**Applicable data keys:** 

- format

**Additional details for applicable data keys:**

Valid values for key "format":

- **chd** - CHD compression, typically used by disc-based systems such as PSP

- **rvz** - RVZ compression, specific to Dolphin-based systems such as GameCube

- **zip** - ZIP compression, compatible with many systems

- **all** - Will check all files for compatibility with all types of compression

Additional details on what systems are compatible with what compression formats can be found on the RetroDECK wiki.

Additional considerations:
Depending on the size of the library, this process can take a lot of time, so consider wrapping it in some kind of spinner so the user knows to wait.

## compressible_games - example request

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

## compressible_games - success response

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

## compressible_games - failure response

```

{
  "status": "error",
  "result": "the compressible games list could not be generated",
  "request_id": "<request_id>"
}

```


