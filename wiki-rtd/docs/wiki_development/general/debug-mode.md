# RetroDECK: Debugging

## Debug Log

This command gives you a more in-depth log and terminal output:

```
flatpak run net.retrodeck.retrodeck --debug
```

Or use the Configurator to change the Log Level to Debug.

## Flatpak Shell: Debug Mode

You can use the Flatpak shell for debugging individual components from bash in RetroDECK by using the following command:

```
flatpak run --command=bash net.retrodeck.retrodeck --debug
```

On Wayland it is in some cases needed to add additional parameters to get all the components GUI's to show up that have not yet transitioned into Wayland:

```
flatpak run --command=sh --nosocket=fallback-x11 --socket=x11 net.retrodeck.retrodeck --debug
```

---

## Launch ES-DE in Debug Mode:

From the RetroDECK Debug Mode use the following command to open ES-DE in Debug Mode.

```
es-de --debug --home /var/config/
```

---

## List runnable components in Debug Mode

RetroDECK consists of a variety of features all called components.

These consists of emulators, game engines,  other software or functions.

You can list all the available components via the command:

```
ls /app/bin
```

---

### How to run a component?

Just type the compoants name directly into the flatpak shell CLI.

Example:

- `retrodeck` launches full RetroDECK.

You can also launch specific components by running them, example:

- `retroarch` launches RetroArch.

This is useful when for example a game is not starting and you want the output printed in the terminal.

---

## Run a component with a specific game or content

The easiest way is to run:


```
es-de --debug --home /var/config/
```

Then start or try to start the game or content you want to debug.

ES-DE will spit out two important values  `Raw emulator launch command` & `Expanded emulator launch command`.


###  Raw emulator launch command

This tell you the dynamic pathing to the core file + rom file.

Example output of amstrad game being launch via the RetroArch core:

```
Raw emulator launch command:
Debug:
%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/cap32_libretro.so %ROM%
```

This tells that the Emulator that is launched is retroarch and the core is cap32 via the selected `%ROM%`


### Expanded emulator launch command:

This is the fullcommand to launch the file

Example output of the game above, a game called Dank Rider:

```
Expanded emulator launch command:
Info:
/app/bin/retroarch -L /app/share/libretro/cores/cap32_libretro.so /home/deck/retrodeck/roms/amstradcpc/1001\ BC\ (1984)(Dank Rider)(fr).zip
```

### Deeper per game / content debugging

If we want to debug a game or content copy and run the full `Expanded emulator launch command` from above.

Example debugging of Dank Rider:

```
/app/bin/retroarch -L /app/share/libretro/cores/cap32_libretro.so /home/deck/retrodeck/roms/amstradcpc/1001\ BC\ (1984)(Dank Rider)(fr).zip
```

This will give you the raw RetroArch output.
