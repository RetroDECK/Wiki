# cheevos_login

**API Request Group:** DO

### Description

This API call attempts to authenticate a user with RetroAchievements using the provided credentials. Upon successful login, it returns user information from the RetroAchievements API along with a login timestamp. This data can be used to activate RetroAchievements-related presets.

### Applicable Data Keys

- **username** - The RetroAchivements username to be used in the login attempt.

- **password** - The RetroAchivements password to be used in the login attempt.

### Additional Notes

If the login is successful, the response will include a login token and timestamp. These are essential for enabling the `cheevos` preset in RA-compatible components. The token and timestamp should be passed to the set `preset_state` endpoint of the RetroDECK API using the appropriate keys.
 
## Examples: cheevos_login

### Example Request: cheevos_login


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

### Success Response: cheevos_login

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


### Failure Response: cheevos_login


```

{
  "status": "error",
  "result": "login failed",
  "request_id": "<request_id>"
}

```
