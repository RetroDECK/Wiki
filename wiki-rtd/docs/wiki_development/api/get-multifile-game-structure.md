# multifile_game_structure

**API Request Group:** GET

**Description:**

This API call checks for common issues in multi-file game structures and returns an array of objects describing any problems found. If no issues are detected, the call completes with a `success` status. If issues are found, it returns an `error` status.


**Applicable data keys:** None

**Additional Notes:**

- The output is a best-effort analysis and may not capture all possible issues.
- For detailed guidance on proper multi-file game structures, refer to the RetroDECK wiki.


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
