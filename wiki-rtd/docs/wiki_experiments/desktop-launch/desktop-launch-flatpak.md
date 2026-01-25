# Launching Flatpak Games & Apps with RetroDECK

<img src="../../../wiki_images/logos/flatpak-logo.png" width="100">

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

## The Last Step: Launch the Games via RetroDECK & Scrape

<img src="../windows-es-de.png" width="100">

After the `.desktop` files have been created and everything is working as expected, RetroDECK will recognize the `.desktop` file the next time you start it. 

The games will appear under the Windows tab in ES-DE. If you have named the games correctly, there is a good chance that the scraper will identify them.
