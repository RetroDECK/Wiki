# Guide: SDL2TRS

<img src="../../../wiki_images/logos/sdltrs-logo.png" width="150">

SDL2TRS is a Tandy TRS-80 Model I/III/4/4P emulator and the SDL2 version of SDLTRS.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### SDL2TRS Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| SDLTRS / SDL2TRS GitLab | [Link](https://gitlab.com/jengun/sdltrs/-/tree/sdl2) |
| SDLTRS Documentation | [Link](https://jengun.gitlab.io/sdltrs/) |

---

## Where to put the games

Microvision games should be put under the `retrodeck/roms/trs-80/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

The emulator supports the following file formats, grouped by where they are used.

### Files used by ES-DE

In most cases you will use these.

| File Format | Description |
|-------------|-------------|
| .cmd | Executable command file |
| .dsk | Floppy disk image |

### Files supported within the emulator

| File Format | Description |
|-------------|-------------|
| .cas | Cassette bitstream file |
| .cpt | Cassette pulse train file |
| .wav | Audio cassette file (8-bit mono PCM) |


---

## Does SDL2TRS require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/microvision/`                             |               |

---



## SDLTRS User Manual

This section is derived from SRLTRS Documentation and has been restructured to
conform to the RetroDECK wiki format. Only Linux-specific and RetroDECK-relevant
content is included.

All credit goes to **Jens Guenther** / **Tim Mannr** / **libSDL Team** / **Mark Grebe**

---

## Controls: Keyboard ⌨️ & Mouse 🖱️ 

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

The emulator controls are **hardcoded**.

---

### Emulator Controls

| Host Key | Function |
|---------|----------|
| 1-6 (Numeric Keypad) | P1-P5 and ESC for TCS Genie IIIs |
| Alt-'+' or Alt-9 | Increase Z80 CPU clock rate (use with caution) |
| Alt-'-' or Alt-8 | Decrease Z80 CPU clock rate (use with caution) |
| Alt-. | Show or hide mouse pointer in emulator window |
| Alt-0…7 | Insert floppy disk into drive 0…7 |
| Alt-A | Select all on TRS-80 emulator screen |
| Alt-B | Toggle LED display at bottom of emulator screen |
| Alt-C | Copy from TRS-80 emulator to clipboard |
| Alt-D or Alt-F | Floppy disk management |
| Alt-E | Emulator settings |
| Alt-End or Alt-Q | Quit SDLTRS |
| Alt-Enter | Toggle fullscreen/windowed mode |
| Alt-G | Stringy floppy wafer management |
| Alt-H | Hard disk management |
| Alt-Home | Set windowed mode scaling to lowest size |
| Alt-I | Display (interface) settings |
| Alt-Insert | Insert key via virtual keyboard |
| Alt-J | Joystick GUI |
| Alt-K | Show key bindings |
| Alt-L | Load emulator state |
| Alt-M or Alt-Comma | Main menu |
| Alt-N | Toggle turbo mode |
| Alt-O | Miscellaneous settings |
| Alt-P or Pause | Pause or resume emulator |
| Alt-Page Down | Increase windowed mode scaling |
| Alt-Page Up | Decrease windowed mode scaling |
| Alt-R | Read configuration |
| Alt-S | Save emulator state |
| Alt-Shift-0…7 | Remove floppy disk from drive 0…7 |
| Alt-Shift-Delete | Hard reset |
| Alt-T | Cassette (tape) management |
| Alt-U | Toggle sound output (mute/unmute) |
| Alt-V | Paste from clipboard to emulator |
| Alt-W | Write configuration |
| Alt-X | Execute selected CMD file in emulator |
| Alt-Y | Toggle scanlines in emulator window |
| Alt-Z | Enter zbx debugger or toggle fullscreen mode |
| Alt-Backspace | Reset Z80 CPU clock rate to default |
| Alt-Delete | Soft reset |
| Control | TRS-80 Control key or TCS Genie IIs/SpeedMaster P1 |
| Delete or Home | TRS-80 Clear key |
| Down Arrow | TRS-80 Down Arrow key |
| End | TRS-80 Shifted Down Arrow; Control key in some software; ESC (Genie III); P2 (Genie IIs/SpeedMaster) |
| ESC | TRS-80 Break key |
| F1 | TRS-80 F1 key |
| F2 | TRS-80 F2 key |
| F3 | TRS-80 F3 key |
| F4 | TRS-80 Model 4/4P Caps Lock or F4 key |
| F5 or Scroll Lock | TRS-80 '@' key or F5 key |
| F6 | TRS-80 shifted '0' or F6 key |
| F7 | Main menu |
| F8 | Quit SDLTRS |
| F9 | Enter zbx debugger or toggle fullscreen mode |
| F10 | Soft reset |
| F11 | Show key bindings |
| F12 | Toggle turbo mode |
| Insert | TRS-80 Underscore key |
| Left Arrow or Backspace | TRS-80 Left Arrow key |
| Num Lock | Toggle numeric keypad joystick emulation |
| Page Down | TRS-80 Right Shift key |
| Page Up | TRS-80 Left Shift key |
| Print Screen | Save screenshot as BMP |
| Right Arrow or Tab | TRS-80 Right Arrow key |
| Shift-F7 | Emulator settings |
| Shift-F8 | Abort SDLTRS |
| Shift-F9 | Toggle CPU panel in window title bar |
| Shift-F10 | Hard reset |
| Shift-F11 | Save screenshot as BMP |
| Shift-F12 | Reset Z80 CPU clock rate to default |
| Shift-Page Down | Switch to slow Z80 CPU clock speed |
| Shift-Page Up | Switch to fast Z80 CPU clock speed |
| Shift-Print Screen | Copy screen to printer file |
| Shift-Up Arrow | TRS-80 ESC key |
| Up Arrow | TRS-80 Up Arrow key (caret/exponent) |

---

### Keyboard Behavior and Special Mappings

In **Model III, Model 4, and Model 4P** modes, the **left and right Shift keys are distinct**. In **Model I** mode, both Shift keys map to the same function.

The keys **`[ \ ] ^ _ { | } ~`** activate otherwise unused positions in the TRS-80 keyboard matrix (**address bit 3, data bits 3-7**). Behavior depends on the keyboard driver:
- Some drivers map these keys to their corresponding ASCII characters.
- Others ignore them entirely.

In certain configurations, the **Shift state may be reversed**. For example, pressing `[` may produce `{`. This can be corrected using the **`-shiftbracket`** or **`-noshiftbracket`** options.

The **Insert** key maps to the same keyboard matrix position as **underscore** (**address bit 3, data bit 7**), allowing it to function both shifted and unshifted. With many TRS-80 keyboard drivers, one of these mappings produces **ASCII 0x7F**.

---

### Numeric Keypad Joystick Emulation

When **Num Lock is disabled**, the numeric keypad emulates an **Alpha Products joystick**:

- **Directional keys**
  - `2` (KP_Down) - Down  
  - `4` (KP_Left) - Left  
  - `6` (KP_Right) - Right  
  - `8` (KP_Up) - Up  

- **Diagonal movement**
  - `1` (KP_End) - Down-Left  
  - `3` (KP_Page_Down) - Down-Right  
  - `7` (KP_Home) - Up-Left  
  - `9` (KP_Page_Up) - Up-Right  

- **Fire button**
  - `0` (KP_Insert) or `5` (KP_Begin)


---
