# bios_file_status

**API Request Group:** GET

**Description:**


This API call retrieves an array of objects representing the current status of all known BIOS files. The data is intended for display in a menu or list format and includes:

- BIOS file name
- Associated systems
- Presence in the expected location
- MD5 hash match status
- Description of the file’s purpose
- Expected file paths
- List of known MD5 hashes

All information is sourced from the internal RetroDECK BIOS database.


**Applicable data keys:** None

**Additional Notes**

The process may take a significant amount of time depending on the number of BIOS files present. It is recommended to use a loading spinner or similar UI element to indicate progress to the user.


## bios_file_status - example request

```

{
  "action": "get",
  "request": "bios_file_status",
  "version": "1.0",
  "request_id": "<request_id>"
}

```

## bios_file_status - successful response

```

{
  "status": "success",
  "result": [
    -- additional output trimmed --
    {
      "file": "tc2068-0.rom",
      "systems": "zxspectrum",
      "file_found": "No",
      "md5_matched": "No",
      "description": "ZX Spectrum BIOS",
      "paths": "/home/deck/retrodeck/bios",
      "known_md5_hashes": "55d462fccc6c536037404ef4ced08bec"
    },
    {
      "file": "tc2068-1.rom",
      "systems": "zxspectrum",
      "file_found": "No",
      "md5_matched": "No",
      "description": "ZX Spectrum BIOS",
      "paths": "/home/deck/retrodeck/bios",
      "known_md5_hashes": "575d203c6e15e679fba0b73f854ec7a2"
    }
  ]
  "request_id": "<request_id>"
}

```

## bios_file_status - failure response


```

{
  "status": "error",
  "result": {
    "response": "the bios file status could not be checked"
  },
  "request_id": "<request_id>"
}

```

