# cheevos_login

**API Request Group:** DO

**Description:**

This call will attempt to perform a RetroAchivements login with the provided information and return the supplied information from the RetroAchivements API, as well as a login timestamp. This information can then be used to enable RetroAchivements-related presets directly.

**Applicable data keys:**

- **username** - The RetroAchivements username to be used in the login attempt.
- **password** - The RetroAchivements password to be used in the login attempt.

**Additional considerations:**

If the login information provided is accepted by the RetroAchievements login system, the returned result will include a login token and timestamp, which most RA-capable components will require for the "cheevos" preset. That information can then be passed along to the "set preset_state" RetroDECK API call in the appropriate keys.
 
## cheevos_login - example request

```

{
  "action": "do",
  "request":"cheevos_login",
  "data": {
    "username": "<username>",
    "password": "<password>"
  },
  "version": "1.0",
  "request_id": "<request_id>"
}

```

## cheevos_login - success response


```

{
  "status": "success",
  "result": {
    "Success": true,
    "User": "<username>",
    "AvatarUrl": "https://media.retroachievements.org/UserPic/<username>.png",
    "Token": "<login token>",
    "Score": 0,
    "SoftcoreScore": 0,
    "Messages": 0,
    "Permissions": 1,
    "AccountType": "Registered",
    "Timestamp": "<login timestamp>"
  },
  "request_id": "<request_id>"
}

```


## cheevos_login - failure response


```

{
  "status": "error",
  "result": "login failed",
  "request_id": "<request_id>"
}

```
