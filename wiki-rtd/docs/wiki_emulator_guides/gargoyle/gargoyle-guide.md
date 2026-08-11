# Guide: Gargoyle

<img src="../../../wiki_images/logos/gargoyle-logo.webp" width="150" alt="Gargoyle logo">

Gargoyle is an interactive fiction emulator that supports all major IF game formats by bundling multiple interpreters into a single application. Since interactive fiction is distributed in a variety of portable game file formats, Gargoyle eliminates the need for a separate interpreter for each one. 

RetroDECK uses Gargoyle both as an **Infocom Z-Machine** emulator and an **Interactive Fiction** emulator.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Gargoyle Links

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
| Z-machine ROMs   | `retrodeck/roms/zmachine/`                       |   Infocom Z-machine *Only Infocom Z-machine formats*    |
| Interactive Fiction ROMs   | `retrodeck/roms/if/`                             |   Interactive Fiction *All formats*         |
| Saves   | `retrodeck/saves/if/gargoyle/`                             |   Corresponds to  `gamedata`    |
| Themes   | `retrodeck/storage/gargoyle/themes/`                             |  Corresponds to  `themes`        |

 
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

## List of Common Interactive Fiction Commands

These commands are common in interactive fiction games.

**Note:** Command availability and behavior are determined by the individual game or interpreter. Not all commands are supported by all games.

### General

| Command | Action | Description |
|---------|--------|-------------|
| `save` | Save game | Saves the current game state to a save file. |
| `restore` | Load game | Restores a previously saved game state. |
| `undo` | Undo turn | Reverses the most recent game turn, when supported. |
| `restart` | Restart game | Restarts the current game from its initial state. |
| `quit` | Quit game | Exits the current game. |
| `again` | Repeat command | Repeats the previous command, when supported. |
| `oops` | Correct word | Corrects a misspelled or incorrectly entered word, when supported. |
| `transcript` | Transcript | Starts, stops, or manages a transcript of the game session, when supported. |
| `script` | Transcript | Alternative command used by some interpreters/games to control transcripts. |
| `score` | Show score | Displays the current score, when the game uses scoring. |
| `full score` | Detailed score | Displays a more detailed score breakdown, when supported. |
| `inventory` | Show inventory | Lists objects currently carried by the player. |
| `i` | Show inventory | Common abbreviation for `inventory`. |
| `look` | Look around | Describes the current location or scene. |
| `l` | Look around | Common abbreviation for `look`. |
| `examine <object>` | Examine object | Provides a detailed description of an object. |
| `x <object>` | Examine object | Common abbreviation for `examine`. |
| `help` | Help | Displays game-specific instructions or help. |
| `hint` | Hint | Requests a hint, when the game provides a hint system. |
| `about` | About | Displays information about the game, author, or release. |
| `version` | Version | Displays game or interpreter version information, when supported. |
| `verbose` | Verbose descriptions | Requests full room descriptions rather than abbreviated descriptions. |
| `brief` | Brief descriptions | Requests shorter room descriptions. |
| `superbrief` | Minimal descriptions | Requests the shortest available room descriptions, when supported. |
| `wait` | Wait | Advances the game by one turn without performing another action. |
| `z` | Wait | Common abbreviation for `wait`. |
| `restart` | Restart | Begins the game again from the start. |
| `undo` | Undo | Reverts the previous turn, if the interpreter/game supports undo. |
| `again` | Repeat | Repeats the previous command, if supported. |
| `restore` | Restore save | Loads a previously saved game. |
| `save` | Save state | Stores the current game state for later restoration. |
| `quit` | Quit | Ends the current game session. |

---

###  Direction Commands

| Command | Action |
|---------|--------|
| `north` / `n` | Move north |
| `south` / `s` | Move south |
| `east` / `e` | Move east |
| `west` / `w` | Move west |
| `northeast` / `ne` | Move northeast |
| `northwest` / `nw` | Move northwest |
| `southeast` / `se` | Move southeast |
| `southwest` / `sw` | Move southwest |
| `up` / `u` | Move up |
| `down` / `d` | Move down |
| `in` | Move inside |
| `out` | Move outside |

---

### Object Commands

| Command | Action |
|---------|--------|
| `take <object>` | Pick up an object. |
| `get <object>` | Common alternative to `take`. |
| `drop <object>` | Drop an object. |
| `open <object>` | Open an object. |
| `close <object>` | Close an object. |
| `lock <object>` | Lock an object. |
| `unlock <object>` | Unlock an object. |
| `enter <object>` | Enter a vehicle, location, or other object. |
| `exit` | Leave a vehicle, location, or enclosed object. |
| `put <object> in <container>` | Put an object inside a container. |
| `put <object> on <surface>` | Put an object on a surface. |
| `remove <object>` | Remove an object from a container or surface. |
| `give <object> to <person>` | Give an object to another character. |
| `show <object> to <person>` | Show an object to another character. |
| `ask <person> about <topic>` | Ask a character about a topic. |
| `tell <person> about <topic>` | Tell a character about a topic. |
| `talk to <person>` | Talk to another character, when supported. |

---

###  Action Commands

| Command | Action |
|---------|--------|
| `read <object>` | Read an object. |
| `search <object>` | Search an object or location. |
| `listen` | Listen to the surroundings. |
| `smell` | Smell the surroundings. |
| `touch <object>` | Touch an object. |
| `feel <object>` | Feel an object. |
| `use <object>` | Use an object, when supported. |
| `push <object>` | Push an object. |
| `pull <object>` | Pull an object. |
| `turn <object>` | Turn an object. |
| `wear <object>` | Wear an object. |
| `remove <object>` | Remove worn equipment. |
| `eat <object>` | Eat an object. |
| `drink <object>` | Drink an object. |

---

## Saving and Loading Games

All Gargoyle saves managed by RetroDECK are stored under the `retrodeck/saves/if/gargoyle` directory and use the `.glksave` format..

Gargoyle saves are **not** stored under `retrodeck/saves/zmachine`, even if your game files are stored in the `retrodeck/roms/zmachine` directory.

The `retrodeck/saves/zmachine/` directory is used by RetroArch Z-machine cores. 

Gargoyle supports only a single save location, so its saves are stored under `retrodeck/saves/if/gargoyle`.


### Saving a Game

<img src="../gargoyle-save-window.png" width="800" alt="Gargoyle Save Prompt">

Type `save` in Gargoyle to open the save prompt. 

The save prompt may display a path such as:

`/home/<user>/.var/app/net.retrodeck.retrodeck/data/gargoyle/<game_name_dir>/<prompt_location>`

However, RetroDECK redirects Gargoyle's save data to:

`retrodeck/saves/if/gargoyle/<game_name_dir>/<save_file>`

Gargoyle creates a separate directory for each game using the game's full filename.

**Example:**

`zork1.z3`

The save directory is:

`retrodeck/saves/if/gargoyle/zork1.z3/`

The game directory is created automatically when the save prompt is opened.

Because save files are specific to each game, use descriptive names that indicate the location or situation in the game. 

**For example:**

`retrodeck/saves/if/gargoyle/zork1.z3/`

- `eaten-by-a-grue.glksave`
- `basement.glksave`

### Loading a Game

To load a saved game:

1. Type `restore` in Gargoyle.
2. Select the desired `.glksave` file.
3. Confirm the selection to load the game.

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


