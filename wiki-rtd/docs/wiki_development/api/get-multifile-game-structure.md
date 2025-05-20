# multifile_game_structure

**API Request Group:** GET

**Description:**

This call will check for any common multi-file game structure issues and return an array of objects of any that are found. If none are found, the command will complete with a "success" status, if issues are found it will complete with an "error" status.

**Applicable data keys:** None

**Additional considerations:**

The output of this function is non-exhaustive and represents a best-effort to identify common multi-file game structure issues. Additional information regarding proper multi-file game strutures can be found on the RetroDECK wiki.


## multifile_game_structure - example request

```

{
  "action": "get",
  "request": "multifile_game_structure",
  "version": "1.0",
  "request_id": "<request_id>"
}

```


## multifile_game_structure - success response


```

{
  "status": "success",
  "result": "no multifile game structure issues found"
  "request_id": "<request_id>"
}

```

## multifile_game_structure - failure response

```

{
  "status": "error",
  "result": [
    {
      "incorrect_file": "<incorrect file path>"
    },
    {
      "incorrect_file": "<incorrect file path 2>"
    }
  ],
  "request_id": "<request_id>"
}

```
