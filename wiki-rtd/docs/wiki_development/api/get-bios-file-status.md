# bios_file_status

**API Request Group:** GET

**Description:**

This call will return an array of objects containing information regarding the state of all known BIOS files under the intention of this data being shown in some kind of menu list. The returned information includes BIOS file name, what systems the BIOS file applies to, if the BIOS file was found in the required location, if the BIOS file matches a known-good MD5 hash, a desription of the files use, what paths the file is expected at and a list of any known MD5 hashes for that specific file. The files being checked and all their related data comes from an internal RetroDECK database.

**Applicable data keys:** None

**Additional considerations:**

Depending on the number of BIOS files the user has, this process can take a lot of time, so consider wrapping it in some kind of spinner so the user knows to wait.

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

