# Launching Desktop Games & Apps with RetroDECK

This experiment was initiated by the users **murkl** and **Daeymon**. Then later expanded upon by the RetroDECK Team. The goal was to explore the possibility of launching external desktop games and apps within RetroDECK.

**Note:** RetroDECK was never intended to be used in this manner, so things like inputs may work as expected.

![type:video](vcmi-retrodeck.mp4)

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

## Prerequisites

### Flatpak Spawn Permission

**Information:**

This experiment requires the `flatpak-spawn` permission, which breaks the sandbox environment that RetroDECK operates in. Therefore, we do not recommend attempting this unless you are confident in your understanding of the process and its implications.

You can enable it by running this command in the terminal.

```
flatpak override --user --talk-name=org.freedesktop.Flatpak net.retrodeck.retrodeck
```

### Add RetroDECK to Steam

We also recommend that you add RetroDECK to Steam to utilize Steam Input as there is a higher chance of inputs working from the external source.

Also some RetroDECK built-in hotkeys in the radials like `Alt+F4` might help you close windows.


## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Windows Roms Folder | `retrodeck/roms/windows/`   |  |



## How-to: Make .desktop files

Make an empty file with the `<gamename>.desktop`.

**Example:** 

`Ultima I.desktop` and put it into the `retrodeck/roms/windows/` folder.

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

**Example: Ultima I.desktop**

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

**Example: Ultima I.desktop**

```
[Desktop Entry]
Type=Application
Name=Ultima I
Icon=lutris_ultima-i
Exec=env LUTRIS_SKIP_INIT=1 flatpak-spawn --host flatpak run net.lutris.Lutris lutris:rungameid/2
Categories=Game
```


### The Last Step: Launch the Games via RetroDECK & Scrape

<img src="../windows-es-de.png" width="100">

After the `.desktop` files have been created and everything is working as expected, RetroDECK will recognize the `.desktop` file the next time you start it. 

The games will appear under the Windows tab in ES-DE. If you have named the games correctly, there is a good chance that the scraper will identify them.
