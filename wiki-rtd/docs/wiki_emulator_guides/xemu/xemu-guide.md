# xemu - General Guide

<img src="../../../wiki_images/logos/xemu-logo.png" width="150">

A free and open-source application that emulates the original Microsoft Xbox game console.

---

### xemu Links:

[xemu Compatibility Guide](https://xemu.app/#compatibility)

[xemu FAQ](https://xemu.app/docs/faq/)

[xemu Github](https://github.com/xemu-project/xemu)

[xemu Webpage](https://xemu.app/)

---

## Where to put the games
Xbox games should be put under the `retrodeck/roms/xbox/` directory.

## What file formats are supported?

```
.iso (formated as xiso)
```

### What is xiso's and how to create them? 

Read more here: [xemu - Disc Images ](https://xemu.app/docs/disc-images/)

## Does MelonDS require BIOS or Firmware?

```
mcpx_1.0.bin
Complex_4627v1.03.bin
```

### Where to put the BIOS and Firmware?

Directly into the folder

`retrodeck/bios/`

**Example:**

`retrodeck/bios/mcpx_1.0.bin`

## Folder structure

| Type    | Folder                 |      Comment     | 
|  :---:  |  :---:                 |      :---:     |
| Saves Folder |`retrodeck/saves/xbox/xemu/` |                               |  
| BIOS Folder | `retrodeck/bios/` | |
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/xemu/`         |   `xemu.toml` , shaders folder, shader_cache_list|
| Shaders Folder |`~/.var/app/net.retrodeck.retrodeck/config/xemu/shaders/`         |   |
| Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/xemu/`         |   |

## Guide - Enable Multiplayer 

<img src="../../../wiki_images/emulators/xemu/xemu-input-menu.png" width="600">

1. Open `RetroDECK Configurator` -> `xemu`
2. Navigate to `Machine` -> `Settings` -> `Input`
3. Each controller port 1 to 4 has it's drop-down menu. 
4. Enable the ports you want and select the corresponding controllers in each port that you want to use.

If you are using Steam Input the selection would be:

```
Player 1: Steam Virtual Gamepad 1
Player 2: Steam Virtual Gamepad 2
Player 3: Steam Virtual Gamepad 3
Player 4: Steam Virtual Gamepad 4
```
## LithiumX - Xbox Manager

[LithiumX](https://github.com/Ryzee119/LithiumX) is a simple dashboard Xbox Manger with various features. It can allow you to browse your savefiles and have other features.
