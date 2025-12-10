# Spreading Files Across Multiple Drives

<img src="../../../wiki_icons/pixelitos/drive-harddisk.png" width="75">

## Using Symbolic Links

Symbolic Links (symlinks) allow you to distribute files across multiple storage locations-internal drives, external drives, or NAS-while making them appear as if they reside in a single location. RetroDECK and other software interpret these links as standard folders or files.

---

## Warnings and Best Practices

- **Close RetroDECK before creating symbolic links.** RetroDECK loads games at launch, so modifying links while it is open can cause errors.
- **Never disconnect a drive while RetroDECK is running** if it contains symbolic links.
- **Organize by system.** Create a dedicated folder for each console or system on the target drive, rather than creating links for individual games.
- **Use clear folder names** to easily identify the source drive.
- **Subfolder behavior.** Each linked folder will appear as a subfolder in RetroDECK's ES-DE interface under the corresponding system.
- **Flexible linking.** You can also link individual games, save files, or other data.

---

## Creating Symbolic Linked Folders

**Note:** You can create multiple symbolic links pointing to subfolders under a main folder to manage large game libraries across several drives.

**Example: Linking Wii Games**

You have Wii backups on an external drive named `2nddrive` in a folder called `wii games`, and you want them accessible in: `~/retrodeck/roms/wii/`

Full path to external folder: `/var/mnt/2nddrive/wii games`

### Steps to Create the Link

1. Navigate to `~/retrodeck/roms/wii/`.
2. Right-click an empty area and select **Create New → Link to File or Folder**.
3. Click the file browser button and choose **Folder**.
4. Locate `/var/mnt/2nddrive/wii games`, highlight it, and click **OK**.

**Result:**

The symbolic link will appear in the ES-DE interface as a subfolder: `wii games` 
All games in the external folder will now be accessible through RetroDECK.

---

## Replacing Entire ROM Folders with Symbolic Links (Advanced)

**Disclaimer:** This approach is **not recommended** unless you are experienced. RetroDECK updates may break links.

### Use Case

Instead of linking individual subfolders, you can replace a complete system folder (e.g., `~/retrodeck/roms/wii/`) with a symbolic link pointing to an external drive: `/var/mnt/2nddrive/wii games` to `~/retrodeck/roms/wii/wii games`.

This stores all Wii games on the external drive permanently and maintains a seamless experience within RetroDECK. Only attempt this if you are comfortable managing symlinks and handling potential update conflicts.

---