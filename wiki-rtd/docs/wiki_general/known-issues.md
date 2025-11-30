# Known Issues

<img src="../../wiki_icons/pixelitos/edit-delete.png" width="75">

## Known Issues - Components

What follows is a list of known issues.

### Dolphin

**Issue:** Some games are flickering on the Steam Deck OLED.

**Solution:** Some titles don't like the 90HZ mode on the OLED, lower it to 60HZ. 

### PPSSPP

**Issue:** Retroachievements login/logout and hardcore mode are not configurable in the Configurator.

**Solution:** Currently, it can be managed from the emulator's interface.

### RetroArch

**Multi-File Game Save Location:** Bug in RetroArch [GitHub libretro: Bug 17589](https://github.com/RetroDECK/RetroDECK/issues/1048).

### UZDOOM

**Issue:** Conflict with Steam Input causing input looping in menus.

**Solution:** Ensure the controller is set as Player 1 or use the Reorder Controllers interface in Steam.

### Steam Sync

**Issue:** Sometimes fails to associate controller templates to Steam entries.

**Solution:** Users must set it manually if needed.

### ES-DE

**Issue:** ES-DE Configurations submenu doesn't support translations yet.

**Solution:**  Translations will be implemented in the future.

### Dolphin / Primehack 

**Issue:** Some input mapping and GUI elements have problems with Wayland in the emulators. 

**Solution:** You can disable the "Wayland Windowing System" via flatseal in RetroDECK.

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


### Desktop Layout conflict with Game Layout in Linux Desktop

**Issue:** This issue is sometimes fixed by Valve, but we have seen it coming back. The root cause of it that the Desktop Layout somehow take preset over the Game Layout in Linux Desktop. Thus the inputs don't work or gets scrambled. 

**Solution:** Disable Steam Input for the Desktop Layout in `Steam` -> `Settings` -> `Controller` -> `Desktop Layout` -> `Edit`.

<img src="../../wiki_images/steam/steam-desktop-layout.png" width="600">

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

### Bleeding Edge Emulator (like XEMU, RPCS3) are Games Are Slow

**Issue:** XBOX, PS3 and other bleeding edge emulator games are slow

**Solution:** This is due to missing optimizations and hardware limitations. Performance should improve as emulators get better. Some games may need specific tweaks or profiles. Check each emulator's website for compatibility and optimized settings for each game.


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
