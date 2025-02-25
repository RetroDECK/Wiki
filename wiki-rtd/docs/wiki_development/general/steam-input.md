# Steam Input - Development

**Note:** 

Applications that are not native on Steam get a random AppID number.

## Steam Folder structure

| Type    | Folder                 | Comment     | 
|  :---:  | :---:                  | :---:     |
| Steam Default Templates Folder |`~/.steam/steam/controller_base/templates/` |                           |  
| Application Templates Folder |`~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/` | Temporary changes are stored here |
| Steam Binding Icons Folder |`~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` |                               |                             |  



## File Naming Standard

The .vdf file will always have the same filename and is thus overwritten when a new version comes out in the: 

`~/.steam/steam/controller_base/templates/` folder.


**The naming syntax is:**

```
RetroDECK_controller_<SystemSource>_<controllername>_<template_type>.vdf

<SystemSource> <- Original System or Source where the controller comes from.
<controllername> <- The Name of the Controller in Steam
<template_type> <- The type of RetroDECK Template

```



**Example:** 

```
RetroDECK_controller_ps5_dualsense_simple.vdf

<SystemSource> <- ps5
<controllername> <- dualsense
<template_type> <- simple

```

This is the DualSense for the PS5 using the Simple RetroDECK Template.


## .vdf Data Mangement 

The following should be empty as it is not relevant to the use case of RetroDECK. Neither should the creator be shown as that hardlinks to the real SteamID of the person that makes the changes.


```
"creator"		""
"progenitor"		""
"url"		""
"export_type"		""
```

**Example:**

```

"controller_mappings"
{
"version"		"3"
"revision"		"73"
"title"		"RetroDECK: Steam Controller - Gordon v.1b"
"description"		"RetroDECK: Steam Controller - Gordon v.1b"
"creator"		""
"progenitor"		""
"url"		""
"export_type"		""
"controller_type"		"controller_steamcontroller_gordon"
"controller_caps"		"2179063"
"major_revision"		"1"
"minor_revision"		"0"
"Timestamp"		"-596696880"
"actions"
{ 

```

## Versioning and Template Naming

Inside the config you want to manipulate the following fields

``` 
"title"		"RetroDECK: DualSense v.1b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.1" <- Copy from Name
"major_revision"		"1" <- Should correspond to the major version of the template
"minor_revision"		"0" <- Should correspond to the minor version of the template
```

### What constitutes a new major version?

- Adding new menus or submenus
- Major function changes
- Adding new functions

### What constitutes a new minor version?

- Bugfixes
- Minor tweaks
- Icon Fixes
- Moving buttons around. 

### Examples

**2.0**

We add a new submenu to the RetroDECK: DualSense template.


```
"title"		"RetroDECK: DualSense v.2b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.2" <- Copy from Name
"major_revision"		"2" <- Should correspond to the major version of the template
"minor_revision"		"0" <- Should correspond to the minor version of the template
```

**2.1 with a bugfix**


```
"title"		"RetroDECK: DualSense v.2.1b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.2.1" <- Copy from Name
"major_revision"		"2" <- Should correspond to the major version of the template
"minor_revision"		"1" <- Should correspond to the minor version of the template
```

**3.0**

```
"title"		"RetroDECK: DualSense v.3b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.3b" <- Copy from Name
"major_revision"		"3" <- Should correspond to the major version of the template
"minor_revision"		"0" <- Should correspond to the minor version of the template
```

### Steam Deck Example

The Steam Deck is so far the only device that ships with two different templates:


```
"title"		"RetroDECK: Steam Deck - Neptune v.1.1b FULL"
"description"		"RetroDECK: Steam Deck - Neptune v.1.1b FULL"
	
"title"		"RetroDECK: Steam Deck - Neptune v.1b SIMPLE"
"description"		"RetroDECK: Steam Deck - Neptune v.1b SIMPLE"

```

We add the template type by the end of the title and description.

## FAQ

### What Controllers does Steam Input Support?

| Manufacturer | System              | Controller                | .vdf file                                 | RetroDECK Support | Comment |
|--------------|---------------------|---------------------------|-------------------------------------------|------------|---------|
| 3rd Party / Generic    | Many      |                           | `controller_generic.vdf`                  | Yes        |         |
| Android      | Cellphones / Tables | Touchscreen               | `controller_android.vdf`                  | No         |         |
| Apple        | Cellphones / Tables | Touchscreen               | `controller_apple.vdf`                    | No         |         |
| Generic Mobile| Cellphones / Tables | Touchscreen               | `controller_mobile_touch.vdf`            | No         |         |
| Microsoft    | Xbox 360            | Xbox 360 Controller       | `controller_xbox360.vdf`                  | Yes        |         |
| Microsoft    | Xbox One            | Xbox One Controller       | `controller_xboxone.vdf`                  | Yes        |         |
| Microsoft    | Xbox Series X       | Xbox Series X Controller  | `controller_xboxone.vdf`                  | Yes        |         |
| Nintendo     | Nintendo Switch     | Nintendo Switch Pro       | `controller_switch_pro.vdf`               | Yes        |         |
| Nintendo     | Nintendo Switch     | Switch Joycons            | `controller_switch_joycon_left.vdf` and `controller_switch_joycon_right.vdf` | No         |         |
| Sony         | PlayStation 5       | DualSense                 | `controller_ps5.vdf`                      | Yes        |         |
| Sony         | PlayStation 3       | DualShock 3               | `controller_ps3.vdf`                      | Yes        |         |
| Sony         | PlayStation 4       | DualShock 4               | `controller_ps4.vdf`                      | Yes        |         |
| Valve        | Steam               | Steam Controller          | `controller_steamcontroller_gordon.vdf`   | Yes        |         |
| Valve        | Steam Deck          | Steam Deck Controller     | `controller_neptune.vdf`                  | Yes        |         |

### How does RetroDECK Inject the Templates and Custom Icons?

If the user chooses to install the Steam Input Templates for RetroDECK:

- Templates are injected into: `~/.steam/steam/controller_base/templates/`
- Icons are injected into: `~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` 

### What Happens when you enable a Template from Steam? 

When a template is selected from the Template Menu in Steam, it is copied from `~/.steam/steam/controller_base/templates/` to `~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/` with the same name.

### What happens when I make changes to a template?

If the user or developer makes changes to the template via the Steam Input GUI, a new template .vdf file is created in `~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/`.

The name is based on the device used.

**Example:**

If you are editing the RetroDECK Steam Deck template, a new template with the edits will be called `controller_neptune.vdf`.
