# Experiment: Launching Lutris & Steam Games from RetroDECK

This is a experiment made by the user **Muraki**

## Prerequisites

**Information:**

This experiment requires the **flatpak-spawn** permission and thus breaks the sandbox RetroDECK is in. We do not recommend people to do this, unless they know what they are doing. 

### Flatpak Spawn Permission

You can enable it by running this command in the terminal.

```
flatpak override --user --talk-name=org.freedesktop.Flatpak net.retrodeck.retrodeck
```

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Windows Roms Folder | `retrodeck/roms/windows/`   |  |



## How-to Make .desktop files

Make an empty file with the `<gamename>.desktop`

**Example:** 

`UltimaI.desktop` and put it into the `retrodeck/roms/windows/` folder

## Lutris .desktop file

1. First create the .desktop file as said above.
2. Get your `Internal ID` for the game by opening Lutris.
3. In Lutris `Right Click` the game -> `Configure` and make a note of your `Internal ID` under `Identifier`. 

<img src="../lutris.png" width="500">

Find your gameID

[Desktop Entry]
Type=Application
Name=Days Gone
Icon=lutris_days-gone
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host lutris lutris:rungameid/11
Categories=Game

### Steam Desktop File

Example desktop file (for native lutris installation) placed in retrodeck/roms/windows:

[Desktop Entry]
Type=Application
Name=Days Gone
Icon=lutris_days-gone
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host lutris lutris:rungameid/11
Categories=Game

By the way, this is the same way i start steam (native steam installation) games but with command Exec=flatpak-spawn --host steam steam://rungameid/274190
