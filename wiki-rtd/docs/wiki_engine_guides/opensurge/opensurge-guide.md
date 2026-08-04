# Guide: Open Surge

<img src="../../../wiki_images/logos/opensurge-logo.png" width="150" alt="Open Surge logo">

Open Surge is a 2D retro game engine in the spirit of classic 16-bit Sonic platformers of the 1990s.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Open Surge Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Open Surge Webpage | [Link](https://opensurge2d.org/) |
| Open Surge GitHub | [Link](https://github.com/alemart/opensurge) |


---

## Where to put the games

Open Surge games should be put under the `retrodeck/roms/opensurge/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .surge      | RetroDECK Open Surge file |
| .lev        | Open Surge level file |
| .qst        | Open Surge quest file |

---

## Does Open Surge require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/opensurge/`                             |               |

---

## How-to: Enable the Surge the Rabbit Game in RetroDECK?

<img src="../../../wiki_images/logos/opensurge-surge.png" width="75" alt="Opensurge Surge logo">

You can enable the built-in **Surge the Rabbit** game using one of two methods below.

---

### Method 1: Using the Configurator

1. Open **RetroDECK Configurator**
2. Navigate to **Settings** → **Open Surge: Surge the Rabbit**
3. Press the **Enable** button (when enabled, a file named `Surge the Rabbit.surge` is created at: `retrodeck/roms/opensurge/`).
4. **Restart RetroDECK**.
5. In **ES-DE**, navigate to **Surge the Rabbit** in the Open Surge submenu.
6. Press **Select** or **F1** → **Edit this Game's Metadata** → **Alternative Emulator**.
7. Change from `Open Surge (Game) (Standalone)` to `Open Surge - Surge the Rabbit (Standalone)`.
8. **Launch the game**.

---

### Method 2: Manual Setup

1. Navigate to `retrodeck/roms/opensurge/`.
2. Right-click and create a new file named `Surge the Rabbit.surge`.
3. **Start RetroDECK**.
4. In **ES-DE**, navigate to **Surge the Rabbit** in the Open Surge submenu.
5. Press **Select** or **F1** → **Edit this Game's Metadata** → **Alternative Emulator**.
6. Change from `Open Surge (Game) (Standalone)` to `Open Surge - Surge the Rabbit (Standalone)`.
7. **Launch the game**.

---

## How-to: Disable the Surge the Rabbit Game in RetroDECK?

You can disable the built-in **Surge the Rabbit** game using one of two methods below.

---

### Method 1: Using the Configurator

1. Open **RetroDECK Configurator**.
2. Navigate to **Settings** → **Open Surge: Surge the Rabbit**.
3. Press the **Disable** button.
4. The `Surge the Rabbit.surge` file is automatically deleted from: `retrodeck/roms/opensurge/`.

---

### Method 2: Manual Removal

1. Navigate to `retrodeck/roms/opensurge/`.
2. Delete the file `Surge the Rabbit.surge`.

---

## How to Play Open Surge Games in RetroDECK

<img src="../opensurge-speedy.png" width="150" alt="Speedy Folder">

This guide uses **Speedy The Rollerskater** as an example, but the steps apply to any Open Surge game.

1. Download the game of your choice.
2. Extract the archive if the download is in a compressed format (`.zip`, `.tar.gz`, etc...)
3. Move the extracted folder to: `retrodeck/roms/opensurge/`
4. Ensure the path matches this pattern: `retrodeck/roms/opensurge/<your_game_folder>/`*(Example: `retrodeck/roms/opensurge/Speedy The Rollerskater/`)*
5. Rename the folder so it ends with `.surge`: `retrodeck/roms/opensurge/Speedy The Rollerskater.surge`
6. The game now appears in **ES-DE** under the Open Surge submenu
7. **Launch the game**

---