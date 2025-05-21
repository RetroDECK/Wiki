# install

**API Request Group:** DO

**Description:**
This API call installs a specified RetroDECK package, such as the Steam Controller Profile. A list of available packages is maintained on the RetroDECK wiki.


**Applicable data keys:**

- **package_name** - The internal identifier of the package to be installed.

**Additional Notes** None

## install - example request

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

## install - success response


```

{
  "status": "success",
  "result": "<package_name> installed"
  "request_id": "<request_id>"
}

```

## install - failure response

```

{
  "status": "error",
  "result": "unknown package name: <package_name>"
  "request_id": "<request_id>"
}

```

