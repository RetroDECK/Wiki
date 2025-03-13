# Launching Lutris & Steam Games from RetroDECK

This is a experiment made by the user **murkl**

## Prerequisites

**Information:**

This experiment requires the `flatpak-spawn` permission, which breaks the sandbox environment that RetroDECK operates in. Therefore, we do not recommend attempting this unless you are confident in your understanding of the process and its implications.

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

Make an empty file with the `<gamename>.desktop`.

**Example:** `UltimaI.desktop` and put it into the `retrodeck/roms/windows/` folder.

## How-to: Launch Lutris Games

### Step 1: Create an empty desktop file

First, create the `.desktop` file as mentioned above with the game name and put it in the `retrodeck/roms/windows/` folder.

### Step 2: Get Identifier and Internal ID

1. Open Lutris.
2. In Lutris, `Right Click` the game -> `Configure` and make a note of your `Internal ID` under `Identifier`.
3. Make a note of the `Identifier` as well.


**Example:** Ultima I

<img src="../lutris.png" width="800">

**Internal ID:** 2

**Identifier:** ultima-i

### Step 3: Populate the .desktop file

Open the `.desktop` file and populate it.

The files are different if you have the native version of Lutris installed or the Flatpak version. 

### Step 3a: Lutris (Native)

This for Lutris that is installed natively.

Copy this:

```
[Desktop Entry]
Type=Application
Name=NAMEHERE
Icon=lutris_IDENTIFIERHERE
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host lutris lutris:rungameid/INTERNALIDHERE
Categories=Game
```
Change the values of:

- **Name=** NAMEHERE
- **Icon=** lutris_IDENTIFIERHERE
- **Exec=** rungameid/INTERNALIDHERE

**Example: Ultima 1**

```
[Desktop Entry]
Type=Application
Name=Ultima I
Icon=lutris_ultima-i
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host lutris lutris:rungameid/2
Categories=Game
```

### Step 3b: Lutris (Flatpak)

This for Lutris that is installed via Flatpak.

Copy this:

```
[Desktop Entry]
Type=Application
Name=NAMEHERE
Icon=lutris_IDENTIFIERHERE
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host flatpak run net.lutris.Lutris lutris:rungameid/INTERNALIDHERE
Categories=Game
```
Change the values of:

- **Name=** NAMEHERE
- **Icon=** lutris_IDENTIFIERHERE
- **Exec=** rungameid/INTERNALIDHERE

**Example: Ultima 1**

```
[Desktop Entry]
Type=Application
Name=Ultima I
Icon=lutris_ultima-i
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host flatpak run net.lutris.Lutris lutris:rungameid/2
Categories=Game
```

## How-to: Launch Steam Games 

### Step 1: Create an empty desktop file

First, create the `.desktop` file as mentioned above with the game name and put it in the `retrodeck/roms/windows/` folder.


### Step 2: Get the Steam AppID

1. Open Steam.
2. In Steam, go to `Library` -> `Right Click` the game -> `Properties` -> `Updates`.
3. Make a note of the `AppID`.


**Example:** ASTLIBRA Revision

<img src="../steam.png" width="800">

**App ID:** 1718570


### Step 3: Populate the .desktop file

Open the `.desktop` file and populate it.

The files are different if you have the native version of Steam installed or the Flatpak version. 

### Step 3a: Steam (Native)

This for Steam that is installed natively.

Copy this:

```
[Desktop Entry]
Type=Application
Name=G NAMEHERE
Icon=steam_icon_APPIDHERE
Exec=flatpak-spawn --host steam -silent steam://rungameid/APPIDHERE
Categories=Game
```

Change the values of:

- **Name=** NAMEHERE
- **Icon=** steam_APPIDHERE
- **Exec=** rungameid/APPIDHERE

**Example: ASTLIBRA Revision**

```
[Desktop Entry]
Type=Application
Name=ASTLIBRA Revision
Icon=steam_icon_1718570
Exec=flatpak-spawn --host steam steam://rungameid/1718570
Categories=Game
```

### Step 3b: Steam (Flatpak)

This for Steam that is installed via Flatpak.

Copy this:

```
[Desktop Entry]
Type=Application
Name=G NAMEHERE
Icon=steam_icon_APPIDHERE
Exec=flatpak-spawn --host flatpak run com.valvesoftware.Steam -silent steam://rungameid/APPIDHERE
Categories=Game
```

Change the values of:

- **Name=** NAMEHERE
- **Icon=** steam_APPIDHERE
- **Exec=** rungameid/APPIDHERE

**Example: ASTLIBRA Revision**

```
[Desktop Entry]
Type=Application
Name=ASTLIBRA Revision
Icon=steam_icon_1718570
Exec=flatpak-spawn --host flatpak run com.valvesoftware.Steam -silent steam://rungameid/1718570
Categories=Game
```

## The Last Step: Launch the Games via RetroDECK & Scrape

After the `.desktop` files have been created and everything is working as expected, RetroDECK will recognize the `.desktop` file the next time you start it. The games will appear under the Windows tab in ES-DE. If you have named the games correctly, there is a good chance that the scraper will identify them.
