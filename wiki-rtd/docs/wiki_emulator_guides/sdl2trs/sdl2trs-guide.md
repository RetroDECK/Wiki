# Guide: SDL2TRS

<img src="../../../wiki_images/logos/sdltrs-logo.png" width="150" alt="Sdltrs logo">

SDL2TRS is a Tandy TRS-80 Model I/III/4/4P emulator.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### SDL2TRS Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| SDL2TRS GitLab | [Link](https://gitlab.com/jengun/sdltrs/-/tree/sdl2) |
| SDL2TRS Documentation | [Link](https://jengun.gitlab.io/sdltrs/) |

---

## Where to put the games

Tandy TRS-80 games should be put under the `retrodeck/roms/trs-80/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

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

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes

- `level2.rom` - minimum requirement, system ROM
- `boot.dsk` - minimum requirement, boot disk image


**Additional BIOS:** For other computer-specific BIOS or peripheral firmware, please consult the [SDL2TRS GitLab repository](https://gitlab.com/jengun/sdltrs/) linked above.

### Where to put the SDL2TRS BIOS?

Directly into the folder

`retrodeck/roms/trs-80`


---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/trs-80/`                             |               |
| BIOS   | `retrodeck/roms/trs-80/`                             |  BIOS Files needs to be with the ROMs   |

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

### Emulator Hotkeys

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>,</kbd> or <kbd>Alt</kbd> + <kbd>M</kbd> | Open main menu |
| <kbd>Alt</kbd> + <kbd>E</kbd> | Emulator settings |
| <kbd>Alt</kbd> + <kbd>I</kbd> | Display/interface settings |
| <kbd>Alt</kbd> + <kbd>O</kbd> | Miscellaneous settings |
| <kbd>Alt</kbd> + <kbd>K</kbd> or <kbd>F11</kbd> | Show keyboard shortcuts |
| <kbd>Alt</kbd> + <kbd>Enter</kbd> | Toggle fullscreen |
| <kbd>Alt</kbd> + <kbd>.</kbd> | Show/hide mouse cursor |
| <kbd>Alt</kbd> + <kbd>Home</kbd> | Minimum window scale |
| <kbd>Alt</kbd> + <kbd>Page Up</kbd> | Decrease window scale |
| <kbd>Alt</kbd> + <kbd>Page Down</kbd> | Increase window scale |

### Storage

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>0</kbd>-<kbd>7</kbd> | Insert floppy into drive 0-7 |
| <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>0</kbd>-<kbd>7</kbd> | Eject floppy from drive 0-7 |
| <kbd>Alt</kbd> + <kbd>D</kbd> or <kbd>Alt</kbd> + <kbd>F</kbd> | Floppy disk manager |
| <kbd>Alt</kbd> + <kbd>H</kbd> | Hard disk manager |
| <kbd>Alt</kbd> + <kbd>T</kbd> | Cassette (tape) manager |
| <kbd>Alt</kbd> + <kbd>G</kbd> | Stringy Floppy wafer manager |

### State & Configuration

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>S</kbd> | Save emulator state |
| <kbd>Alt</kbd> + <kbd>L</kbd> | Load emulator state |
| <kbd>Alt</kbd> + <kbd>W</kbd> | Write configuration |
| <kbd>Alt</kbd> + <kbd>R</kbd> | Read configuration |

### Performance & Execution

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>N</kbd> or <kbd>F12</kbd> | Toggle turbo mode |
| <kbd>Alt</kbd> + <kbd>+</kbd> or <kbd>Alt</kbd> + <kbd>9</kbd> | Increase Z80 clock speed |
| <kbd>Alt</kbd> + <kbd>-</kbd> or <kbd>Alt</kbd> + <kbd>8</kbd> | Decrease Z80 clock speed |
| <kbd>Alt</kbd> + <kbd>Backspace</kbd> or <kbd>Shift</kbd> + <kbd>F12</kbd> | Restore default Z80 clock speed |
| <kbd>Shift</kbd> + <kbd>Page Up</kbd> | Fast CPU preset |
| <kbd>Shift</kbd> + <kbd>Page Down</kbd> | Slow CPU preset |

**Warning:** Changing the Z80 clock speed may affect software compatibility and timing.

### Reset & Exit

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>Delete</kbd> or <kbd>F10</kbd> | Soft reset |
| <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Delete</kbd> or <kbd>Shift</kbd> + <kbd>F10</kbd> | Hard reset |
| <kbd>Alt</kbd> + <kbd>End</kbd> or <kbd>Alt</kbd> + <kbd>Q</kbd> | Quit SDLTRS |
| <kbd>F8</kbd> | Quit SDLTRS |
| <kbd>Shift</kbd> + <kbd>F8</kbd> | Abort SDLTRS immediately |

### Clipboard & Screenshots

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>C</kbd> | Copy emulator screen to clipboard |
| <kbd>Alt</kbd> + <kbd>V</kbd> | Paste clipboard into emulator |
| <kbd>Alt</kbd> + <kbd>A</kbd> | Select all emulator screen text |
| <kbd>Print Screen</kbd> | Save screenshot (BMP) |
| <kbd>Shift</kbd> + <kbd>Print Screen</kbd> | Copy screen to printer file |
| <kbd>Shift</kbd> + <kbd>F11</kbd> | Save screenshot (BMP) |

---

### Miscellaneous

| **Shortcut** | **Action** |
|:--|:--|
| <kbd>Alt</kbd> + <kbd>B</kbd> | Toggle LED display |
| <kbd>Alt</kbd> + <kbd>U</kbd> | Toggle sound |
| <kbd>Alt</kbd> + <kbd>Y</kbd> | Toggle scanlines |
| <kbd>Alt</kbd> + <kbd>P</kbd> or <kbd>Pause</kbd> | Pause/resume emulation |
| <kbd>Alt</kbd> + <kbd>X</kbd> | Execute selected CMD file |
| <kbd>Alt</kbd> + <kbd>J</kbd> | Open joystick configuration |
| <kbd>Alt</kbd> + <kbd>Z</kbd> or <kbd>F9</kbd> | Open ZBX debugger / toggle fullscreen |
| <kbd>Shift</kbd> + <kbd>F9</kbd> | Toggle CPU panel in title bar |

---

### TRS-80 Keyboard Mapping

| **Host Key** | **TRS-80 Function** |
|:--|:--|
| <kbd>Ctrl</kbd> | Control (or **P1** on Genie IIs/SpeedMaster) |
| <kbd>Esc</kbd> | Break |
| <kbd>Delete</kbd>, <kbd>Home</kbd> | Clear |
| <kbd>Insert</kbd> | Underscore |
| <kbd>←</kbd>, <kbd>Backspace</kbd> | Left Arrow |
| <kbd>→</kbd>, <kbd>Tab</kbd> | Right Arrow |
| <kbd>↑</kbd> | Up Arrow (Caret/Exponent) |
| <kbd>↓</kbd> | Down Arrow |
| <kbd>Shift</kbd> + <kbd>↑</kbd> | ESC |
| <kbd>Page Up</kbd> | Left Shift |
| <kbd>Page Down</kbd> | Right Shift |
| <kbd>End</kbd> | Shifted Down Arrow, Control (some software), ESC (Genie III), or P2 (Genie IIs/SpeedMaster) |
| <kbd>F1</kbd>-<kbd>F6</kbd> | TRS-80 function keys |
| <kbd>F4</kbd> | Caps Lock (Model 4/4P) or F4 |
| <kbd>F5</kbd>, <kbd>Scroll Lock</kbd> | `@` or F5 |
| <kbd>Num Lock</kbd> | Toggle keypad joystick mode |
| <kbd>1</kbd>-<kbd>6</kbd> (Numeric Keypad) | **P1-P5** and **ESC** for TCS Genie III |

---

### Keyboard Behavior

- On **Model III**, **Model 4**, and **Model 4P**, the **left** and **right Shift** keys are mapped independently.
- On **Model I**, both Shift keys perform the same function.

The following host keys occupy otherwise unused positions in the TRS-80 keyboard matrix:

`[  \  ]  ^  _  {  |  }  ~`

Depending on the active keyboard driver, these keys may:

- Produce their corresponding ASCII characters.
- Be ignored entirely.

Some keyboard layouts invert bracket shifting (for example, `[` produces `{`). This behavior can be controlled using:

- `-shiftbracket`
- `-noshiftbracket`

The **Insert** key shares the same keyboard matrix position as **Underscore**, allowing both shifted and unshifted operation. With many keyboard drivers, one mapping generates **ASCII 0x7F**.

---

### Numeric Keypad Joystick

When **Num Lock** is **Off**, the numeric keypad emulates an **Alpha Products joystick**.

| **Key** | **Direction** |
|:--|:--|
| <kbd>8</kbd> | ↑ Up |
| <kbd>2</kbd> | ↓ Down |
| <kbd>4</kbd> | ← Left |
| <kbd>6</kbd> | → Right |
| <kbd>7</kbd> | ↖ Up-Left |
| <kbd>9</kbd> | ↗ Up-Right |
| <kbd>1</kbd> | ↙ Down-Left |
| <kbd>3</kbd> | ↘ Down-Right |
| <kbd>0</kbd> or <kbd>5</kbd> | Fire |

---