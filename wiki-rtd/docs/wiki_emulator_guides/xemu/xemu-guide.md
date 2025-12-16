# xemu - General Guide

<img src="../../../wiki_images/logos/xemu-logo.png" width="75">

A free and open-source application that emulates the original Microsoft Xbox game console.

---

### xemu Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

[xemu Compatibility Guide](https://xemu.app/#compatibility)

[xemu FAQ](https://xemu.app/docs/faq/)

[xemu Github](https://github.com/xemu-project/xemu)

[xemu Webpage](https://xemu.app/)

---

## Where to put the games

Xbox games should be put under the `retrodeck/roms/xbox/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .iso (formatted as xiso) | Standard ISO disc image formatted as Xbox ISO |

### What is xiso's and how to create them? 

Read more here: [xemu - Disc Images ](https://xemu.app/docs/disc-images/)

---

## Does xemu require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes

| File Name | Description |
|-----------|-------------|
| `mcpx_1.0.bin` | Main Xbox MCPX (Media Communications Processor) firmware. |
| `Complex_4627v1.03.bin` | Xbox security/complex firmware required for system initialization and game compatibility. |


### Where to put the BIOS and Firmware?

Directly into the folder

`retrodeck/bios/`

---

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |      Comment     | 
|  :---:  |  :---:                 |      :---:     |
| Saves Folder |`retrodeck/saves/xbox/xemu/` |                               |  
| BIOS Folder | `retrodeck/bios/` | |
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/xemu/`         |   `xemu.toml` , shaders folder, shader_cache_list|
| Shaders Folder |`~/.var/app/net.retrodeck.retrodeck/config/xemu/shaders/`         |   |
| Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/xemu/`         |   |

---

## Enable Multiplayer 

<img src="../xemu-input-menu.png" width="600">

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

---

## LithiumX - Xbox Manager

[LithiumX](https://github.com/Ryzee119/LithiumX) is a simple dashboard Xbox Manger with various features. It can allow you to browse your savefiles and have other features.

---