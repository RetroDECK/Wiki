# Known issues

What follows is a list of known issues.
For a list of reported bugs please check here on github: [RetroDECK issues](https://github.com/XargonWan/RetroDECK/issues?q=is%3Aissue+is%3Aopen+label%3A%22Bug+%F0%9F%95%B7%EF%B8%8F%22)

## Emulator / Engine Issues

- `Duckstation` memory cards folders are not created making memory cards not work (default for PSX is RetroArch - Swanstation). The path is:`/retrodeck/saves/psx/duckstation/memcards/` this problem can be solved by manually creating the folders.

- `Linux Desktop: Wayland` Several emulators do not work in `Wayland` and we recommend using `X11` until those issues are fixed either by us or upstream.

- `PPSSPP` Retroachievements is in the latest version, you can login / logout / enable hardcore mode normally from the emulators interface. It is right now not configurable in the Configurator (as it works a bit differently than the other emulators), we hope to have a solution for it later.

- `RetroArch: Gambatte` Quitting the core with the `Quit` radial function makes the core swap the palette while playing GB.

- `RetroArch` Borders are in some few cases disappearing in the latest RetroArch version. A workaround is to reset RetroArch from the Configurator.

## External Controller issues

### Known Issues: External Controllers - Steam Deck

- Sometimes the emulators / engines gets confused on what controller is player 1 and takes the docked Steam Deck as player 1 and not the external contrller. You can solve this by going into the Reorder Controllers interface in Steam and try switching between Player 1 or Player 2.

### Known Issues: External Controllers - Linux Desktop

Linux Desktop via Steam Input is complex. There are a lot of variables and the RetroDECK Team don't have the ability to test for all of them:

- What kind of packages are installed.
- What kind of drivers you have installed.
- What distro you are using.
- What desktop you are using.
- If you are running X11 or Wayland.
- If you have a Steam Deck based Distro with Valves "Game Mode".

We are trying to keep track of all the issues here and have reported several to Valve:

https://github.com/XargonWan/RetroDECK/issues/716

**Bug: Destop Profiles take preset over Game Profile**

Since the one of the recent Steam Client updates, there is a bug that causes Steam to take the Desktop Profile instead of the Game Profile. Sometimes it even takes both inputs and sends double inputs for every action.

Possible solutions by our users and team members:

- Try and use the RetroDECK Profile as the Desktop Profile and turning off the Game Profile.
- Going into big picture and launching RetroDECK from there.
- Starting big picture, exiting big picture and then launching RetroDECK from the Desktop Client.

**Bug: Missing Radials in certain systems**

The radial menus on certain Linux Systems are hidden behind the game window or the Steam overlay (they still work and you can navigate them).

We thought about doing a temporary none radial profiles for each controller to get around this bug.<br>
But later changed our minds as we would have even more input configs to maintain, with a risk they become permanent.

### External Controller Issues - GZDOOM

GZDOOM have some kind of conflict with Steam Input in when more then one controller that causes input looping in menus. Make sure that the controller you are using is set as Player 1 else use Reorder Controllers interface in Steam to make it Player 1.

We are still investigation the cause of it, if you know of a solution please contact the RetroDECK Team.


## Hotkey Issues

**Not all Emulators has hotkey support; some have partial support; some has none and some has a majority implemented**

The plan is to map as much as we can into the RetroDECK Hotkey System below. We are also patching in Emulator Hotkeys with the `RetroDECK Framework` (if possible) to be compatible with the system. If an emulator later adds better hotkey support, we plan to map it towards the same functions for a unified experience across as many emulators as possible.

-s `RPCS3` hotkeys/shortcuts do not work and they are a new experimental feature. To exit you must shut down RPCS3 from the `Switch Window` inside the Steam Deck interface or quit the application on Desktop.
- `CEMU` has almost no hotkey support.
- `XEMU` has no hotkey support.

## External Controller Issues - Steam Deck

- Sometimes the emulators / engines gets confused on what controller is player 1 and takes the docked Steam Deck as player 1 and not the external contrller. You can solve this by going into the Reorder Controllers interface in Steam and try switching between Player 1 or Player 2.


## External Controller Issues - Linux Desktop

Linux Desktop via Steam Input is complex. There are a lot of variables and the RetroDECK Team don't have the ability to test for all of them:

- What kind of packages are installed.
- What kind of drivers you have installed.
- What distro you are using.
- What desktop you are using.
- If you are running X11 or Wayland.
- If you have a Steam Deck based Distro with Valves "Game Mode".

We are trying to keep track of all the issues here and have reported several to Valve:

https://github.com/XargonWan/RetroDECK/issues/716

**Bug: Destop Profiles take preset over Game Profile**

Since the one of the recent Steam Client updates, there is a bug that causes Steam to take the Desktop Profile instead of the Game Profile. Sometimes it even takes both inputs and sends double inputs for every action.

Possible solutions by our users and team members:

- Try and use the RetroDECK Profile as the Desktop Profile and turning off the Game Profile.
- Going into big picture and launching RetroDECK from there.
- Starting big picture, exiting big picture and then launching RetroDECK from the Desktop Client.

**Bug: Missing Radials in certain systems**

The radial menus on certain Linux Systems are hidden behind the game window or the Steam overlay (they still work and you can navigate them).

We thought about doing a temporary none radial profiles for each controller to get around this bug.<br>
But later changed our minds as we would have even more input configs to maintain, with a risk they become permanent.

## External Controller Issues - GZDOOM

GZDOOM have some kind of conflict with Steam Input in when more then one controller that causes input looping in menus. Make sure that the controller you are using is set as Player 1 else use Reorder Controllers interface in Steam to make it Player 1.

We are still investigation the cause of it, if you know of a solution please contact the RetroDECK Team.


## Missing Features

We are working on implementing all these features over the big releases. Some will take longer time than others and we will also add more things to this list when needed.

**Missing features:**

- Cloud sync
- USB transfer
- STFP / FTP
- Better External controller support.
- Better gyro support.
- Dynamic external display resolution support for borders and viewports.
- All Emulators & Engines supported by ES-DE so there at least is one per system in RetroDECK.
- A Ports Downloader for additional systems and features.
- A rebuilt Configurator that is a Godot application that supports controller navigation.
- A rebuilt first run installer and updater in Godot.
- Better art: Mascot, Easter Eggs, Logos.
- A multi-user system with user profiles.
