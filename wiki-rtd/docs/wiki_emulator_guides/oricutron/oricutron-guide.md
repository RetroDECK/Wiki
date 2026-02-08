# Guide: Oricutron

<img src="../../../wiki_images/logos/oricutronicon-logo.png" width="150">

Oricutron is a experimental Oric-1/Atmos/Telestrat and Pravetz 8D emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Oricutron Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Oricutron GitHub | [Link](https://github.com/pete-gordon/oricutron) |

---

## Where to put the games

Oricutron games should be put under the `retrodeck/roms/oric/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description          |
|-------------|--------------------|
| .dsk        | Disk image          |
| .ort        | Orictrons file      |
| .tap        | Tape image          |
| .wav        | Audio tape file     |


---

## Does Oricutron require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/oric/`                             |               |

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

### Emulator Keys

| Key         | Action                                      |
|------------|--------------------------------------------|
| AltGr      | Additional modifier                          |
| F1         | Bring up the menu                           |
| F10        | Start/Stop AVI capture                       |
| F11        | Copy text screen to clipboard               |
| F12        | Paste                                       |
| F2         | Go to debugger/monitor                      |
| F3         | Reset button (NMI)                          |
| F4         | Hard reset                                  |
| F5         | Toggle FPS                                  |
| F6         | Toggle warp speed                            |
| F7         | Save all modified disks                     |
| F8         | Toggle fullscreen                           |
| F9         | Save tape output                            |
| Help       | Show guide                                  |
| PrtSc      | Save screen as BMP                           |
| Shift+F4   | Jasmin reset                                |
| Shift+F7   | Save all modified disks to new disk images |

### Menus Keys

| Key         | Action                |
|------------|----------------------|
| Backspace  | Go back              |
| Cursors    | Navigate             |
| Enter      | Perform option       |
| Escape     | Exit menus           |
| Mouse      | Navigate/select      |

### Debugger/Monitor Keys

| Key   | Action                                           |
|-------|-------------------------------------------------|
| F1    | Go to the menu                                  |
| F10   | Step over code                                  |
| F11   | Step over code without tracing into subroutines|
| F12   | Skip instruction                                |
| F2    | Return to the emulator                           |
| F3    | Toggle console/debug output/memwatch            |
| F4    | Toggle VIA/AY/disk info/Twilighte board regs   |
| F9    | Reset cycle count                               |

### Console Keys

| Key      | Action          |
|----------|----------------|
| Up/Down  | Command history |

### Memwatch Keys

| Key               | Action                       |
|------------------|-------------------------------|
| Hex digits        | Enter address                 |
| Page Up/Page Down | Page up/down                  |
| S                 | Toggle split mode             |
| Tab               | Switch windows in split mode  |
| Up/Down           | Scroll (+Shift for page up/down) |

---