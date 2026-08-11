# Guide: Gargyole

<img src="../../../wiki_images/logos/gargoyle-logo.webp" width="150" alt="Gargoyle logo">

Gargoyle is an interactive fiction emulator that supports all major IF game formats by bundling multiple interpreters into a single application. Since interactive fiction is distributed in a variety of portable game file formats, Gargoyle eliminates the need for a separate interpreter for each one. 

RetroDECK uses Gargoyle both as an **Infocom Z-Machine** emulator and an **Interactive Fiction** emulator.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Gargyole Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Gargoyle Github | [Link](https://github.com/garglk/garglk/) |
| Gargoyle Webpage | [Link](https://ccxvii.net/gargoyle/) |
| Historical Source Github | [Link](https://github.com/historicalsource?tab=repositories) |


---

## Where to put the games

Gargoyle games should be put under the `retrodeck/roms/zmachine/` directory for **Infocom Z-Machine** or the `retrodeck/roms/if/` directory for **Interactive Fiction**.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

Gargoyle supports a wide range of interactive fiction game formats.

| Interpreter | Engine / Format | File Extensions |
|------------|------------------|------------------|
| AdvSys | Adventure System | `.dat` |
| Agility | AGT (Adventure Game Toolkit) | `.agx`, `.d$$` |
| Alan 2/3 | Alan 2 / Alan 3 | `.acd`, `.a3c` |
| Bocfel | Infocom Z-machine | `.z1`, `.z2`, `.z3`, `.z4`, `.z5`, `.z6`, `.z7`, `.z8`, `.zblorb`, `.zlb` |
| Git | Glulx | `.ulx`, `.blb`, `.gblorb`, `.glb` |
| Glulxe | Glulx | `.ulx`, `.blb`, `.gblorb`, `.glb` |
| Hugo | Hugo | `.hex`, `.hdx`, `.blorb` |
| JACL | JACL | `.j2`, `.jacl` |
| Level 9 | Level 9 Adventures | `.l9` |
| Magnetic | Magnetic Scrolls | `.mag`, `.gfx` |
| Scare | ADRIFT | `.taf` |
| ScottFree | Scott Adams Adventures | `.dat`, `.saga` |
| TADS 2/3 | TADS 2 / TADS 3 | `.gam`, `.t3` |

---

## Does Gargoyle require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/zmachine/`                       |   Infocom Z-machine *Only Infocom Z-machine formats*    |
| ROMs   | `retrodeck/roms/if/`                             |   Interactive Fiction *All formats*         |

---

## Controls: Keyboard ⌨️

Cannot be played with a controller easily and is best used with a physical keyboard.

The following keyboard shortcuts are available during gameplay.

### Gargoyle Keyboard Shortcuts

| Shortcut | Action | Description |
|----------|--------|-------------|
| <kbd>Ctrl</kbd> + <kbd>,</kbd> | Open configuration | Opens Gargoyle's configuration file in the default text editor. |
| <kbd>Ctrl</kbd> + <kbd>.</kbd> | Show configuration paths | Displays Gargoyle's configuration and theme search paths. |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd> | List themes | Displays the available Gargoyle color themes. |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd> | Save scrollback | Saves the current scrollback buffer to a file. |
| <kbd>Alt</kbd> + <kbd>Enter</kbd> | Toggle fullscreen | Switches between windowed and fullscreen mode. |
| <kbd>Ctrl</kbd> + <kbd>Q</kbd> | Quit | Exits Gargoyle. |

### Emacs-Style Text Editing

These keys provide Emacs-style editing and navigation while entering commands.

| Shortcut | Action | Description |
|----------|--------|-------------|
| <kbd>Ctrl</kbd> + <kbd>A</kbd> | Beginning of line | Moves the cursor to the beginning of the current line. |
| <kbd>Ctrl</kbd> + <kbd>B</kbd> | Move left | Moves the cursor one character to the left. |
| <kbd>Ctrl</kbd> + <kbd>D</kbd> | Delete character | Deletes the character under the cursor. |
| <kbd>Ctrl</kbd> + <kbd>E</kbd> | End of line | Moves the cursor to the end of the current line. |
| <kbd>Ctrl</kbd> + <kbd>F</kbd> | Move right | Moves the cursor one character to the right. |
| <kbd>Ctrl</kbd> + <kbd>H</kbd> | Backspace | Deletes the character to the left of the cursor. |
| <kbd>Ctrl</kbd> + <kbd>N</kbd> | Next history | Moves to the next command in input history. |
| <kbd>Ctrl</kbd> + <kbd>P</kbd> | Previous history | Moves to the previous command in input history. |
| <kbd>Ctrl</kbd> + <kbd>U</kbd> | Clear line | Deletes the current input line. |

---

## Inform: Making your own Interactive Fiction

If you want to make your own Interactive Fiction games to play within RetroDECK you can use **Inform**. It is a domain-specific programming language and integrated development environment (IDE) for creating interactive fiction, compiling games for the Z-machine and Glulx virtual machines.  

It uses a natural-language-inspired syntax and can produce portable story files such as `.z8`, `.ulx`, and `.gblorb` for Gargoyle.

| Resource | Link |
|----------|------|
| Infrom Github | [Link](https://github.com/ganelson/inform) |
| Inform Website | [Link](https://ganelson.github.io/inform-website/) |
| Inform Documentation | [Link](https://ganelson.github.io/inform-website/doc/) |
| Inform Flathub | [Link](https://flathub.org/en/apps/com.inform7.IDE) |


| Export Format | Type  | Common Use |
|--------|------------|-------------|
| `.gblorb` | Glulx Blorb | Most common for released games with images, sound, cover art and metadata. | 
| `.ulx` | Glulx Story  | Common for testing, development and text-only releases. |
| `.z8` | Z-machine Version 8 | Used for compatibility with Z-machine. |

---


