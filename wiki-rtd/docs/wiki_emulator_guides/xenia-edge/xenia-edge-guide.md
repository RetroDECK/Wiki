# Xenia Edge - General Guide

<img src="../../../wiki_images/logos/xenia-edge-logo.png" width="75" alt="Xenia Edge logo">

Xenia Edge is a Microsoft Xbox 360 emulator based on Xenia.

---

### Xenia Edge Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Xenia Edge - Github | [Link](https://github.com/has207/xenia-edge) |
| Xenia Manager - Compability DB | [Link](https://xenia-manager.github.io/compatibility) |

---

## ⚠️ Bleeding-Edge Component ⚠️ 

**Warning:** This component is under rapid development and may be unstable.

- Performance may vary across hardware configurations.
- Some standard features available in other components may not yet be supported.
- Controllers or other input devices may require manual configuration.
- Compatibility may vary across the supported game library.
- Functionality, performance and compatibility may change as development progresses.

---

## Where to put the games

Xbox games should be put under the `retrodeck/roms/xbox360/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
| ----------- | ----------- |
| `.iso` | Standard disc image formatted as Xbox ISO |
| `Extensionless` | Xbox Live Arcade (XBLA) game |
| `.xex` | Xbox 360 executable |
| `.zar` | ZAR archive |
| `.commands` | Per-game Xenia command-line options |


---

## Does Xenia Edge require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                                        | Comment                                 |
|--------|------------------------------------------------------------------|-----------------------------------------|
| Data   | `~/.var/app/net.retrodeck.retrodeck/data/Xenia/`                 |                                         |
| ROMs   | `retrodeck/roms/xbox360/`                                       |                                         |
| Cache   | `retrodeck/storage/Xenia/cache/`                                        |                                         |
| Cache0   | `retrodeck/storage/Xenia/cache0/`                                          |                                         |
| Cache1   | `retrodeck/storage/Xenia/cache1/`                                        |                                         |
| Library   | `retrodeck/storage/Xenia/library/`                                         |                                         |
| Content   | `retrodeck/saves/xbox360/Xenia/content/`                                         |    Saves                                     |
| Plugins   | `retrodeck/mods/Xenia/plugins/`                                         |                                         |


---


## Xenia Edge: Keyboard Shortcuts

| **Shortcuts** | **Action** | **Comment** |
|:--|:--|:--|
| <kbd>Alt</kbd> + <kbd>F4</kbd> | Exit Application |   |
| <kbd>F11</kbd> / <kbd>ESC</kbd> | Exit Fullscreen |   |

---

## How-to: Play Xbox 360 Games in RetroDECK?

### Single-disc games

Place single-disc ISO images directly in the `retrodeck/roms/xbox360/` directory.

### Xbox Live Arcade (XBLA)

⚠️ **Warning:** Do **not** add a file extension to the XBLA game. ⚠️

XBLA games are typically stored as folders containing extensionless files with cryptic filenames.

#### Step 1: Find the Game File

- Open the XBLA game folder and navigate to the deepest level. The extensionless file at the deepest level is the actual game file.

**Example:**

```
Castle Crashers/
└── 584108B7/
    └── 000D0000/
        └── F9432A7FE407A3C196C95D0FFD4A540937FD4EEC58
```

- Move the extensionless game file to: `retrodeck/roms/xbox360/`

**Example:** 

`584108B7/000D0000/F9432A7FE407A3C196C95D0FFD4A540937FD4EEC58` is moved and renamed to `Castle Crashers (XBLA)`

The final result should be: `retrodeck/roms/xbox360/Castle Crashers (XBLA)`

- After confirming the file was moved successfully, you can delete the original XBLA folders.

---

## How-to: Create a `.commands` File for Per-Game Options

Xenia Edge supports per-game command-line options using a `.commands` file.

### Step 1: Create the `.commands` File

Create a `.commands` file with the **same name** as the game file. Place it in the same directory as the game under `retrodeck/roms/xbox360/`.

```
<GAME_NAME>.commands
<GAME_NAME>.iso
```

**Example:**

```
retrodeck/roms/xbox360/Gears of War.commands
retrodeck/roms/xbox360/Gears of War.iso
```

### Step 2: Add Command-Line Options

Open the `.commands` file with a text editor and add the options you want to use for that game.

For available options and game-specific recommendations, refer to the Xenia Edge documentation and other Xenia resources.

**Example**

`Gears of War.commands`

```
--user_language=5
```

Sets the game language to Spanish.

---

## How-to: Add Plugins (mods)

**NOTE:** Plugins can be game version and region-specific. Each game uses a unique `TITLEID` identifier.

- Extract the plugin archive (`.zip`, `.7z` etc.) to obtain the `.xex` file(s).
- Open the plugins directory: `retrodeck/mods/Xenia/plugins/`
- Identify the game's `TITLEID` using one of these methods:

**Xenia Edge:** 

Right-click the game → **Config Overrides** — the `TITLEID` appears in the game name.

**File system:** 

Match the game folder name under:`retrodeck/saves/xbox360/Xenia/content/<TITLEID>`

- Place the `.xex` file(s) into the matching `TITLEID` folder:`retrodeck/mods/Xenia/plugins/<TITLEID>/`
- Launch the game - compatible plugins load automatically.

---