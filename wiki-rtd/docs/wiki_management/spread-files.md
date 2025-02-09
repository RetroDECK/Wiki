# Spreading Files over Multiple Drives

<img src="../../wiki_icons/pixelitos/drive-harddisk.png" width="75">

## Information about Symbolic Links

To spread files over different drives (internal, external, NAS, etc.), you can use Symbolic Links. 

These links act as if the file is in the place you are linking to, and the software will interpret it as such.

**Warnings and Recommendations**

- Do not have RetroDECK open while creating the `Symbolic Links` as the games are loaded on launch. Close RetroDECK before making changes to your `Symbolic Links`, then relaunch it.
- Never unplug/disconnect the drive while RetroDECK is running if you have added a `Symbolic Links`.
- Create a folder for each system on the drive you want to add to RetroDECK, so you don't need to create a `Symbolic Links` for each game.
- Name the folders clearly to understand which drive they are coming from.
- Each folder added will be interpreted as a subfolder within RetroDECK's ES-DE interface under the system you have added the `Symbolic Links` to.
- You can also link other files this way, such as individual games instead of folders or save files, etc.

## Guide - Creating Symbolic Linked Folders

**Note:**

If you have many games over several different drives, you can keep adding symbolic links and point them towards subfolders under the main folder.

**Example Wii Games**

You have several backups of Wii games you want to add to `~/retrodeck/roms/wii/`. 

These backups are on an external drive called `2nddrive` in a folder called `wii games`.

The full path to `2nddrive` is `/var/mnt/2nddrive/wii games`.


### How-to: Creating the Links

1. Go to `~/retrodeck/roms/wii/`.
2. Right-click on an empty space and select `Create New` - `Link to file or folder`.
3. Press the open file browser button and select `Folder`.
4. Navigate to `/var/mnt/2nddrive/wii games` and highlight the wii games folder, then press OK.

**Result** 

Now the Symbolic Link has been created and will show up in the ES-DE interface for RetroDECK. When you navigate to the Wii game section, the wii games folder should be accessible from the ES-DE menu as a subfolder with all the games.

**Path:** `~/retrodeck/roms/wii/wii games`

## Replacing Entire ROMS Systems Folders with Symbolic Links

**Disclaimer: Not Recommended!**

Do not do this unless you really know what you are doing, as upcoming updates to RetroDECK could cause link breakage. If you like to tinker and experiment, feel free to try it on your own.

**What's the Use Case?**

Instead of creating a link from `2nddrive` as a subfolder `/var/mnt/2nddrive/wii games` to `~/retrodeck/roms/wii/wii games`, you can replace the entire `~/retrodeck/roms/wii/` with the `2nddrive` and only store your Wii games on the second drive.

Just create a symbolic link from `~/retrodeck/roms/` to a folder on an external drive called `wii` and point it towards `/var/mnt/2nddrive/wii games`. This way, you will have those games stored on an external drive permanently.
