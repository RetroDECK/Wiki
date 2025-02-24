# Steam Input - Development

W.I.P 

**Note:** 

Applications that are not native on Steam gets a random AppID number.

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Steam Default Templates Folder |`~/.steam/steam/controller_base/templates/` |                           |  
| Application Templates Folder |`~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/`         | Temporary changes are stored here |
| Steam Binding Icons Folder |`~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` |                               |                             |  

## Data Mangement 


	"creator"		""
	"progenitor"		""
	"url"		""
	"export_type"		""

Should be empty as it is not relevant to the usecase of RetroDECK. Neither should the creator be shown as that hardlinks to the real SteamID of the person that makes the changes.

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


## File Naming Standard

The .vdf file will always have the same filename is thus overwritten when a new version comes out.

The naming syntax is:

```
RetroDECK_controller_<OGSystem>_<controllername>_<template type>.vdf
```

**Example:** 

```
RetroDECK_controller_ps5_dualsense_simple.vdf
```

This is the DualSense for the PS5 using the Simple RetroDECK Template.

Note:

Only the Steam Deck have two seperate templates shipped so far. 

## Versioning and Template Naming

Inside the config you want to manipulate the following fields

``` 
"title"		"RetroDECK: DualSense v.1b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.1" <- Copy from Name
"major_revision"		"1" <- Should correspond to the major version of the template
"minor_revision"		"0" <- Should correspond to the minor version of the template
```

### What constitutes a new major version?

Adding new menus or submenus to the profiles. 

### What constitutes a new minor version?

Bugfixes

### Examples

We add a new submenu to the Steam Controller - Gordon profile. This corresponds to a major release to we change all the fields so it matches the version of 2.0.


```
"title"		"RetroDECK: DualSense v.2b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.2" <- Copy from Name
"major_revision"		"2" <- Should correspond to the major version of the template
"minor_revision"		"0" <- Should correspond to the minor version of the template
```

While a 2.1 with a bugfix would be


```
"title"		"RetroDECK: DualSense v.2.1b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.2.1" <- Copy from Name
"major_revision"		"2" <- Should correspond to the major version of the template
"minor_revision"		"1" <- Should correspond to the minor version of the template
```

3.0 

```
"title"		"RetroDECK: DualSense v.3b" <- The name shows the version number
"description"		"RetroDECK: PS5 - DualSense v.3b" <- Copy from Name
"major_revision"		"3" <- Should correspond to the major version of the template
"minor_revision"		"0" <- Should correspond to the minor version of the template
```

### Steam Deck Example

The Steam Deck is so far the only template that ships with two diffrent templates

```
"title"		"RetroDECK: Steam Deck - Neptune v.1.1b FULL"
"description"		"RetroDECK: Steam Deck - Neptune v.1.1b FULL"
	
"title"		"RetroDECK: Steam Deck - Neptune v.1b SIMPLE"
"description"		"RetroDECK: Steam Deck - Neptune v.1b SIMPLE"

```
Then we add the template type by the end of the title and description.
