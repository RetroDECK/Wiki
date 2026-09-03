# RetroDECKY - General Guide

<img src="../../wiki_icons/retrodeck/icon-RetroDECKY.svg" width="75" alt="RetroDECKY logo">

**RetroDECKY** is an **unofficial, third-party** (at this moment) Decky plugin developed by **Teppichseite** for use with RetroDECK.

**Note:** 

The RetroDECK team provides advisory support and development guidance to assist Teppichseite with the ongoing development of RetroDECKY. The RetroDECK Wiki serves as the official documentation portal for RetroDECKY and the RetroDECK Discord hosts the official RetroDECKY community as part of the wider RetroDECK community.


---

### RetroDECKY Links

<img src="../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="Browser logo">

| Resource | Link |
|----------|------|
| RetroDECKY - Github | [Link](https://github.com/Teppichseite/RetroDecky) |
| RetroDECKY - Discord | RetroDECKY uses the RetroDECK Discord |

---

## Features

| Feature | Description |
|---------|-------------|
| **Running Game Actions** | Displays hotkey actions specific to the currently active game or emulator. |
| **Running Game Information** | Shows metadata pulled from ES-DE and RetroDECK, including cover artwork, box art and other game data. |
| **Hotkey Triggering** | Executes hotkey functions via Decky menu buttons rather than physical keyboard shortcuts, button combinations, or radial menus. |
| **Boot Into RetroDECK** | Automatically launches RetroDECK when Steam enters Game Mode. |
| **PDF Manual Viewer** | View game manuals within the active game session without exiting. |
| **Additional Documents** | Attach and view per-game PDF, TXT, or Markdown documents during gameplay. |


---

## Known Issues

- **Held Inputs**: Hotkey actions requiring sustained keypresses (such as fast-forward) are not fully supported at this time.
- **Direct Game Launch**: Launching games directly through the Steam library is not currently supported.

---

## Prerequisites for RetroDECKY

Before you can install **RetroDECKY** ensure the following are installed:

---

### RetroDECK

RetroDECK must be installed before using the plugin.

- [RetroDECK Installation Guide](../../wiki_general/retrodeck-start.md)

---

### Decky Loader

Decky Loader is required to run the RetroDECKY plugin.

- [Decky Loader Website](https://decky.xyz/)
- [Decky Loader GitHub](https://github.com/SteamDeckHomebrew/decky-loader/)

---

## How-to: Install RetroDECKY

### Step 1 - Install the Plugin

Choose one of the following methods:

**Option A: Decky Plugin Store (Recommended)**

*(Not yet available; will become the recommended path once published.)*

Install directly from the **Decky Plugin Store**. 

**Option B: Manual Installation**

1. Download `RetroDECKY.zip` from the latest asset on the [GitHub Releases page](https://github.com/Teppichseite/RetroDECKY/releases).
2. Switch your Steam Deck to **Desktop Mode** and open a web browser if you have not already downloaded the file.
3. Switch back to **Gaming Mode**.
4. Open the **Quick Access Menu** (⋯ button), then navigate to the **Decky** tab.
5. Select the **Settings** gear icon in the upper-right corner.
6. Under **General**, enable **Developer mode**.
7. In the **Developer** section on the left sidebar, click **Browse** next to **Install Plugin from ZIP file**.
8. Select the downloaded `RetroDECKY.zip` (typically located in `~/Downloads`).
9. Click **Install**.

---

### Step 2 - Launch the Plugin

1. Open the **Steam Quick Access Menu** (⋯ button).
2. Select **RetroDECKY**.
3. Follow the **Setup Guide** displayed in the plugin interface.

To reload the setup status if needed: navigate to **Decky Settings → Plugins → RetroDECKY → Reload**.

---

## Guide: Custom Documents

You can attach custom reference documents to individual games for in-session viewing. Supported formats are **PDF**, **TXT** and **Markdown** (`.md` or `.markdown`). Documents can be added in two ways:

**Via the Plugin UI**

1. While a game is running, open **RetroDECKY** from the Steam **Quick Access Menu**.
2. Locate the **View Manual** button and select the document icon beside it.
3. Tap **Add Document**, then choose a file from the system file picker (PDF, TXT, or Markdown). The plugin copies the file into that game's documents folder and refreshes the list automatically.

**Manually**

Custom documents are stored under:

<storage path>/retrodecky/documents/<system>/<rom relative path>

For example, for the ROM `~/retrodeck/roms/snes/game A.zip`, documents would be stored under:

~/retrodeck/storage/retrodecky/documents/snes/game A/

Simply place files in the appropriate folder and they will appear in the plugin UI automatically.

---

## Hotkey Actions

For the latest information check the following link:

[Github: Actions Summary](https://github.com/Teppichseite/RetroDECKY/blob/main/defaults/presets/actions_summary.md).


### Global: Keyboard

| Action | Hotkey | Comments |
|---|---|---|
| Escape | `KEY_ESC` | |
| Enter | `KEY_ENTER` | |
| Space | `KEY_SPACE` | |
| Tab | `KEY_TAB` | |
| Control | `KEY_LEFTCTRL` | |
| Alt | `KEY_LEFTALT` | |
| Shift | `KEY_LEFTSHIFT` | |
| Alt + F4 | `KEY_LEFTALT + KEY_F4` | |
| F1 | `KEY_F1` | |
| F4 | `KEY_F4` | |
| F5 | `KEY_F5` | |
| F8 | `KEY_F8` | |
| F10 | `KEY_F10` | |
| Slash (`/`) | `KEY_SLASH` | |

### Global: Quick Actions

| Action | Hotkey / Action | Comments |
|---|---|---|
| View Info | `[view_game_info]` | |
| View Manual | `[view_manual]` | |
| Load State | `CTRL + A` | |
| Save State | `CTRL + S` | |
| Pause / Resume | `CTRL + P` | |
| Restart / Reset | `CTRL + R` | |
| Swap Screens | `CTRL + TAB` | |
| Change Dual Screens Layout | `CTRL + L` | |
| Escape | `ESC` | |
| Open Menu | `CTRL + M` | |
| Quit | `[exit]` | |

### Global: General Actions

| Action | Hotkey | Comments |
|---|---|---|
| Pause / Resume | `CTRL + P` | |
| Restart / Reset | `CTRL + R` | |
| Change Disc / Next Disc | `CTRL + D` | |
| Open Menu | `CTRL + M` | |
| Cheats On/Off | `CTRL + C` | |
| Turbo On/Off | `CTRL + T` | |
| Take Screenshot | `CTRL + X` | |
| Video Recording On/Off | `CTRL + V` | |

### Global: Save States

| Action | Hotkey | Comments |
|---|---|---|
| Load State | `CTRL + A` | |
| Previous State | `CTRL + J` | |
| Next State | `CTRL + K` | |
| Save State | `CTRL + S` | |
| Undo Load State | `CTRL + 8` | |
| Undo Save State | `CTRL + 9` | |

### Global: Display Options

| Action | Hotkey | Comments |
|---|---|---|
| Change Widescreen / Aspect Ratio | `CTRL + W` | |
| Swap Screens | `CTRL + TAB` | |
| Decrease Resolution / Upscale | `CTRL + Y` | |
| Increase Resolution / Upscale | `CTRL + U` | |
| Fullscreen Toggle | `CTRL + ENTER` | |

### Global: Speed / Frames

| Action | Hotkey | Comments |
|---|---|---|
| Decrease Emulation Speed | `CTRL + 2` | |
| Increase Emulation Speed | `CTRL + 1` | |
| Reset Emulation Speed | `CTRL + 3` | |
| Frame Limit On/Off | `CTRL + Z` | |
| Disable Emulation Speed Limit | `CTRL + 0` | |
| Fast Forward | `CTRL + KPPLUS` *(hold)* | |
| Rewind | `CTRL + KPMINUS` *(hold)* | |

### Azahar

| Action | Hotkey | Comments |
|---|---|---|
| Load Amiibo | `ALT + M` | |
| Remove Amiibo | `ALT + N` | |

### Dolphin

| Action | Hotkey | Comments |
|---|---|---|
| Freelook Mode On/Off | `ALT + F` | |
| Freelook Mode Reset | `ALT + R` | |
| Golf Mode On/Off | `ALT + H` | |
| Wii Sync Button | `ALT + W` | |
| Wiimote Sideways | `ALT + X` | |
| Wiimote Upright | `ALT + Z` | |
| Wiimote Sync – Player 1 | `ALT + W + 1` | |
| Wiimote Sync – Player 2 | `ALT + W + 2` | |
| Wiimote Sync – Player 3 | `ALT + W + 3` | |
| Wiimote Sync – Player 4 | `ALT + W + 4` | |

### MelonDS

| Action | Hotkey | Comments |
|---|---|---|
| Close/Open Lid | `ALT + L` | |
| Sunlight + | `ALT + KPPLUS` | |
| Sunlight − | `ALT + KPMINUS` | |
| Play Microphone | `ALT + P` | |

### MAME

| Action | Hotkey | Comments |
|---|---|---|
| Service Mode | `ALT + S + 0` | |
| Service Button 1 | `ALT + S + 1` | |
| Service Button 2 | `ALT + S + 2` | |
| Service Button 3 | `ALT + S + 3` | |
| Service Button 4 | `ALT + S + 4` | |
| Insert Bill / Note | `ALT + B + 1` | |
| Tilt | `ALT + T + 0` | |
| Tilt – Player 1 | `ALT + T + 1` | |
| Tilt – Player 2 | `ALT + T + 2` | |
| Tilt – Player 3 | `ALT + T + 3` | |
| Tilt – Player 4 | `ALT + T + 4` | |

### RetroArch

| Action | Hotkey | Comments |
|---|---|---|
| Cheats On/Off | `CTRL + C` | |
| Previous Cheat | `CTRL + F` | |
| Next Cheat | `CTRL + G` | |
| AI Service On/Off | `CTRL + I` | |
| Netplay Host On/Off | `CTRL + H` | |

### ScummVM

| Action | Hotkey | Comments |
|---|---|---|
| Close | `C` | |
| Open | `O` | |
| Give | `G` | |
| Pick-Up | `P` | |
| Use | `U` | |
| Look-At | `L` | |
| Move | `M` | |
| Push / Shove | `S` | |
| Pull / Yank | `Y` | |
| Fight | `F` | |
