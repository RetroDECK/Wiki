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


## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Desktop Roms Folder | `retrodeck/roms/desktop/`   |  |



## How-to: Make .desktop files

Make an empty file with the `<gamename>.desktop`.

**Example:** 

`Ultima I.desktop` and put it into the `retrodeck/roms/desktop/` folder.

## How-to: Launch Lutris Games

### Step 1: Create an empty desktop file

First, create the `.desktop` file as mentioned above with the game name and put it in the `retrodeck/roms/desktop/` folder.

### Step 2: Get Identifier and Internal ID

1. Open Lutris.
2. In Lutris, `Right Click` the game → `Configure` and make a note of your `Internal ID` under `Identifier`.
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

## How-to: Launch Steam Games 

### Step 1: Create an empty desktop file

First, create the `.desktop` file as mentioned above with the game name and put it in the `retrodeck/roms/desktop/` folder.


### Step 2: Get the Steam AppID

1. Open Steam.
2. In Steam, go to `Library` → `Right Click` the game → `Properties` → `Updates`.
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

**Example: ASTLIBRA Revision.desktop**

```
[Desktop Entry]
Type=Application
Name=ASTLIBRA Revision
Icon=steam_icon_1718570
Exec=flatpak-spawn --host steam -silent steam://rungameid/1718570
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

**Example: ASTLIBRA Revision.desktop**

```
[Desktop Entry]
Type=Application
Name=ASTLIBRA Revision
Icon=steam_icon_1718570
Exec=flatpak-spawn --host flatpak run com.valvesoftware.Steam -silent steam://rungameid/1718570
Categories=Game
```

## How-to: Launch Flatpak Games 

You can either copy and edit the desktop files or make your own.

<img src="../discover.png" width="800">

**Tips on Applications with Launchers:** 

If the application has a launcher and you don't want to boot into it. 

When editing the `Exec=` in the `.desktop` files, check the applications documentation if there is a way to launch it without the launcher via cli.

Add that to the `Exec=` command. 

**Example:** Steam uses `-silent` and Heroic `--no-gui`.

### Copy and Edit .desktop files (Recommended)

#### Step 1: Find the files

**Note:** All files here are symlinks, but the export folders contains them all in a conventient way.

Depending if you how you have installed the application they can either be under:

- **System Wide:** `/var/lib/flatpak/exports/share/applications/` 
- **Local User:** `~/.local/share/flatpak/exports/share/applications/`

#### Step 2: Show Target

`Right Click` on the symlinked `.desktop` file in the folder and press `Show Target`.

This will take you to the real `.desktop` shortcut.

Example `eu.vcmi.VCMI.desktop`:

- **System Wide:** `/var/lib/flatpak/app/eu.vcmi.VCMI/current/active/export/share/applications/`
- **Local User:** `~/.local/share/flatpak/app/eu.vcmi.VCMI/current/active/export/share/applications/`

#### Step 3: Copy the .desktop file

Copy the `.desktop` file to `retrodeck/roms/desktop/`

#### Step 4: Rename the file

Rename the file to something more fitting.

**Examples:**

`net.openra.OpenRA.desktop` → `OpenRA.desktop` or `Red Alert.desktop`

`eu.vcmi.VCMI.desktop` → `VCMI.desktop` or `Heroes of Might and Magic III.desktop`

#### Step 5: Edit the file

Open the `.desktop` file and edit the **Exec=** values so they are changed to `flatpak-spawn --host flatpak run`.

**Example VCMI.desktop:**

- **Before:** `Exec=/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=vcmilauncher eu.vcmi.VCMI`
- **After:** `Exec=flatpak-spawn --host flatpak run --branch=stable --arch=x86_64 --command=vcmilauncher eu.vcmi.VCMI`

### Make your own desktop files

#### Step 1: Create an empty desktop file

First, create the `.desktop` file as mentioned above with the game name and put it in the `retrodeck/roms/desktop/` folder.

#### Step 2: Get the Run Command and Full Flatpak Name.

**Find them on Desktop**

Note this was done in KDE

- `Right Click` in on the Application in the `Application Launcher Menu` and press `Edit Application`. 
- `Command-line arguments` should contain the `Full Flatpak Name` and `Run Command`.

**Find them on Flathub:**

- Go to [Flathub](https://flathub.org/).
- On flathub go to a the application you want to add, press the `Down Arrow` next to `Download Button` to get the `Run Command` and `Full Flatpak Name`.

**Example: OpenRA.desktop**

[OpenRA - Flathub](https://flathub.org/apps/net.openra.OpenRA)

<img src="../openra.png" width="800">

- **Run command:** flatpak run net.openra.OpenRA
- **Full Flatpak Name:** net.openra.OpenRA

### Step 3: Populate the .desktop file

Open the `.desktop` file and populate it.

Copy this:

```
[Desktop Entry]
Type=Application
Name=NAMEHERE
Icon=FULLFLATPAKNAMEHERE
Exec=flatpak-spawn --host flatpak run RUNCOMMMANDHERE
Categories=Game
```

Change the values of:

- **Name=** NAMEHERE
- **Icon=** FULLFLATPAKNAMEHERE
- **Exec=** RUNCOMMMANDHERE

**Example: OpenRA.desktop**

```
[Desktop Entry]
Type=Application
Name=OpenRA
Icon=net.openra.OpenRA
Exec=flatpak-spawn --host flatpak run net.openra.OpenRA
Categories=Game
```



## How-to: Launch Heroic Games 

#### Step 1: Create and move .desktop file from Heroic

1. Open Heroic.
2. Install the game .
3. Go to the `Library` → `Your Game` → Press the `Three Dotted Menu`.
4. Press `Add Shortcut`.
5. A shortcut will now be created on the Desktop.
6. Move or copy that to `retrodeck/roms/desktop/`.

<img src="../heroic-shortcut.png" width="800">

### Step 2: Edit the .desktop file

Open the `.desktop` file and edit it.

- **Exec=** Add the `flatpak-spawn --host flatpak run com.heroicgameslauncher.hgl --no-gui --no-sandbox` instead of `xdg-open`.

**Example: Heroic Flatpak - Flight of the Amazon Queen.desktop**

```
[Desktop Entry]
Name=Flight of the Amazon Queen
Exec=flatpak-spawn --host flatpak run com.heroicgameslauncher.hgl --no-gui --no-sandbox heroic://launch?appName=1207659723
Terminal=false
Type=Application
Icon=/home/deck/Games/Heroic/Flight of the Amazon Queen/goggame-1207659723.ico
Categories=Game;
```

## How-to: Launch Prism Launcher - Minecraft Instances

### Smooth Settings

For a smoother experience enable these settings in Prism Launcher:

1. Open Prism Launcher.
2. Go to `Settings` → `Minecraft`
3. Enable ` Start Minecraft maximized` , ` Close Launcher after game window opens` and ` Quit Launcher after game window closes`.
4. Exit Settings

<img src="../prism-settings.png" width="800">

### Step 1: Create .desktop file from Prism Launcher

1. Open Prism Launcher.
2. Make sure you are logged in.
3. Install a game (specific version or a modpack).
4. `Right Click` the game → `Create Shortcut`.
5. Save the shortcut to: `retrodeck/roms/desktop/`.

<img src="../prism-shortcut.png" width="800">

### Step 2: Edit the .desktop file

Open the `.desktop` file and edit it.

- **Exec=** Add the ``"flatpak-spawn" --host'` in front of `"flatpak" 'run'`.

**Example: Original - Fabulously Optimized**


```
[Desktop Entry]
Type=Application
Categories=Game;ActionGame;AdventureGame;Simulation
Exec="flatpak" 'run' 'org.prismlauncher.PrismLauncher' '--launch' 'Fabulously Optimized'
Name=Fabulously Optimized
Icon=/var/home/deck/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/instances/Fabulously Optimized/icon.png
```

**Example: Edited - Fabulously Optimized**

```
[Desktop Entry]
Type=Application
Categories=Game;ActionGame;AdventureGame;Simulation
Exec="flatpak-spawn" --host "flatpak" 'run' 'org.prismlauncher.PrismLauncher' '--launch' 'Fabulously Optimized'
Name=Fabulously Optimized
Icon=/var/home/deck/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/instances/Fabulously Optimized/icon.png
```

## The Last Step: Launch the Games via RetroDECK & Scrape

<img src="../windows-es-de.png" width="100">

After the `.desktop` files have been created and everything is working as expected, RetroDECK will recognize the `.desktop` file the next time you start it. 

The games will appear under the Windows tab in ES-DE. If you have named the games correctly, there is a good chance that the scraper will identify them.
