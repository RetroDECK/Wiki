# RetroDECK CLI Commmands & Arguments

This page showcases many of the commands and arguments you can run via CLI.

## How do I run RetroDECK CLI arguments?

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

### General CLI argument list

`-h` or `--help` - Prints all the available arguments.

`-v` or `--version` - Prints the installed RetroDECK version

`--info-msg` - Prints all the folder paths and various config information.

`--configurator` - Starts the RetroDECK configurator

`--compress` - Compresses a specific file to .chd format. It supports .cue .iso and .gdi formats. You need to add the filepath to the file for it to work.

`--reset-component` - Opens a new input where you can input an argument to reset a specific feature like emulators or other software to the default settings. You will get a list of all available components

`--reset-retrodeck` - Resets the entirety of RetroDECK to default settings!

## Other commands

### Install RetroDECK from CLI

If you want to install RetroDECK from CLI type:


**Install as a user app:**

```
flatpak install --user -y net.retrodeck.retrodeck
```

**Install as a system app:**


```
flatpak install --system -y net.retrodeck.retrodeck
```

### Uninstall RetroDECK from CLI

If you want to uninstall RetroDECK from CLI type:

```
flatpak remove -y net.retrodeck.retrodeck
```

### Update all flatpaks from CLI

If you want to update all installed flatpaks from CLI type:

```
flatpak update -y
```


### Update only RetroDECK from CLI

If you just want to update RetroDECK type:

```
flatpak update net.retrodeck.retrodeck -y
```

## Development CLI Arguments

**Note:** that these arguments are for development and testing only and should not be used by a normal user.

`--test-upgrade <version>` - Post-update test command for cooker builds and debugging. Should not be used

`uuddlrlrstart` - Enables the `Developer Options Menu` and `Experimental Features`

### Post-update test command

If you want to trigger the upgrade script again between a version upgrade to try something out.

Do the following command

`flatpak run net.retrodeck.retrodeck --test-upgrade <version>`

Example:

`flatpak run net.retrodeck.retrodeck --test-upgrade 0.8.0b`

This will trigger all the post-updates from `0.8.0b` to the current version you got installed.
