# Guide: sm2-emu

<img src="../../../wiki_images/logos/sm2-emu-logo.svg" width="150" alt="sm2-emu logo">

sm2-emu is an open-source emulator for Sega's Model 2 arcade platform. 

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### sm2-emu Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| sm2-emu GitHub | [Link](https://github.com/dmanlfc/sm2-emu/tree/main/) |

---

## ⚠️ Bleeding-Edge Component ⚠️ 

**Warning:** This component is under rapid development and may be unstable.

- Performance may vary across hardware configurations.
- Some standard features available in other components may not yet be supported.
- Controllers or other input devices may require manual configuration.
- Compatibility may vary across the supported game library.
- Functionality, performance and compatibility may change as development progresses.

---

## Where to put the games?

sm2-emu games should be put under the `retrodeck/roms/model2/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| File Format | Description |
|-------------|-------------|
| .zip        | Zip Archive |
| .7z        | 7 Zip Archive |


---

## Does sm2-emu require BIOS, Game Data or Firmware files?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/model2/`                          |               |
| Saves   | `retrodeck/saves/model2/sm2-emu`                 |               |
| Textures   | `retrodeck/texture_packs/sm2-emu/textures`    | textures/<game>/load textures/<game>/dump            |


---


## sm2-emu: Controls

These are the default controls shipped by sm2-emu

| Action | Xbox - Steam Deck / Playstation / Nintendo | Input |
|---|---|---|
| Button 1 | A / Cross (×) / B | JOY1 |
| Button 2 | B / Circle (○) / A | JOY2 |
| Button 3 | X / Square (□) / Y | JOY3 |
| Button 4 | Y / Triangle (△) / X | JOY4 |
| Up | D-pad ↑ | POV1UP |
| Down | D-pad ↓ | POV1DOWN |
| Left | D-pad ← | POV1LEFT |
| Right | D-pad → | POV1RIGHT |
| Start | Menu / Options / + | JOY7 |
| Coin | View / Share / Select | JOY5 |
| Gear up | RB / R1 / R | JOY11 |
| Gear down | LB / L1 / L | JOY10 |

### Official Documentation Controls

This is a copy from:

https://github.com/dmanlfc/sm2-emu/blob/main/README.md

Every game is playable with either a standard gamepad or keyboard.
Wheels, light guns and a mouse are supported as the preferred devices for the
driving and gun titles, but none is required. Gamepads are read through SDL's
gamepad layer, so anything with a mapping works without configuration. 

The first pad to connect is player 1, pads can come and go while the game runs, and
`--list-gamepads` shows what was recognised. Face buttons are read by position
rather than by label.

| Gamepad | Function |
|---------|----------|
| D-pad or left stick | Stick, steering and other centred analog axes |
| A B X Y | Buttons 1 to 4 (also VR 1-4 on titles with view buttons) |
| Left / right shoulder | Buttons 3/4; also gear/shift down/up on racers |
| Left / right trigger | Brake / accelerate on driving titles |
| Either stick | Aim on gun titles (no mouse needed); right trigger fires, left trigger reloads |
| Start / Back | Start / insert a coin |
| Guide + Start / Back | Service / Test (operator menus) |

The keyboard is live at the same time, so a second player can join on it and
the operator controls stay reachable without a pad:

| Keys | Function |
|------|----------|
| `5` `6` | Coin 1, coin 2 |
| `1` `2` | Start 1, start 2 |
| `9` `0` | Service, test |
| Arrows, `Z` `X` `C` `V` | Player 1 stick and buttons |
| `W` `A` `S` `D`, `G` `H` `J` `K` | Player 2 stick and buttons |
| Arrows | Steering and other centred analog axes |
| `Left Ctrl` / `Left Alt` | Accelerate / brake (driving titles) |
| `F1` / `F2` | Shift up / down (Indy 500, Manx TT family) |
| `F1`–`F4`, `F5` | Gears 1 to 4, neutral (on gate-gearbox titles) |
| `B` `N` `M` `,` | VR / view buttons 1 to 4 (on titles that have them) |
| `Space` | Desert Tank forward/reverse shift |
| Arrows + `Left Ctrl` | Aim + fire on gun titles (no mouse needed) |
| `Escape` | Return to the game picker (quits if launched with no picker) |
| `P` | Pause |
| `F6` / `F7` | Quick-save / quick-load the current game's state |
| `F8` | Toggle the FPS counter |
| `F9` | Quit |
| `F10` | Toggle the settings menu |
| `F11` | Toggle fullscreen (`Cmd+F` on macOS, where the OS reserves F11) |
| `F12` | Save a screenshot |
| `Tab` (held) | Fast-forward |

**Virtual On** (a twin-stick cabinet) on the keyboard: `W`/`A`/`S`/`D` are the
left lever, the arrow keys the right lever, `Q`/`E` the left shot/dash and
`Right Shift`/`Right Ctrl` the right shot/dash. On a pad the two analog sticks
are the levers, the triggers the shots and the bumpers the dashes.


