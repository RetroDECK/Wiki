# ScummVM - General Guide

<img src="../../../wiki_images/logos/scummvm-logo.svg" width="100" alt="Scummvm logo">

ScummVM is a engine which allows you to run classic graphical adventure and role-playing games.

---

### ScummVM Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| ScummVM - Freeware Games | [Link](https://www.scummvm.org/games) |
| ScummVM - Game Compatibility and ID List | [Link](https://www.scummvm.org/compatibility) |
| ScummVM - Github | [Link](https://github.com/scummvm/scummvm) |
| ScummVM - Guides | [Link](https://docs.scummvm.org/en/v2.7.1/) |
| ScummVM - Webpage | [Link](https://www.scummvm.org/) |
| ScummVM - Wiki | [Link](https://wiki.scummvm.org/index.php?title=Main_Page) |


---

### Where to put the games?

ScummVM games should be put into the `retrodeck/roms/scummvm/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .scummvm   | ScummVM game directory and file |

---


## Does ScummVM require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type | Directory                  | Comment |
|:----:|:---------------------------|:-------|
| Cloud Root | `retrodeck/storage/scummvm/cloud_root` | `rootpath` |
| Extra | `retrodeck/storage/scummvm/extra` | `extrapath` |
| Icons | `retrodeck/storage/scummvm/icons` | `iconspath` |
| ROMs | `retrodeck/roms/scummvm/` | |
| Saves RA | `retrodeck/saves/scummvm/` | ScummVM (RetroArch Core) |
| Saves SA | `retrodeck/saves/scummvm/scummvm-sa` | ScummVM (Standalone) |
| Screenshots | `retrodeck/screenshots/scummvm` |  |
| Themes | `retrodeck/storage/scummvm/themes` | `themepath` |

---

## How-to: Add ScummVM Games to RetroDECK

This guide applies to both **ScummVM (Standalone)** and the **ScummVM RetroArch Core**.

**Example**

The following example uses *Beneath a Steel Sky*.

### Creating `.scummvm` Files

- **Add the Game Files:** Move the uncompressed game files into the ScummVM ROM directory: `retrodeck/roms/scummvm/Beneath a Steel Sky/`
- ***Rename the directory;** Add `.scummvm` to the directory name: `retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/`
- **Create the `.scummvm` File:**  Create an empty text file inside the game directory. Name it exactly the same as the directory, including `.scummvm`: `retrodeck/roms/scummvm/Beneath a Steel Sky.scummvm/Beneath a Steel Sky.scummvm`
- **Add the ScummVM identifier (ScummVM ID and ScummVM ID Key):** Open the `.scummvm` file and add **one identifier on the first line only**. Use the **ScummVM ID** and do not add spaces, additional lines, or other text.

`Beneath a Steel Sky.scummvm` contents:

```
sky:sky
```

- **Launch the game:** The game should now be detected and launch correctly in RetroDECK.

---

