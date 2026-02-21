# Guide: Ironwail

<img src="../../../wiki_images/logos/quakespasm-logo.png" width="150">

Ironwail is a Quake engine fork based on QuakeSpasm.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### Ironwail Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Ironwail GitHub | [Link](https://github.com/andrei-drexler/ironwail) |


---

## Where to put the games

Ironwail Quake game files must be placed in the `retrodeck/roms/quake/ironwail/id1` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .pak| Quake PAK file |


---

## Does Ironwail require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

However, you do need copies of the official **Quake** game data (PAK files).

--- 

## Where to buy Quake?

Below is a combined table containing purchase links.

| Game / Bundle| Steam Link| GOG Link |
|--------------------------|-------------------------------------------------------------------------|------------------------------------------------------------------------|
| Quake | [Steam](https://store.steampowered.com/app/2310/Quake/)| [GOG](https://www.gog.com/en/game/quake_the_offering) |

---

## How-to: Get PAKs from your bought copy of Quake

### Where are the PAK files? - Steam

**Find the location by:**

- Right-click **Quake** in your Steam library and select: **Manage → Browse Local Files**.

Or by browsing to:

- **Steam:** `~/.local/share/Steam/steamapps/common/Quake/id1/` 

- **Steam Flatpak:** `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Quake/id1/`

---

## Directory Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type | Directory | Comment |
|:----:|:--------------------------------------|:-----------------------------------------------|
| ROMs | `retrodeck/roms/quake/ironwail/id1` | |
| Saves, Mods, Settings | `retrodeck/roms/quake/ironwail/` | |

**Note:** Ironwail currently stores all data: including saves and mods within `retrodeck/roms/quake/ironwail/id1`. The engine is hardcoded to use a single path for everything. 

The RetroDECK team has suggested to the Ironwail developers that future versions support more flexible, dynamic paths. 

If such an update is implemented, the data will be relocated to the corresponding folders within RetroDECK.


---

## How-to: Play Quake via Ironwail on RetroDECK

### Step 1: Put Required Files

**Note:** Filenames are case-sensitive. Ensure `PAK0.PAK` is renamed to `pak0.pak` and `PAK1.PAK` to `pak1.pak`.

| File Name | Description |
|-----------|----------------|
| pak0.pak| Quake PAK0 file |
| pak1.pak| Quake PAK1 file |

**Placement:**

`retrodeck/roms/quake/ironwail/id1`

### Step 2: Create Quake.pak

Create a file named `Quake.pak` in:

`retrodeck/roms/quake/`

### Step 3: Configuring the Alternative Emulator in RetroDECK

1. Launch **RetroDECK**.
2. Navigate to the **Quake** menu and **Quake** entry.
3. Open the **Edit This Game's Metadata** menu.
4. Select **Alternative Emulator**.
5. Choose **`Ironwail (Standalone)`** from the list.
6. Save.

RetroDECK will now launch Quake using Ironwail.

---
