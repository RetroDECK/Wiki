# Launching Heroic (Epic, GOG, Amazon) Games with RetroDECK

<img src="../../../wiki_images/logos/heroic-logo.png" width="100">

This experiment was initiated by the users **murkl** and **Daeymon**. Then later expanded upon by the RetroDECK Team. The goal was to explore the possibility of launching external desktop games and apps within RetroDECK.

**Note:** RetroDECK was never intended to be used in this manner, so things like inputs may work as expected.

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

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Desktop Roms Folder | `retrodeck/roms/desktop/`   |  |


## How-to: Make .desktop files

Make an empty file with the `<gamename>.desktop`.

**Example:** 

`Ultima I.desktop` and put it into the `retrodeck/roms/desktop/` folder.

## How-to: Launch Heroic Games 

#### Step 1: Create and move .desktop file from Heroic

1. Open Heroic.
2. Install the game .
3. Go to the `Library` -> `Your Game` -> Press the `Three Dotted Menu`.
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


## The Last Step: Launch the Games via RetroDECK & Scrape

<img src="../windows-es-de.png" width="100">

After the `.desktop` files have been created and everything is working as expected, RetroDECK will recognize the `.desktop` file the next time you start it. 

The games will appear under the Windows tab in ES-DE. If you have named the games correctly, there is a good chance that the scraper will identify them.
