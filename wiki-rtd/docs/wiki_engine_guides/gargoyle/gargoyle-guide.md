# Guide: Gargoyle

<img src="../../../wiki_images/logos/gargoyle-logo.webp" width="150" alt="Gargoyle logo">

Gargoyle is an interactive fiction engine that supports all major IF game formats by bundling multiple interpreters into a single application. Since interactive fiction is distributed in a variety of portable game file formats, Gargoyle eliminates the need for a separate interpreter for each one. 

RetroDECK uses Gargoyle both as an **Infocom Z-Machine** emulator and an **Interactive Fiction** engine.


⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Gargoyle Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Gargoyle Github | [Link](https://github.com/garglk/garglk/) |
| Gargoyle Github - Themes Guide| [Link](https://github.com/garglk/garglk/blob/master/THEMES.md) |
| Gargoyle Webpage | [Link](https://ccxvii.net/gargoyle/) |
| Historical Source Github | [Link](https://github.com/historicalsource?tab=repositories) |


---

## Where to put the games

Gargoyle games should be put under the `retrodeck/roms/zmachine/` directory for **Infocom Z-Machine** or the `retrodeck/roms/if/` directory for **Interactive Fiction**.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

Gargoyle supports a wide range of interactive fiction game formats.

| Format | Engine | File Extensions |
|---|---|---|
| Adventure System | AdvSys | `.dat` |
| AGT (Adventure Game Toolkit) | Agility | `.agx`, `.d$$` |
| Alan 2 / Alan 3 | Alan 2/3 | `.acd`, `.a3c` |
| Infocom Z-machine | Bocfel | `.z1`, `.z2`, `.z3`, `.z4`, `.z5`, `.z6`, `.z7`, `.z8`, `.zblorb`, `.zlb` |
| Glulx | Git | `.ulx`, `.blb`, `.gblorb`, `.glb` |
| Glulx | Glulxe | `.ulx`, `.blb`, `.gblorb`, `.glb` |
| Hugo | Hugo | `.hex`, `.hdx`, `.blorb` |
| JACL | JACL | `.j2`, `.jacl` |
| Level 9 Adventures | Level 9 | `.l9` |
| Magnetic Scrolls | Magnetic | `.mag`, `.gfx` |
| ADRIFT | Scare | `.taf` |
| Scott Adams Adventures | ScottFree | `.dat`, `.saga` |
| TADS 2 / TADS 3 | TADS 2/3 | `.gam`, `.t3` |

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

### Game Commands

| Command | Action | Description |
| --- | --- | --- |
| `about` | About | Displays information about the game, author, or release. |
| `again` | Repeat | Repeats the previous command, when supported. |
| `brief` | Brief descriptions | Requests shorter room descriptions. |
| `full score` | Detailed score | Displays a more detailed score breakdown, when supported. |
| `help` | Help | Displays game-specific instructions or help. |
| `hint` | Hint | Requests a hint, when the game provides a hint system. |
| `quit` | Quit | Ends the current game session. |
| `restart` | Restart | Begins the game again from the start. |
| `restore` | Load save | Loads a previously saved game. |
| `save` | Save | Stores the current game state for later restoration. |
| `score` | Show score | Displays the current score, when the game uses scoring. |
| `script` / `transcript` | Transcript | Starts, stops, or manages a transcript of the game session, when supported. |
| `superbrief` | Minimal descriptions | Requests the shortest available room descriptions, when supported. |
| `undo` | Undo | Reverts the previous turn, if the interpreter/game supports undo. |
| `verbose` | Verbose descriptions | Requests full room descriptions rather than abbreviated descriptions. |
| `version` | Version | Displays game or interpreter version information, when supported. |
| `wait` / `z` | Wait | Advances the game by one turn without performing another action. |

---

### Movement Commands

| Command | Action | Description |
| --- | --- | --- |
| `down` / `d` | Move down | Moves the player downward. |
| `east` / `e` | Move east | Moves the player east. |
| `enter <object>` | Enter | Enters a vehicle, location, or other object. |
| `exit` | Exit | Leaves a vehicle, location, or enclosed object. |
| `in` | Move inside | Moves the player inside. |
| `north` / `n` | Move north | Moves the player north. |
| `northeast` / `ne` | Move northeast | Moves the player northeast. |
| `northwest` / `nw` | Move northwest | Moves the player northwest. |
| `out` | Move outside | Moves the player outside. |
| `south` / `s` | Move south | Moves the player south. |
| `southeast` / `se` | Move southeast | Moves the player southeast. |
| `southwest` / `sw` | Move southwest | Moves the player southwest. |
| `up` / `u` | Move up | Moves the player upward. |
| `west` / `w` | Move west | Moves the player west. |

---

### Object Commands

| Command | Action | Description |
| --- | --- | --- |
| `close <object>` | Close object | Closes an object. |
| `drop <object>` | Drop object | Drops an object. |
| `get <object>` / `take <object>` | Take object | Picks up an object. |
| `lock <object>` | Lock object | Locks an object. |
| `open <object>` | Open object | Opens an object. |
| `put <object> in <container>` | Put in container | Puts an object inside a container. |
| `put <object> on <surface>` | Put on surface | Puts an object on a surface. |
| `remove <object>` | Remove object | Removes an object from a container or surface. |
| `unlock <object>` | Unlock object | Unlocks an object. |

---

### Character Commands

| Command | Action | Description |
| --- | --- | --- |
| `ask <person> about <topic>` | Ask about topic | Asks a character about a topic. |
| `give <object> to <person>` | Give object | Gives an object to another character. |
| `inventory` / `i` | Show inventory | Lists objects currently carried by the player. |
| `show <object> to <person>` | Show object | Shows an object to another character. |
| `talk to <person>` | Talk | Talks to another character, when supported. |
| `tell <person> about <topic>` | Tell about topic | Tells a character about a topic. |

---

### Sensory Commands

| Command | Action | Description |
| --- | --- | --- |
| `examine <object>` / `x <object>` | Examine object | Provides a detailed description of an object. |
| `feel <object>` | Feel object | Feels an object. |
| `listen` | Listen | Listens to the surroundings. |
| `look` / `l` | Look around | Describes the current location or scene. |
| `search <object>` | Search | Searches an object or location. |
| `smell` | Smell | Smells the surroundings. |
| `touch <object>` | Touch object | Touches an object. |

---

### Action Commands

| Command | Action | Description |
| --- | --- | --- |
| `drink <object>` | Drink object | Drinks an object. |
| `eat <object>` | Eat object | Eats an object. |
| `pull <object>` | Pull object | Pulls an object. |
| `push <object>` | Push object | Pushes an object. |
| `read <object>` | Read object | Reads an object. |
| `remove <object>` | Remove worn equipment | Removes worn equipment. |
| `turn <object>` | Turn object | Turns an object. |
| `use <object>` | Use object | Uses an object, when supported. |
| `wear <object>` | Wear object | Wears an object. |

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

`/home/<user>/.var/app/net.retrodeck.retrodeck/data/gargoyle/gamedata/<game_name_dir>/<prompt_location>`

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

## Gargoyle: Game-Specific Configuration

Gargoyle can automatically load a game-specific `.ini` file when the game is launched.

### Game-Specific INI

Place `<game_name>.ini` beside the game file. 

**Note:** INI filename must correspond to the game filename exactly.

```
retrodeck/roms/if/
                            ├── MyGame.ulx
                            └── MyGame.ini
```

Or if you are using sub directories under `retrodeck/roms/if/`:

```
retrodeck/roms/if/MyGame
        ├── MyGame.ulx
        └── MyGame.ini
```
    
**Example:**

`Zork1.z3` →  `Zork1.ini`

Example content of `Zork1.ini`:

```
theme My Game Dark
propsize 22
monosize 18
leading 30
```

For all INI file options, refer to the official Gargoyle GitHub repository linked above.

---

### Adding Custom Themes to a Game

Gargoyle themes are JSON files. Install the theme in `retrodeck/storage/gargoyle/themes/`.

You will need to create a custom game `.ini` file for the games you want to use a specific theme (see above).

Example:

```
retrodeck/storage/gargoyle/themes/
                └── My Cool Dark Theme.json
```

A theme contains color definitions, for example:

```
    {
      "name": "My Cool Dark Theme",
      "window": "#202124",
      "border": "#5f6368",
      "caret": "#ffffff",
      "link": "#8ab4f8",
      "more": "#fdd663",
      "scrollbar": {
        "fg": "#5f6368",
        "bg": "#202124"
      },
      "text_buffer": {
        "default": {
          "fg": "#f1f3f4",
          "bg": "#202124"
        }
      },
      "text_grid": {
        "default": {
          "fg": "#f1f3f4",
          "bg": "#202124"
        }
      }
    }
```

Add the theme to the game's custom `.ini`. The theme name must match the JSON file's `"name"` property and is case-sensitive.

**Example:**

 `Zork1.ini`

```
theme My Cool Dark Theme
```

For all more theme documentation refer to the official Gargoyle Theme Guide linked above.

### Built-in Themes

Gargoyle includes built-in themes accessible via configuring the INI file.

```
theme Blue
theme Lectrote Dark
theme Lectrote Sepia
theme Lectrote Slate
theme Pencil
theme Zoom
theme dark
theme light
theme system
```

---

## Inform: Making your own Interactive Fiction

If you want to make your own Interactive Fiction games to play within RetroDECK you can use **Inform**. It is a domain-specific programming language and integrated development environment (IDE) for creating interactive fiction, compiling games for the Z-machine and Glulx virtual machines.  

It uses a natural-language-inspired syntax and can produce portable story files such as `.z8`, `.ulx` and `.gblorb` for Gargoyle.

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


