# Citra Core: Adding DLC

The RetroArch Citra core **does not natively support DLC or updates**. However, you can transfer them from a defunct standalone Citra (Citra-SA) installation.  

**Note:** Some games may not detect DLC correctly due to limitations in the RetroArch Citra core. 

Using a more recent standalone alternative like Azahar is recommended if updates or DLC are required.

---

## Step 1: Install DLC/Updates in Standalone Citra

1. Open **Citra-SA** (standalone or fork version).
2. Go to **File → Install CIA...** and select the `.cia` file for the update or DLC.
3. This installs the update/DLC within the standalone emulator.

---

## Step 2: Locate the Installed DLC/Update Folders

Navigate to the Citra save directory on your system, typically: `<Citra Install Location>/sdmc/Nintendo 3DS/00000000000000000000000000000000/00000000000000000000000000000000/<titleID>/`

Inside this folder, you will find subfolders corresponding to:

- Updates
- Saves & Installed Applications
- DLCs

---

## Step 3: Copy Folders to RetroDECK

1. Copy the **Updates** and **Installed DLC** folders from the standalone Citra directory.
2. Paste them into the corresponding RetroDECK Citra core save folder: `retrodeck/saves/n3ds/citra/sdmc/Nintendo 3DS/00000000000000000000000000000000/00000000000000000000000000000000/<titleID>/` 
3. Launch the game in RetroDECK. The core should now recognize the updates/DLC from the copied folders.

---
