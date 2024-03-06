# RetroDECK Debug Mode

It's possible to enter a debug mode via the flatpak shell.

```
flatpak run --command=bash net.retrodeck.retrodeck
```

NOTE: on wayland in some cases it's needed to enter with the command above otherwise some emulators will not run:
```
flatpak run --command=sh --nosocket=fallback-x11 --socket=x11 net.retrodeck.retrodeck
```

### Launch ES-DE in Debug Mode:

```
es-de --debug --home /var/config/emulationstation

or

es-de --debug --home /var/config/ES-DE

```

### List runnable components in Debug Mode

You cam list all the available components via the command:

```
ls /app/bin
```

### How to run a component?

Just type the compoants name directly into the flatpak shell CLI.

Example:

- `retrodeck` launches full RetroDECK.

You can also launch specific components by running them, example:

- `retroarch` launches RetroArch.

This is useful when for example a game is not starting and you want the output printed in the terminal.

### Run a component with a specific game or content

The easiest way is to run the `retrodeck` command. Launch RetroDECK and go into the ES-DE interface and try to launch the game from there.
In the terminal ES-DE will spit out the total runnable path to that game or content.

