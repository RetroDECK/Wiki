# retrodeck_settings

**API Request Group:** GET

**Description:**

This call will return all the current settings in the retrodeck.cfg config file. This will include internal paths to locations like the ROMs folder, the Saves folder, the BIOS folder etc. As these locations can be somewhat arbitrary, this is a useful call if the client is planning to reference them directly later. The output will also contain all of the internal RetroDECK setting options (such as logging level) as well as the current state for every preset for every component.

**Applicable data keys:** None

**Additional considerations:** None

## retrodeck_settings - example request

```

{
  "action": "get",
  "request": "retrodeck_settings",
  "version": "1.0",
  "request_id": "<request_id>"
}

```


## retrodeck_settings - success response


```

{
  "status": "success",
  "result": {
    "version": "<some_version>",
    "paths": {
      "rdhome": "/home/deck/retrodeck",
      "roms_folder": "/home/deck/retrodeck/roms",
      "saves_folder": "/home/deck/retrodeck/saves",
      "states_folder": "/home/deck/retrodeck/states",
      "shaders_folder": "/home/deck/retrodeck/shaders",
      "bios_folder": "/home/deck/retrodeck/bios",
      "backups_folder": "/home/deck/retrodeck/backups",
      "media_folder": "/home/deck/retrodeck/ES-DE/downloaded_media",
      "themes_folder": "/home/deck/retrodeck/ES-DE/themes",
      "logs_folder": "/home/deck/retrodeck/logs",
      "screenshots_folder": "/home/deck/retrodeck/screenshots",
      "mods_folder": "/home/deck/retrodeck/mods",
      "texture_packs_folder": "/home/deck/retrodeck/texture_packs",
      "borders_folder": "/home/deck/retrodeck/borders",
      "cheats_folder": "/home/deck/retrodeck/cheats",
      "sdcard": "/some/other/path"
    },
    "options": {
      "power_user_warning": "false",
      "desktop_mode_warning": "true",
      "low_space_warning": "false",
      "update_check": "true",
      "update_repo": "",
      "branch": "",
      "update_ignore": "",
      "cloud_saves": "false",
      "multi_user_mode": "false",
      "ask_default_user": "true",
      "default_user": "",
      "developer_options": "true",
      "akai_ponzu": "false",
      "cheevos_login": "false",
      "font": "1",
      "kiroi_ponzu": "false",
      "logging_level": "debug",
      "portmaster_reload_esde": "true",
      "portmaster_show": "false",
      "sound_effects": "true",
      "steam_sync": "true",
      "volume_effects": "10"
    },
    "presets": {
      "cheevos": {
        "ppsspp": "true",
        "retroarch": "true"
      },
      "cheevos_hardcore": {
        "ppsspp": "false",
        "retroarch": "false"
      },
      "borders": {
        "retroarch.cores": {
          "snes9x-current_libretro": "false",
          "gambatte_libretro": "false"
        }
      },
      "widescreen": {
        "retroarch.cores": {
          "snes9x-current_libretro": "false"
        }
      },
      "rewind": {
        "retroarch.cores": {
          "gambatte_libretro": "false"
        }
      }
    }
  },
  "request_id": "<request_id>"
}
Failure response:
{
  "status": "error",
  "result": "the retrodeck config file could not be read",
  "request_id": "<request_id>"
}

```

