# Reporting Issues and Known Issues


## How to Report?

🛑 **Do not!** 🛑

Report any emulator/engine related issues directly to the developers of those systems, report it to RetroDECK. If RetroDECK Team believes that the issue is caused by the engine or emulator then the RetroDECK Team will then report and discuss it directly with the developers.

---

**Before you report**


- Check [Github issues](https://github.com/XargonWan/RetroDECK/issues/) on reported issues.
- Check if it is a known issue in the emulator/engine you are using on their bug reporting channels.
- Check the The `FAQ ❔` section of this wiki.


---

**Reporting an issue**

RetroDECK's main issue tracker is on GitHub and we try to keep it clean and just have “real” issues.
General guidance or help is what Discord, Wiki and the rest of the RetroDECK community are for.

The general rule of thumb is:

- If it is something you want to discuss, do not understand, want to ask a question, or just need general guidance start with `🤝-community-support` channel on Discord or Matrix. Things submitted here will be answered by the community or sometimes the RetroDECK Team.
- If you think it is something bigger or semi-certain what the issue is but lack the technical knowledge and want to have a deeper discussion do it the `🆘-support` channel on Discord. Things submitted here are mostly discussed with the RetroDECK Team but certain community members might join.
- If you know what the issue is and maybe even have found a solution for it submit it directly on Github.

The RetroDECK Team tries our best to spread any knowledge, tips, or clarifications from Discord or other RetroDECK communities, so it ends up on the Wiki via either separate articles or updating the FAQ.

**Discord & Matrix**

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

Discord and Matrix is used for more guidance type issues and community support.

**GitHub**

[GitHub issues](https://github.com/XargonWan/RetroDECK/issues/)

GitHub is RetroDECK's main issue tracker where development and known issues are submitted by the community and by the RetroDECK team from reports on Discord or other community channels.


## Known issues

What follows is a list of known issues.
For a list of reported bugs please check here on github: [RetroDECK issues](https://github.com/XargonWan/RetroDECK/issues?q=is%3Aissue+is%3Aopen+label%3A%22Bug+%F0%9F%95%B7%EF%B8%8F%22)

### PPSSPP

Retroachievements you can login / logout / enable hardcore mode normally from the emulators interface. It is right now not configurable in the Configurator (as it works a bit differently than the other emulators), we hope to have a solution for it later.

### RetroArch

Borders are in some few cases disappearing in the latest RetroArch version. A workaround is to reset RetroArch from the Configurator

**RetroArch: Gambatte**

Quitting the core with the `Quit` radial function makes the core swap the palette while playing GB.

### OpenBOR

The standard implementation RetroDECK uses does not work and is currently not compatible. We are going to redesign it in an future update.

### Ryujinx

Cannot handle the symlinks correctly in the new updates (it never could do it perfect before, this affects all of Linux). Thus our saves, firmware (nand) and keys folder are currently symlinked in retrodeck folders do not work.

The RetroDECK Team is working with the Ryujinx Team to fix this permanently in Ryujinx.

The consequences are that: Ryujinx don't recognize any keys and firmware as it cannot resolve the symlink, so the games are not starting.

A temporary but very dangerous workaround we really don't recommend doing is to manually replace the symlinks with actual folders. But you must backup them as the next version or if you reset Ryujinx via the Configurator will remove the real folders and replace them with symlinks again, and in this case will erase all the saves, keys and firmware!

The manual work around should be to replace:

    - Saves folder `bis` with `retrodeck/saves/switch/ryujinx/nand`
    - The `sdcard` with `retrodeck/saves/switch/ryujinx/sdcard`
    - The "firmware" folder `system` with `retrodeck/bios/switchch/keys`
    - The actual firmware folder `bis/system/Contents/` with `retrodeck/bios/switch/firmware`

However, keep in mind that RetroDECK Team will not assume any responsibility for data loss and we recommend our users to wait until Ryujinx have fixed it on their side.

### GZDOOM

GZDOOM have some kind of conflict with Steam Input in when more then one controller that causes input looping in menus. Make sure that the controller you are using is set as Player 1 else use Reorder Controllers interface in Steam to make it Player 1.

We are still investigation the cause of it, if you know of a solution please contact the RetroDECK Team.


### Linux Desktop

#### Bug: Destop Profiles take preset over Game Profile

Since the one of the recent Steam Client updates, there is a bug that causes Steam to take the Desktop Profile instead of the Game Profile. Sometimes it even takes both inputs and sends double inputs for every action.

Possible solutions by our users and team members:

- Try to turn off the RetroDECK's Steam Input: `Select RetroDECK in Steam` -> `Properties` -> `Controller` -> `Disable Steam Input`. Then go to `Steam` -> `Settings` -> `Controller` -> `Desktop Profile` and `Apply the RetroDECK Layout` under Templates for the controller you are using.
- Going into big picture and launching RetroDECK from there.
- Starting big picture, exiting big picture and then launching RetroDECK from the Desktop Client.

#### Bug: Missing Radials in certain systems

The radial menus on certain Linux Systems are hidden behind the game window or the Steam overlay (they still work and you can navigate them).

We thought about doing a temporary none radial profiles for each controller to get around this bug.<br>
But later changed our minds as we would have even more input configs to maintain, with a risk they become permanent.

#### External Controllers - Linux Desktop

Linux Desktop via Steam Input is complex. There are a lot of variables and the RetroDECK Team don't have the ability to test for all of them:

- What kind of packages are installed.
- What kind of drivers you have installed.
- What distro you are using.
- What desktop you are using.
- If you are running X11 or Wayland.
- If you have a Steam Deck based Distro with Valves "Game Mode".

We are trying to keep track of all the issues here and have reported several to Valve:

https://github.com/XargonWan/RetroDECK/issues/716

### SteamOS / Steam Deck / Gamemode

#### Known Issues: External Controllers - Steam Deck

Sometimes the emulators / engines gets confused on what controller is player 1 and takes the docked Steam Deck as player 1 and not the external controller. You can solve this by going into the Reorder Controllers interface in Steam and try switching between Player 1 or Player 2.

It can easily happen if you go from docked to undocked or vice versa on the Steam Deck.

### Hotkeys

**Not all Emulators has hotkey support; some have partial support; some has none and some has a majority implemented**

The plan is to map as much as we can into the RetroDECK Hotkey System below. We are also patching in Emulator Hotkeys with the `RetroDECK Framework` (if possible) to be compatible with the system. If an emulator later adds better hotkey support, we plan to map it towards the same functions for a unified experience across as many emulators as possible.

- `RPCS3` hotkeys/shortcuts do not work and they are a new experimental feature. To exit you must shut down RPCS3 from the `Switch Window` inside the Steam Deck interface or quit the application on Desktop.
- `CEMU` has almost no hotkey support.
- `XEMU` has no hotkey support.
- `Vita3k` has no hotkey support.
- `Ryujinx` has almost no hotkey support.
