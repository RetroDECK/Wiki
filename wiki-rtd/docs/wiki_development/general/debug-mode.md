# RetroDECK: Debugging

<img src="../../../wiki_icons/pixelitos/folder-red-android.png" width="75">

---

## Launch RetroDECK with debug log level

This command sets Log Level to Debug and gives you a as much data in the logs and terminal as possible.

```
flatpak run net.retrodeck.retrodeck --debug
```

---


## Flatpak CLI Shell: Debug Mode

You can use the Flatpak shell for debugging individual components from bash in RetroDECK by using the following command:

```
flatpak run --command=bash net.retrodeck.retrodeck --debug
```

On Wayland it is in some cases needed to add additional parameters to get all the components GUI's to show up that have not yet transitioned into Wayland:

```
flatpak run --command=sh --nosocket=fallback-x11 --socket=x11 net.retrodeck.retrodeck --debug
```

This is what we refer to as `Debug Mode`.



### How to run retrodeck from shell?

Just type `retrodeck` and it launches full RetroDECK.

### How to run a component?

You can also launch specific components by typing `retrodeck --open <componentname>`


**Example:**

`retrodeck --open retroarch` launches RetroArch.

Typing retrodeck --open without a component will give you a list of currently installed components.

---

## Flatpak CLI Shell Folders Paths

`/var` and `/app` links to other folders then the normal Linux host system.

| **Sandbox Path** | **Corresponding Host Path** | **Description** |
|------------------|-----------------------------|-----------------|
| `/app` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/`<br>or<br>`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | Read‑only runtime environment supplied by the Flatpak package. Contains the executable and its supporting files: `bin`, `lib`, `libexec`, `manifest-base-1.json`, `manifest.json`, `retrodeck`, `share`, `tools`. |
| `/var` | `~/.var/app/net.retrodeck.retrodeck/ cache, config, data`, `db`, `home`, `mnt`, `opt`, `run`, `srv`, `tmp` | Writable portion of the sandbox. |

---

## Launch ES-DE in Debug Mode:

From the RetroDECK Debug Mode use the following command to open ES-DE in Debug Mode.

```
es-de --debug --home /var/config/
```

---


## Debugging a specific game via ES-DE in Debug Mode

The easiest way is to run:


```
retrodeck --open es-de --debug --home /var/config/
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

This is the full-command to launch the file

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

---

