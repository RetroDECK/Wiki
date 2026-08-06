# Guide: Oricutron

<img src="../../../wiki_images/logos/oricutronicon-logo.png" width="150" alt="Oricutronicon logo">

Oricutron is a experimental Oric-1/Atmos/Telestrat and Pravetz 8D emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Oricutron Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Oricutron GitHub | [Link](https://github.com/pete-gordon/oricutron) |

---

## Where to put the games

Oricutron games should be put under the `retrodeck/roms/oric/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| File Format | Description          |
|-------------|--------------------|
| .dsk        | Disk image          |
| .ort        | Orictrons file      |
| .tap        | Tape image          |
| .wav        | Audio tape file     |


---

## Does Oricutron require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/oric/`                             |               |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

### Main Emulator Controls

| Key | Action |
|-----|--------|
| `<kbd>AltGr</kbd>` | Additional modifier |
| `<kbd>F1</kbd>` | Bring up the menu |
| `<kbd>F2</kbd>` | Go to debugger/monitor |
| `<kbd>F3</kbd>` | Reset button (NMI) |
| `<kbd>F4</kbd>` | Hard reset |
| `<kbd>F5</kbd>` | Toggle FPS display |
| `<kbd>F6</kbd>` | Toggle warp speed |
| `<kbd>F7</kbd>` | Save all modified disks |
| `<kbd>F8</kbd>` | Toggle fullscreen |
| `<kbd>F9</kbd>` | Save tape output |
| `<kbd>F10</kbd>` | Start/stop AVI capture |
| `<kbd>F11</kbd>` | Copy screen text to clipboard |
| `<kbd>F12</kbd>` | Paste |
| `<kbd>PrtSc</kbd>` | Save screen as BMP |
| `<kbd>Help</kbd>` | Show guide |
| `<kbd>Shift+F4</kbd>` | Jasmin reset |
| `<kbd>Shift+F7</kbd>` | Save disks to new images |

---

### Menu Navigation

| Key | Action |
|-----|--------|
| `<kbd>Backspace</kbd>` | Go back |
| `<kbd>Cursors</kbd>` | Navigate options |
| `<kbd>Enter</kbd>` | Perform selection |
| `<kbd>Escape</kbd>` | Exit menus |
| `<kbd>Mouse</kbd>` | Navigate/select |

---

### Debugger/Monitor Keys

| Key | Action |
|-----|--------|
| `<kbd>F1</kbd>` | Open menu |
| `<kbd>F2</kbd>` | Return to emulator |
| `<kbd>F3</kbd>` | Toggle console/debug output/memwatch |
| `<kbd>F4</kbd>` | Toggle VIA/AY/disk info/Twilighte registers |
| `<kbd>F9</kbd>` | Reset cycle count |
| `<kbd>F10</kbd>` | Step over code |
| `<kbd>F11</kbd>` | Step without tracing subroutines |
| `<kbd>F12</kbd>` | Skip instruction |

---

### Console & Memwatch

| Context | Key | Action |
|---------|-----|--------|
| Console | `<kbd>Up/Down</kbd>` | Command history |
| Memwatch | `<kbd>Hex digits</kbd>` | Enter address |
| Memwatch | `<kbd>Page Up/Down</kbd>` | Page navigation |
| Memwatch | `<kbd>S</kbd>` | Toggle split mode |
| Memwatch | `<kbd>Tab</kbd>` | Switch windows (split mode) |
| Memwatch | `<kbd>Up/Down</kbd>` | Scroll |
| Memwatch | `<kbd>Shift+Up/Down</kbd>` | Page scroll |

---