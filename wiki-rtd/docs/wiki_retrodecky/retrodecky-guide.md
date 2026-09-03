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

This requires that RetroDECK & Decky Loader is installed.

Choose one of the following methods:

### Install from the Decky Plugin Store 

*(not available yet, but will be the recommended path)*

Search for **RetroDECKY** in the **Decky Plugin Store** and press **Install**.

### Manual Install from Github

1. Switch to desktop mode and open your browser.
2. Download and install from the [GitHub Releases page](https://github.com/Teppichseite/RetroDECKY/releases).
3. For the latest release download `RetroDECKY.zip` under assets.
4. Switch back to Gaming mode.
5. Open the Quick Access Menu > Decky Tab > Click on the settings icon on the top right.
6. Under "General" enable "Developer mode".
7. Go to the "Developer" section on the left side.
8. Click on "Browse" next to "Install Plugin from ZIP file".
9. Select the `RetroDECKY.zip` file you downloaded in step 3 (usually stored under `~/Downloads`).
10. Click on **Install**.

---

## How-to: Launch RetroDECKY

1. Open the **Steam Quick Access Menu**.
2. Launch **RetroDECKY**.
3. Follow the **Setup Guide** shown in the plugin interface.

**Note:** 

You might need to Reload Setup Status: `Decky Settings` → `Plugins` → `RetroDECKY` → `Reload`

---

## Guide: Custom Documents

You can attach custom reference documents to individual games for in-session viewing. Supported formats are **PDF**, **TXT** and **Markdown** (`.md` or `.markdown`). Documents can be added in two ways:

### Via the Plugin UI

1. While a game is running, open **RetroDECKY** from the Steam **Quick Access Menu**.
2. Locate the **View Manual** button and select the document icon beside it.
3. Tap **Add Document**, then choose a file from the system file picker (PDF, TXT, or Markdown). The plugin copies the file into that game's documents folder and refreshes the list automatically.

### Manually

Custom documents are stored under:

<storage path>/retrodecky/documents/<system>/<rom relative path>

For example, for the ROM `~/retrodeck/roms/snes/gameA.zip`, documents would be stored under:

`~/retrodeck/storage/retrodecky/documents/snes/gameA/`

Simply place files in the appropriate folder and they will appear in the plugin UI automatically.


---

## Guide: Enabling RetroAchievements

RetroDECKY can show [RetroAchievements](https://retroachievements.org/) progress for the currently running game, including **softcore** and **hardcore** completion.

RetroDECKY only **displays** achievement progress. To actually **earn** achievements while playing, you still need to set up RetroAchievements in **RetroDECK** for the respective emulator as usual.

1. While no game is running, open **RetroDECKY** from the Steam **Quick Access Menu**.
1. Go to **Settings** > **RetroAchievements**.
2. Enter your RetroAchievements **username** and **API key** (from your [RetroAchievements control panel](https://retroachievements.org/settings?tab=applications)), then save.
3. While a supported game is running, click on the "Achievements" button from the in-game menu to see unlocked and locked achievements.

Games are matched to RetroAchievements first by **ROM hash**. For some file extensions hashing is not supported — notably Dolphin **`.rvz`** and PSP **`.cso`**. In those cases RetroDECKY falls back to matching the game **by name**.

---


## Known Issues

- **Held Inputs**: Hotkey actions requiring sustained keypresses (such as fast-forward) are not fully supported at this time.
- **Direct Game Launch**: Launching games directly through the Steam library is not currently supported.
- 
---