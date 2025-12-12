# Known Issues

<img src="../../wiki_icons/pixelitos/edit-delete.png" width="75">

---

## Component Specific  Issues

| Component / Emulator | Issue | Solution |
|----------------------|--------|----------|
| **Dolphin** | Some games flicker on the Steam Deck OLED. | Lower the display refresh rate from **90Hz** to **60Hz**. |
| **PPSSPP** | RetroAchievements login/logout and Hardcore Mode are not configurable in the Configurator. | Manage these options directly from the emulator interface. |
| **RetroArch** | Multi-file game saves location bug. | Issue tracked on GitHub: *libretro bug 17589*. |
| **UZDOOM** | Steam Input conflict causing input looping in menus. | Set the controller as **Player 1** or use Steam’s **Reorder Controllers**. |
| **Steam Sync** | Controller templates sometimes fail to associate with Steam entries. | Users must assign templates manually if this occurs. |
| **ES-DE** | Configuration submenu does not support translations yet. | Translations planned for a future update. |
| **Dolphin / PrimeHack** | Input mapping and GUI issues occur under Wayland. | Disable **Wayland Windowing System** via *Flatseal* for RetroDECK. |
| **RetroArch** | UI overscales on Wayland when OS scaling >100%. | Open RA via **RetroDECK Configurator**.<br>Go to **Settings → Video → Output → Video Driver** → switch from **Vulkan** to **GL**.<br>Then **Main Menu → Configuration File → Save Current Configuration** and exit RA. |



---

## Steam Input Issues

| Topic | Issue | Solution |
|-------|--------|----------|
| **RetroDECK Hotkeys** | Hotkey support varies widely across emulators. Some have partial or no support. <br><br>Emulators with poor/no hotkey support: <br>• CEMU – almost none <br>• XEMU – none <br>• Vita3K – none <br>• Ryujinx – almost none | RetroDECK plans to map as many hotkeys as possible into the Hotkey System and patch emulator hotkeys as they become available. |
| **Missing Radials on Linux Desktop** | Radial menus may appear behind the game window or the Steam overlay. | Issue has been reported to Valve. |
| **Who is Player 1?** | Systems may incorrectly assign the Steam Deck or docked controller as Player 1. | Use Steam’s **Reorder Controllers** tool. |
| **Desktop Layout conflicts with Game Layout (Linux Desktop)** | Desktop Layout sometimes overrides Game Layout, breaking inputs. | Disable Steam Input for Desktop Layout: <br>`Steam` → `Settings` → `Controller` → `Desktop Layout` → `Edit`. |

---

## Linux Desktop Issues

| Component | Issue | Solution |
|-----------|--------|----------|
| **KDE Discover** | Shows incorrect Flatpak version due to caching bug. | Refresh cache: `Discover` → `Settings` → toggle **Flathub** off and on. |

---

## Steam Deck–Specific Issues

| Topic | Issue | Solution |
|-------|--------|----------|
| **Emulator GUI Scaling** | Emulator UI elements may be cramped or off-screen in Game Mode due to resolution scaling. | Adjust Steam resolution temporarily: <br>1. Exit RetroDECK <br>2. Open RetroDECK in Steam → `⚙️` → `Properties` → `Shortcut` → `Game Resolution` <br>3. Set to **1920×1080** and enable **Set resolution for internal/external display** <br>4. Apply changes in the emulator <br>5. Revert resolution back to Default. |
| **New SD Card Problems** | Errors, file transfer failures, or incorrect file sizes. | • Buy reputable brands <br>• Avoid special characters in SD card name <br>• Format via `Steam` → `Storage` → select card → `Y` → `Format Drive` <br>• Test suspected fake cards using tools like **f3**. |
| **Slow Bleeding-Edge Emulators (XEMU, RPCS3, etc.)** | Games run slowly due to emulator immaturity or hardware limits. | Performance should improve over time; check emulator sites for game-specific optimizations. |
| **Games Stuck at 30FPS / Slow Fast-Forward** | System framerate accidentally capped. | Press `[...]` → **Power Menu** → ensure **Framerate Limit** is not set to 30FPS. |
| **Poor Performance When Docked** | Slow performance at high monitor resolutions (e.g., 4K). | Lower resolution in Steam: <br>`⚙️` → `Properties` → `Shortcut` → `Game Resolution` → set to **1920×1080** and enable **internal/external display** option. |

