# RetroDECK CLI Commmands

## How do I run RetroDECK CLI commands?

Open a Linux terminal on your desktop (on the Steam Deck you need to be in desktop mode). Depending on what terminal application you have installed the naming of the application can be different.<br>

In Linux distributions that uses KDE desktop environment as well as the Steam Deck; the default application is called _Konsole_.
<br>
The default command to run retrodeck options and arguments is:

```
flatpak run [FLATPAK-RUN-OPTION] net.retrodeck.retrodeck [ARGUMENTS]
```

Where `[FLATPAK-RUN-OPTION]` is replaced by a flatpak run option (if there is one) and `[ARGUMENTS]` is replaced by arguments.

**Example:**

This syntax runs the `--reset-all` argument that resets the application to default settings.

```
flatpak run net.retrodeck-retrodeck --reset-all
```

Where the argument `--reset-all` replaced `[ARGUMENTS]` and `[FLATPAK-RUN-OPTION]`was not needed to it was removed.

## CLI argument list

`-h` or `--help` - Prints all the available arguments.

`-v` or `--version` - Prints the installed RetroDECK version

`--info-msg` - Prints all the folder paths and various config information.

`--configurator` - Starts the RetroDECK configurator

`--compress` - Compresses a specific file to .chd format. It supports .cue .iso and .gdi formats. You need to add the filepath to the file for it to work.

`--reset-component` - Opens a new input where you can input an argument to reset a specific feature like emulators or other software to the default settings. You will get a list of all available components

`--reset-retrodeck` - Resets the entirety of RetroDECK to default settings!

## General flatpak commands
<br>
Here follows some general flatpak commands that could be useful: <br>


## Install RetroDECK from CLI

If you want to install RetroDECK from CLI type:

```
flatpak install Flathub net.retrodeck.retrodeck
```

### Update all flatpaks from CLI

If you want to update all installed flatpaks from CLI type:<br>
```
flatpak update
```

Then answer `y` on the input prompt.

### Update only RetroDECK from CLI

If you just want to update RetroDECK type: <br>

```
flatpak update net.retrodeck.retrodeck
```

Then answer `y` on the input prompt.
