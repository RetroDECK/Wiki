# PSX: Converting DexDrive (.GME) Saves to RetroArch (.SRM)

This guide explains how to convert [PlayStation DexDrive](https://en.wikipedia.org/wiki/DexDrive) `.gme` memory card backups into the `.srm` format used by RetroArch.

---

## MemcardRex Memory Card Manager

The **Windows version** of MemcardRex is currently the only fully released build.

The **Linux version** is still in development, but the Windows version can be run on Linux using **Wine**.

- [MemcardRex – Windows Version](https://github.com/ShendoXT/memcardrex)

- [MemcardRex – Linux Version](https://github.com/robxnano/memcardrex/tree/linux/)
  
---

## Steps

### 1. Download and Extract MemcardRex

Download the MemcardRex archive for your platform and extract it to any directory.

### 2. Launch MemcardRex

- Run the `MemcardRex`.
- In the menu bar, choose **File → Open**.  
- Select the `.gme` memory card backup you want to convert.

### 3. Save and convert to .srm

- Go to **File → Save As…**  
- Save the file using the game’s name with the `.mcr` extension: `<Game_Name_Here>.mcr`
- After saving, rename the resulting `.mcr` file to the `.srm` format:

**Example:** 

`Tomba.mcr → Tomba.srm`

### 4. Place the File in the RetroDECK PSX Saves Directory

Move the newly created `.srm` file into your RetroDECK PSX save directory:

`retrodeck/saves/psx/`

They should now be usable by RetroArch.
