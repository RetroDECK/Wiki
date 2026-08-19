# Known Issues: Global

<img src="../../wiki_icons/pixelitos/edit-delete.png" width="75" alt="">

This article documents **global issues** affecting hardware, devices, dependency software, and operating systems.

For component-specific issues, refer to the **Troubleshooting** section of the relevant component guide.

---

## Linux Desktop Issues

| Topic | Issue | Solution |
|---|---|---|
| **KDE Discover: Incorrect Flatpak Version** | KDE Discover may display an incorrect Flatpak version due to a caching issue. | Refresh the cache by opening `Discover → Settings` and toggling **Flathub** off and on. |

---

## Steam Issues

| Topic | Issue | Solution |
|---|---|---|
| **Steam Remote Play: Black Screen** | Steam Remote Play may display a black screen when streaming non-native Steam applications, including RetroDECK. | Use **Moonlight + Sunshine** as an alternative streaming setup; see the Software Recommendations section. |

---

## Steam Input Issues

| Topic | Issue | Solution |
|---|---|---|
| **RetroDECK Hotkeys** | Hotkey support varies by emulator, with some offering partial or no support. | RetroDECK aims to integrate as many emulator hotkeys as possible into the Hotkey System and patch emulator-specific hotkeys as support becomes available. |
| **Missing Radials on Linux Desktop** | Steam radial menus may render behind the game window or Steam Overlay. | The issue has been reported to Valve. |
| **Who Is Player 1?** | The Steam Deck or a docked controller may incorrectly be assigned as Player 1. | Use Steam's **Reorder Controllers** feature to assign the correct player order. |
| **Desktop Layout Conflicts with Game Layout (Linux Desktop)** | Steam Desktop Layout may override Game Layout, causing controller input conflicts. | Either disable Desktop Layout via `Steam → Settings → Controller → Desktop Layout → Edit → Disable`, or apply the RetroDECK layout via `Steam → Settings → Controller → Desktop Layout → Edit → Apply RetroDECK Layout for your controller`. |

---

## Steam Deck-Specific Issues

| Topic | Issue | Solution |
|---|---|---|
| **Emulator GUI Scaling** | Emulator interfaces may appear cramped or extend beyond the screen in Game Mode due to resolution scaling. | Exit RetroDECK, open `Steam → RetroDECK → ⚙️ → Properties → Shortcut`, set **Game Resolution** to `1920×1080`, enable **Set resolution for internal/external display**, apply the required emulator changes, then restore the resolution to **Default**. |
| **New SD Card Problems** | New SD cards may cause errors, file-transfer failures, or incorrect reported capacity. | Use reputable brands, avoid special characters in the SD card name, format via `Steam → Storage → Select Card → Y → Format Drive`, and test suspected counterfeit cards with tools such as `f3`. |
| **Slow Bleeding-Edge Emulators (XEMU, RPCS3, etc.)** | Games may run slowly due to emulator maturity or hardware limitations. | Check the relevant emulator documentation and game-specific resources for available optimizations. Performance may improve as emulator development progresses. |
| **Games Stuck at 30 FPS / Slow Fast-Forward** | A system-level frame-rate limit may have been set accidentally. | Open `[...] → Power Menu` and ensure **Framerate Limit** is not set to `30 FPS`. |
| **Poor Performance When Docked** | High external-display resolutions, particularly 4K, can significantly reduce performance. | Set `Steam → Properties → Shortcut → Game Resolution` to `1920×1080` and enable the **Set resolution for internal/external display** option. |

---
