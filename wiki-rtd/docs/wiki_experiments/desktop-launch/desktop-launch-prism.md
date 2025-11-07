# Launching Prism Launcher - Minecraft Games with RetroDECK

<img src="../../../wiki_images/logos/prismlauncher-logo.png" width="100">

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

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Windows Roms Folder | `retrodeck/roms/windows/`   |  |

## How-to: Launch Prism Launcher - Minecraft Instances

### Smooth Settings

For a smoother experience enable these settings in Prism Launcher:

1. Open Prism Launcher.
2. Go to `Settings` -> `Minecraft`
3. Enable ` Start Minecraft maximized` , ` Close Launcher after game window opens` and ` Quit Launcher after game window closes`.
4. Exit Settings

<img src="../prism-settings.png" width="800">

### Step 1: Create .desktop file from Prism Launcher

1. Open Prism Launcher.
2. Make sure you are logged in.
3. Install a game (specific version or a modpack).
4. `Right Click` the game -> `Create Shortcut`.
5. Save the shortcut to: `retrodeck/roms/windows/`.

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

## The Last Step: Launch the Games via RetroDECK 

<img src="../windows-es-de.png" width="100">

After the `.desktop` files have been created and everything is working as expected, RetroDECK will recognize the `.desktop` file the next time you start it. 

The games will appear under the Windows tab in ES-DE. 

## Minecraft Tips

### Controlify (Controller support)

For a seamless experince on a handheld gaming device use the mod:

[Controlify)](https://modrinth.com/mod/controlify)

You can manually add it to your modpacks via (but more then often its already included).


### Minecraft JVM Arguments & Optimizations

[Minecraft JVM Arguments](https://github.com/Mukul1127/Minecraft-Java-Flags) 

Mukul1127 has created a great GitHub page for various Java versions JVM arguments and Optimizations on how to make your Minecraft Java experience more performanant. 

These can be added to Prism Launcher per Minecraft instance or Globally under `Settings` -> `Java` -> `JVM arguments`.
