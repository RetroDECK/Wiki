# RetroDECKY - General Guide

<img src="../../..//wiki_icons/retrodeck/icon-RetroDECKY.svg" width="75" alt="RetroDECKY logo">

**RetroDECKY** is an **unofficial, third-party** (at this moment) Decky plugin developed by **Teppichseite** for use with RetroDECK.

>  **Note:** The RetroDECK team provides advisory support and development guidance to assist Teppichseite with the ongoing development of RetroDECKY. The RetroDECK Wiki serves as the official documentation portal for RetroDECKY and the RetroDECK Discord hosts the official RetroDECKY community as part of the wider RetroDECK community.


---

### RetroDECKY Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="Browser logo">

| Resource | Link |
|----------|------|
| RetroDECKY - Github | [Link](https://github.com/Teppichseite/RetroDecky) |
| RetroDECKY - Discord | RetroDECKY uses the RetroDECK Discord |

---

## Features

| Feature | Description |
|---------|-------------|
| **Running Game Actions** | Displays hotkey actions specific to the currently active game or emulator. |
| **Running Game Information** | Shows metadata pulled from ES-DE and RetroDECK, including cover artwork, box art, and other game data. |
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

<img src="./assets/logo/icon-RetroDECK.svg" alt="RetroDECK logo" width="45">

RetroDECK must be installed before using the plugin.

- [RetroDECK Installation Guide](https://retrodeck.readthedocs.io/en/latest/wiki_general/retrodeck-start/)

---

### Decky Loader

<img src="./assets/logo/icon-decky-loader.png" alt="Decky Loader logo" width="45">

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

## Guides

### Custom Documents

You can attach custom reference documents to individual games for in-session viewing. Supported formats are **PDF**, **TXT**, and **Markdown** (`.md` or `.markdown`). Documents can be added in two ways:

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

## Components Used for Hotkeys

- *
- Azahar (Standalone)
- Cemu (Standalone)
- Dolphin (Standalone)
- Duckstation (Legacy) (Standalone)
- GZDoom (Standalone)
- IkemanGO (Standalone)
- MAME (Standalone)
- MelonDS (Standalone)
- OpenBOR (Standalone)
- PC-Systems
- PCSX2 (Standalone)
- PPSSPP (Standalone)
- PrimeHack (Standalone)
- Primehack (Standalone)
- RPCS3 (Standalone)
- RPCS3 Directory (Standalone)
- RPCS3 Game Serial (Standalone)
- RPCS3 Shortcut (Standalone)
- RetroArch
- Ruffle (Standalone)
- ScummVM
- Solarus (Standalone)

**Total: 23 components(s)**

## Categories and Actions

### Quick

*11 action(s)*

- **View Info** (`display-view-game-info`)
  - Action: `[view_game_info]`
  - Components: *

- **View Manual** (`display-view-pdf`)
  - Action: `[view_manual]`
  - Components: *

- **Load State** (`quick-load-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_A (press)`
  - Components: Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch, Azahar (Standalone)

- **Save State** (`quick-save-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_S (press)`
  - Components: Azahar (Standalone), Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch

- **Pause / Resume** (`quick-pause-resume`)
  - Hotkey: `KEY_LEFTCTRL + KEY_P (press)`
  - Components: Azahar (Standalone), Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), MelonDS (Standalone), PCSX2 (Standalone), RetroArch

- **Restart / Reset** (`quick-restart-reset`)
  - Hotkey: `KEY_LEFTCTRL + KEY_R (press)`
  - Components: Azahar (Standalone), Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), MelonDS (Standalone), PCSX2 (Standalone), RetroArch

- **Swap Screens** (`quick-swap-screens`)
  - Hotkey: `KEY_LEFTCTRL + KEY_TAB (press)`
  - Components: Azahar (Standalone), Cemu (Standalone), MelonDS (Standalone)

- **Change Dual Screens Layout** (`display-change-dual-screens-layout`)
  - Hotkey: `KEY_LEFTCTRL + KEY_L (press)`
  - Components: Azahar (Standalone)

- **Escape** (`quick-escape`)
  - Hotkey: `KEY_ESC (press)`
  - Components: GZDoom (Standalone), IkemanGO (Standalone), OpenBOR (Standalone), PC-Systems, Ruffle (Standalone), Solarus (Standalone)

- **Open Menu** (`quick-open-menu`)
  - Hotkey: `KEY_LEFTCTRL + KEY_M (press)`
  - Components: Azahar (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RPCS3 (Standalone), RPCS3 Shortcut (Standalone), RPCS3 Game Serial (Standalone), RPCS3 Directory (Standalone), RetroArch

- **Quit** (`quick-quit-component`)
  - Action: `[exit]`
  - Components: *


### General

*8 action(s)*

- **Pause / Resume** (`general-pause-resume`)
  - Hotkey: `KEY_LEFTCTRL + KEY_P (press)`
  - Components: Azahar (Standalone), Dolphin (Standalone), Primehack (Standalone), Duckstation (Legacy) (Standalone), MelonDS (Standalone), PCSX2 (Standalone), RetroArch

- **Restart / Reset** (`general-restart-reset`)
  - Hotkey: `KEY_LEFTCTRL + KEY_R (press)`
  - Components: Azahar (Standalone), Dolphin (Standalone), Primehack (Standalone), Duckstation (Legacy) (Standalone), MelonDS (Standalone), PCSX2 (Standalone), RetroArch

- **Change Disc / Next Disc** (`general-change-disc-next-disc`)
  - Hotkey: `KEY_LEFTCTRL + KEY_D (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone), Duckstation (Legacy) (Standalone), RetroArch

- **Open Menu** (`general-open-menu`)
  - Hotkey: `KEY_LEFTCTRL + KEY_M (press)`
  - Components: Azahar (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone), RPCS3 (Standalone), RPCS3 Shortcut (Standalone), RPCS3 Game Serial (Standalone), RPCS3 Directory (Standalone), RetroArch

- **Cheats On/Off** (`general-cheats-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_C (press)`
  - Components: Duckstation (Legacy) (Standalone), RetroArch

- **Turbo On/Off** (`general-turbo-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_T (press)`
  - Components: Duckstation (Legacy) (Standalone)

- **Take Screenshot** (`general-take-screenshot`)
  - Hotkey: `KEY_LEFTCTRL + KEY_X (press)`
  - Components: Azahar (Standalone), Dolphin (Standalone), Primehack (Standalone), Duckstation (Legacy) (Standalone), MelonDS (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch

- **Video Recording On/Off** (`general-video-recording-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_V (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch


### State

*6 action(s)*

- **Load State** (`state-load-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_A (press)`
  - Components: Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch, Azahar (Standalone)

- **Previous State** (`state-previous-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_J (press)`
  - Components: Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch

- **Next State** (`state-next-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_K (press)`
  - Components: Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch

- **Save State** (`state-save-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_S (press)`
  - Components: Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone), PCSX2 (Standalone), PPSSPP (Standalone), RetroArch, Azahar (Standalone)

- **Undo Load State** (`state-undo-load-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_8 (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Undo Save State** (`state-undo-save-state`)
  - Hotkey: `KEY_LEFTCTRL + KEY_9 (press)`
  - Components: Duckstation (Legacy) (Standalone), Dolphin (Standalone), Primehack (Standalone)


### Display

*5 action(s)*

- **Change Widescreen / Aspect Ratio** (`display-change-widescreen-aspect-ratio`)
  - Hotkey: `KEY_LEFTCTRL + KEY_W (press)`
  - Components: Dolphin (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone), PrimeHack (Standalone)

- **Swap Screens** (`display-swap-screens`)
  - Hotkey: `KEY_LEFTCTRL + KEY_TAB (press)`
  - Components: Azahar (Standalone), Cemu (Standalone), MelonDS (Standalone)

- **Decrease Resolution / Upscale** (`display-decrease-resolution-upscale`)
  - Hotkey: `KEY_LEFTCTRL + KEY_Y (press)`
  - Components: Dolphin (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone), PrimeHack (Standalone)

- **Increase Resolution / Upscale** (`display-increase-resolution-upscale`)
  - Hotkey: `KEY_LEFTCTRL + KEY_U (press)`
  - Components: Dolphin (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone), PrimeHack (Standalone)

- **Fullscreen Toggle** (`display-fullscreen-toggle`)
  - Hotkey: `KEY_LEFTCTRL + KEY_ENTER (press)`
  - Components: Azahar (Standalone), Dolphin (Standalone), Duckstation (Legacy) (Standalone), MelonDS (Standalone), PCSX2 (Standalone), PrimeHack (Standalone)


### Speed

*7 action(s)*

- **Decrease Emulation Speed** (`speed-decrease-emulation-speed`)
  - Hotkey: `KEY_LEFTCTRL + KEY_2 (press)`
  - Components: Azahar (Standalone), Dolphin (Standalone), Primehack (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone)

- **Increase Emulation Speed** (`speed-increase-emulation-speed`)
  - Hotkey: `KEY_LEFTCTRL + KEY_1 (press)`
  - Components: Azahar (Standalone), Dolphin (Standalone), Primehack (Standalone), Duckstation (Legacy) (Standalone), PCSX2 (Standalone)

- **Reset Emulation Speed** (`speed-reset-emulation-speed`)
  - Hotkey: `KEY_LEFTCTRL + KEY_3 (press)`
  - Components: Duckstation (Legacy) (Standalone)

- **Frame Limit On/Off** (`speed-frame-limit-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_Z (press)`
  - Components: PCSX2 (Standalone)

- **Disable Emulation Speed Limit** (`speed-disable-emulation-speed-limit`)
  - Hotkey: `KEY_LEFTCTRL + KEY_0 (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Fast Forward** (`speed-fast-forward`)
  - Hotkey: `KEY_LEFTCTRL + KEY_KPPLUS (hold)`
  - Components: Duckstation (Legacy) (Standalone), MelonDS (Standalone), PCSX2 (Standalone), RetroArch

- **Rewind** (`speed-rewind`)
  - Hotkey: `KEY_LEFTCTRL + KEY_KPMINUS (hold)`
  - Components: Duckstation (Legacy) (Standalone), RetroArch


### Azahar

*2 action(s)*

- **Load Amiibo** (`azahar-load-amiibo`)
  - Hotkey: `KEY_LEFTALT + KEY_M (press)`
  - Components: Azahar (Standalone)

- **Remove Amiibo** (`azahar-remove-amiibo`)
  - Hotkey: `KEY_LEFTALT + KEY_N (press)`
  - Components: Azahar (Standalone)


### Dolphin

*10 action(s)*

- **Freelook Mode On/Off** (`dolphin-freelook-mode-onoff`)
  - Hotkey: `KEY_LEFTALT + KEY_F (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Freelook Mode Reset** (`dolphin-freelook-mode-reset`)
  - Hotkey: `KEY_LEFTALT + KEY_R (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Golf Mode On/Off** (`dolphin-golf-mode-onoff`)
  - Hotkey: `KEY_LEFTALT + KEY_H (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wii Sync Button** (`dolphin-wii-sync-button`)
  - Hotkey: `KEY_LEFTALT + KEY_W (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wiimote Sideways** (`dolphin-wiimote-sideways`)
  - Hotkey: `KEY_LEFTALT + KEY_X (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wiimote Upright** (`dolphin-wiimote-upright`)
  - Hotkey: `KEY_LEFTALT + KEY_Z (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wiimote Sync - Player 1** (`dolphin-wiimote-sync-player-1`)
  - Hotkey: `KEY_LEFTALT + KEY_W + KEY_1 (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wiimote Sync - Player 2** (`dolphin-wiimote-sync-player-2`)
  - Hotkey: `KEY_LEFTALT + KEY_W + KEY_2 (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wiimote Sync - Player 3** (`dolphin-wiimote-sync-player-3`)
  - Hotkey: `KEY_LEFTALT + KEY_W + KEY_3 (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)

- **Wiimote Sync - Player 4** (`dolphin-wiimote-sync-player-4`)
  - Hotkey: `KEY_LEFTALT + KEY_W + KEY_4 (press)`
  - Components: Dolphin (Standalone), Primehack (Standalone)


### Melonds

*4 action(s)*

- **Close/Open Lid** (`melonds-closeopen-lid`)
  - Hotkey: `KEY_LEFTALT + KEY_L (press)`
  - Components: MelonDS (Standalone)

- **Sunlight +** (`melonds-sunlight`)
  - Hotkey: `KEY_LEFTALT + KEY_KPPLUS (press)`
  - Components: MelonDS (Standalone)

- **Sunlight -** (`melonds-sunlight`)
  - Hotkey: `KEY_LEFTALT + KEY_KPMINUS (press)`
  - Components: MelonDS (Standalone)

- **Play Microphone** (`melonds-play-microphone`)
  - Hotkey: `KEY_LEFTALT + KEY_P (press)`
  - Components: MelonDS (Standalone)


### Mame

*11 action(s)*

- **Service Mode** (`mame-service-mode`)
  - Hotkey: `KEY_LEFTALT + KEY_S + KEY_0 (press)`
  - Components: MAME (Standalone)

- **Service Button 1** (`mame-service-button-1`)
  - Hotkey: `KEY_LEFTALT + KEY_S + KEY_1 (press)`
  - Components: MAME (Standalone)

- **Service Button 2** (`mame-service-button-2`)
  - Hotkey: `KEY_LEFTALT + KEY_S + KEY_2 (press)`
  - Components: MAME (Standalone)

- **Service Button 3** (`mame-service-button-3`)
  - Hotkey: `KEY_LEFTALT + KEY_S + KEY_3 (press)`
  - Components: MAME (Standalone)

- **Service Button 4** (`mame-service-button-4`)
  - Hotkey: `KEY_LEFTALT + KEY_S + KEY_4 (press)`
  - Components: MAME (Standalone)

- **Insert Bill / Note** (`mame-insert-bill-note`)
  - Hotkey: `KEY_LEFTALT + KEY_B + KEY_1 (press)`
  - Components: MAME (Standalone)

- **Tilt** (`mame-tilt`)
  - Hotkey: `KEY_LEFTALT + KEY_T + KEY_0 (press)`
  - Components: MAME (Standalone)

- **Tilt - Player 1** (`mame-tilt-player-1`)
  - Hotkey: `KEY_LEFTALT + KEY_T + KEY_1 (press)`
  - Components: MAME (Standalone)

- **Tilt - Player 2** (`mame-tilt-player-2`)
  - Hotkey: `KEY_LEFTALT + KEY_T + KEY_2 (press)`
  - Components: MAME (Standalone)

- **Tilt - Player 3** (`mame-tilt-player-3`)
  - Hotkey: `KEY_LEFTALT + KEY_T + KEY_3 (press)`
  - Components: MAME (Standalone)

- **Tilt - Player 4** (`mame-tilt-player-4`)
  - Hotkey: `KEY_LEFTALT + KEY_T + KEY_4 (press)`
  - Components: MAME (Standalone)


### Retroarch

*5 action(s)*

- **Cheats On/Off** (`retroarch-cheats-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_C (press)`
  - Components: RetroArch

- **Previous Cheat** (`retroarch-previous-cheat`)
  - Hotkey: `KEY_LEFTCTRL + KEY_F (press)`
  - Components: RetroArch

- **Next Cheat** (`retroarch-next-cheat`)
  - Hotkey: `KEY_LEFTCTRL + KEY_G (press)`
  - Components: RetroArch

- **AI Service On/Off** (`retroarch-ai-service-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_I (press)`
  - Components: RetroArch

- **Netplay Host On/Off** (`retroarch-netplay-host-onoff`)
  - Hotkey: `KEY_LEFTCTRL + KEY_H (press)`
  - Components: RetroArch


### Keyboard

*14 action(s)*

- **Escape** (`keyboard-escape`)
  - Hotkey: `KEY_ESC (press)`
  - Components: *

- **Enter** (`keyboard-enter`)
  - Hotkey: `KEY_ENTER (press)`
  - Components: *

- **Space** (`keyboard-space`)
  - Hotkey: `KEY_SPACE (press)`
  - Components: *

- **Tab** (`keyboard-tab`)
  - Hotkey: `KEY_TAB (press)`
  - Components: *

- **Control** (`keyboard-control`)
  - Hotkey: `KEY_LEFTCTRL (press)`
  - Components: *

- **Alt** (`keyboard-alt`)
  - Hotkey: `KEY_LEFTALT (press)`
  - Components: *

- **Shift** (`keyboard-shift`)
  - Hotkey: `KEY_LEFTSHIFT (press)`
  - Components: *

- **Alt + F4** (`keyboard-alt-f4`)
  - Hotkey: `KEY_LEFTALT + KEY_F4 (press)`
  - Components: *

- **F1** (`keyboard-f1`)
  - Hotkey: `KEY_F1 (press)`
  - Components: *

- **F4** (`keyboard-f4`)
  - Hotkey: `KEY_F4 (press)`
  - Components: *

- **F5** (`keyboard-f5`)
  - Hotkey: `KEY_F5 (press)`
  - Components: *

- **F8** (`keyboard-f8`)
  - Hotkey: `KEY_F8 (press)`
  - Components: *

- **F10** (`keyboard-f10`)
  - Hotkey: `KEY_F10 (press)`
  - Components: *

- **Slash (/)** (`keyboard-slash`)
  - Hotkey: `KEY_SLASH (press)`
  - Components: *


### Scummvm

*10 action(s)*

- **Close** (`scummvm-close`)
  - Hotkey: `KEY_C (press)`
  - Components: ScummVM

- **Open** (`scummvm-open`)
  - Hotkey: `KEY_O (press)`
  - Components: ScummVM

- **Give** (`scummvm-give`)
  - Hotkey: `KEY_G (press)`
  - Components: ScummVM

- **Pick-Up** (`scummvm-pick-up`)
  - Hotkey: `KEY_P (press)`
  - Components: ScummVM

- **Use** (`scummvm-use`)
  - Hotkey: `KEY_U (press)`
  - Components: ScummVM

- **Look-At** (`scummvm-look-at`)
  - Hotkey: `KEY_L (press)`
  - Components: ScummVM

- **Move** (`scummvm-move`)
  - Hotkey: `KEY_M (press)`
  - Components: ScummVM

- **Push / Shove** (`scummvm-push-shove`)
  - Hotkey: `KEY_S (press)`
  - Components: ScummVM

- **Pull / Yank** (`scummvm-pull-yank`)
  - Hotkey: `KEY_Y (press)`
  - Components: ScummVM

- **Fight** (`scummvm-fight`)
  - Hotkey: `KEY_F (press)`
  - Components: ScummVM

