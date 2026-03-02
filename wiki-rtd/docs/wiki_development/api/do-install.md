# install

**API Request Group:** DO

### Description

This API call installs a specified RetroDECK package, such as the Steam Controller Profile. A list of available packages is maintained on the RetroDECK wiki.


### Applicable Data Keys

- **package_name** - The internal identifier of the package to be installed.

### Additional Notes 

None


## Examples: install

### Example Request: install

```

{
  "action": "do",
  "request":"install",
  "data": {
    "package_name": "<package_name>"
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```

### Success Response: install


```

{
  "status": "success",
  "result": "<package_name> installed"
  "request_id": "<request_id>"
}

```

### Failure Response: install

```

{
  "status": "error",
  "result": "unknown package name: <package_name>"
  "request_id": "<request_id>"
}

```

