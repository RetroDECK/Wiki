# How-to: Report a Problem and Known Issues

<img src="../../wiki_icons/pixelitos/edit-delete.png" width="75">

## Before you report a Problem

Before you report something, read the following.

### Do not! Report Directly to Third-Party System Developers 🛑  

Report any component: `emulator` , `engine` or `system` related issues in RetroDECK directly to the developers of those systems.

**Example:**

If you find odd behavior in an emulator, don't go to the emulator's socials or support channels to report it. Instead, use the RetroDECK support channels.

If the RetroDECK Team believes the issue is caused by a built-in component, they, and not the user, will then report and discuss it with the developers of that system.

### Is the Problem Already Reported?

- Check [RetroDECK - Github Issues](https://github.com/RetroDECK/RetroDECK/issues) for reported problems.
- Check if it is a known issue in the emulator/engine/system you are using on their bug reporting channels and wait until RetroDECK updates the componenet in an upcomming update. 
- Check the The `FAQ ❔` section of this wiki.

## How-to: Reporting an Problem

- RetroDECK's main issue tracker is on [RetroDECK - Github Issues](https://github.com/RetroDECK/RetroDECK/issues). 
- We try to keep it clean and only have “real” issues. 
- General guidance or help is available on the socials, wiki, and the rest of the RetroDECK community.


### General rule of thumb is:

- If you want to discuss something, do not understand, want to ask a question, or need general guidance, start with the 🤝-community-support channel on Discord or Matrix. The community or sometimes the RetroDECK Team will answer here.

- If you think it is something bigger or are semi-certain about the issue but lack technical knowledge and want a deeper discussion, use the 🆘-support channel on Discord. The RetroDECK Team mostly discusses things here, but certain community members might join.

- If you know what the issue is and maybe even have found a solution, submit it directly on GitHub.

The RetroDECK Team tries to spread any knowledge, tips, or clarifications from Discord or other RetroDECK communities to the Wiki via separate articles or updating the FAQ. 

### Discord & Matrix

Discord and Matrix are used for more guidance-type issues and community support.

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

### RetroDECK - Github Issues

[RetroDECK - Github Issues](https://github.com/RetroDECK/RetroDECK/issues)
GitHub is RetroDECK's main issue tracker where development and known issues are submitted by the community and the RetroDECK team from reports on Discord or other community channels.

## Known Issues - Components

What follows is a list of known issues.

### PPSSPP

**Issue:** Retroachievements login/logout and hardcore mode are not configurable in the Configurator.

**Solution:** Currently, it can be managed from the emulator's interface.

### RetroArch

**Gambatte Issue:** Quitting the core with the `Quit` radial function makes the core swap the palette while playing GB.

### Ryujinx

**Issue:** Cannot handle symlinks correctly, affecting saves, firmware, and keys.

### GZDOOM

**Issue:** Conflict with Steam Input causing input looping in menus.

**Solution:** Ensure the controller is set as Player 1 or use the Reorder Controllers interface in Steam.

### Steam Sync

**Issue:** Sometimes fails to associate controller templates to Steam entries.

**Solution:** Users must set it manually if needed.

### ES-DE

**Issue:** ES-DE Configurations submenu doesn't support translations yet.

**Solution:**  Translations will be implemented in the future.

## Known Issues - Steam Input

### RetroDECK Hotkeys

**Issue:** Not all emulators have hotkey support; some have partial support, some have none, and some have a majority implemented.

**Solution:** The plan is to map as much as possible into the RetroDECK Hotkey System and patch in Emulator Hotkeys with the RetroDECK Framework to be compatible with the system as they get the functionality .

- `CEMU` has almost no hotkey support.
- `XEMU` has no hotkey support.
- `Vita3k` has no hotkey support.
- `Ryujinx` has almost no hotkey support.

### Missing Radials in Linux Desktop

**Issue:** Radial menus are hidden behind the game window or Steam overlay on certain Linux systems.

**Solution:** Has been reported to Valve by RetroDECK Team.

### Who is Player 1?

**Issue:** Emulators/engines/systems get confused about which controller is player 1, sometimes taking the docked Steam Deck as player 1 instead of the external controller.

**Solution:** Use the Reorder Controllers interface in Steam to switch between Player 1 and Player 2.

## Known Issues - Linux Desktop

### KDE Discover

**Issue:** Shows the wrong version when updating Flatpak applications due to a caching error.

**Solution:**  Force a cache update by going to `Discover` -> `Settings` -> and unchecking and checking Flathub again.

## Knows Issues - Steam Deck

### Certain UI elements of emulators GUI are cramped / outside of the screen

**Issue:** Certain UI elements of emulators GUI are cramped / outside of the screen

**Solution:**

If you're trying to change settings in an emulator on a Steam Deck in Game Mode, some UI elements might be cramped or the buttons might be outside of the screen. This is due to resolution scaling of the application versus the Steam Deck's resolution.

1. Exit RetroDECK.
2. Go to RetroDECK in Steam.
3. Click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`
4. Set the Resolution from `Default` to `1920x1080`
5. Turn on `Set resolution for internal and external display` (if this option is hidden, go back one menu and then return to make it show up).
6. Open `Configurator` -> `Open Component` -> `<Applicaiton>`
7. Make the changes you want and save.
8. Exit RetroDECK and revert the display changes.
9. Click on the `⚙️` icon, then go to `Properties` - `Shortcut` - `Game Resolution`.
10. Set the Resolution from `1920x1080` back to `Default`.
11. Start RetroDECK. 

### Problems with a new SD card

**Issue:** The new SD card gives errors, won't transfer files, or shows incorrect file sizes.

**Solution:**

SD cards can be tricky, and there are many scam cards out there. Follow these rules when buying a new SD card:

- Buy from a reputable brand and store.
- Ensure the card has good read and write speeds (check current reviews online).
- Format the card when you get it: Press `Steam` - `Storage` - `Select the Card` - Press `Y` for Options - `Format Drive`.
- Avoid using special characters, emojis, or spaces in the card's name. Stick to A-Z and 1-9.
- There are online solutions to test if an SD card is fake, like the software `f3` for Linux.

### XBOX games are slow

**Issue:** XBOX games are slow on the Steam Deck

**Solution:** Due to missing optimizations and hardware limitations, XBOX games may not perform well on the Steam Deck. Improvements are expected over time as emulators get better.


### Games are stuck at 30FPS or Fast forwarding is slow

**Issue:** All games are stuck at 30FPS or fast forwarding is slow.

**Solution:** Press the `[...]`button on the Steam Deck, go to the Powermenu, and check if the Framerate Limit is set to 30FPS. Change it to 60FPS or turn it off.


### Systems run slow when docked to a high-resolution monitor

**Issue:** All games run slow when docked to a high-resolution monitor.

**Solution:** 

The Steam Deck may struggle with high resolutions like 4k or 8k, you can lower the resolution in Steam.

1. Go to RetroDECK in Steam.
2. Click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`
3. Set the Resolution from `Default` to `1920x1080`
4. Turn on `Set resolution for internal and external display`
5. Start RetroDECK. 
