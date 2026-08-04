# Guide: OpenSurge

<img src="../../../wiki_images/logos/opensurge-logo.png" width="150" alt="Opensurge logo">

Open Surge is a 2D retro game engine in the spirit of classic 16-bit Sonic platformers of the 1990s.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### OpenSurge Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| OpenSurge Webpage | [Link](https://opensurge2d.org/) |
| OpenSurge GitHub | [Link](https://github.com/alemart/opensurge) |


---

## Where to put the games

OpenSurge games should be put under the `retrodeck/roms/opensurge/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .surge      | RetroDECK OpenSurge file |
| .lev        | OpenSurge level file |
| .qst        | OpenSurge quest file |

---

## Does OpenSurge require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/opensurge/`                             |               |

---

## How-to: Play the Built-in Surge the Rabbit Game in RetroDECK?

<img src="../../../wiki_images/logos/opensurge-surge.png" width="75" alt="Opensurge Surge logo">

You can enable the built-in **Surge the Rabbit** game using one of two methods below.

---

### Method 1: Using the Configurator

1. Open **RetroDECK Configurator**
2. Navigate to **Settings** → **Open Surge: Surge the Rabbit**
3. Toggle the game **enabled**.(When enabled, a file named `Surge the Rabbit.surge` is created at: `retrodeck/roms/opensurge/`)
4. **Restart RetroDECK**
5. In **ES-DE**, navigate to **Surge the Rabbit** in the *Open Surge* submenu
6. Press **Select** or **F1** → **Edit this Game's Metadata** → **Alternative Emulator**
7. Change from `Open Surge (Game) (Standalone)` to `Open Surge - Surge the Rabbit (Standalone)`
8. **Launch the game**

---

### Method 2: Manual Setup

1. Navigate to `retrodeck/roms/opensurge/`
2. Right-click and create a new file named `Surge the Rabbit.surge`
3. **Start RetroDECK**
4. In **ES-DE**, navigate to **Surge the Rabbit** in the *Open Surge* submenu
5. Press **Select** or **F1** → **Edit this Game's Metadata** → **Alternative Emulator**
6. Change from `Open Surge (Game) (Standalone)` to `Open Surge - Surge the Rabbit (Standalone)`
7. **Launch the game**

---

## How to Disable Surge the Rabbit Game

You can disable the built-in **Surge the Rabbit** game using one of two methods below.

---

### Method 1: Using the Configurator

1. Open **RetroDECK Configurator**
2. Navigate to **Settings** → **Open Surge: Surge the Rabbit**
3. Toggle the game **disabled**
4. The `Surge the Rabbit.surge` file is automatically deleted from: `retrodeck/roms/opensurge/`

---

### Method 2: Manual Removal

1. Navigate to `retrodeck/roms/opensurge/`
2. Delete the file `Surge the Rabbit.surge`

---