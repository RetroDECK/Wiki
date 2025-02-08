# How do I move RetroDECK to a new device

<img src="../../wiki_icons/pixelitos/folder-blue-sync.png" width="50">

### Information on moving RetroDECK

RetroDECK mainly contains two folders:

`retrodeck/`: This is the important folder that contains all the user content like ROMs, BIOS, saves, screenshots, scraped data, etc. The location of this folder is where you have chosen to install it, such as /home/retrodeck, sd-card, external drive, or other locations.

`~/.var/app/net.retrodeck.retrodeck:` This folder contains the core flatpak, component data and config files. In most cases, you don't need to copy it over because the new device might be different from the old one, and the settings will likely be incorrect anyway.

### What should I move?

You can take two paths when you move:

#### Only Move retrodeck/ (Recommended)

**Downsides:** 

You will lose all your custom emulator settings inside the emulators (like graphic settings or other tweaks). Everything else stays intact, and you will need to go through the initial setup again and point to the moved ~/retrodeck folder.

**Upsides:** 

You will get the benefits of a fresh install with all your content intact (saves, games, scraped data, etc.), and you minimize the risks of any file conflicts.

#### Move both ~/.var/app/net.retrodeck.retrodeck and retrodeck/ (Not Recommended)

This method is not recommended, but if you know what you are doing, you can try it.

**Downsides:** 

You will need to reinstall things from the configurator like controller profiles. You must ensure you are on the same version before you update, and if there are any version conflicts within ~/.var/app/net.retrodeck.retrodeck, things could break.

**Upsides:** 

No first setup is needed. Just move and play, and all custom emulator settings you have made are moved.

### Prerequisites: Before You Move

- Ensure your old device is running the latest version of RetroDECK and has been started at least once.
- If your device has a battery (like a Steam Deck or Laptop), make sure it has enough charge to complete the file transfer. It's best to stay plugged in to avoid data loss. (If your old device is broken but you can still access the data, you can skip this step.)
- If you're using a new SD Card, it's always a requirement to format it before use.

## The Ultra Quickguide

1. Copy the `retrodeck&` folder to the new device in the location you want it.
2. Install RetroDECK on the new device and point it to the new location of `retrodeck/` during the first setup.
3. Proceed with the installation as normal.

## Quickguide - Steam Deck

**Note:**

Depending on how comfortable you are using the Steam Deck controller to navigate the desktop environment, this may be easier to do with a connected mouse and keyboard.

1. Switch the Steam Deck to Desktop Mode: `Steam button` -> `Power` -> `Switch to Desktop`.
2. Back up the existing `retrodeck/` folder.
3. Install RetroDECK on the new Steam Deck via Discover.
4. Do not launch RetroDECK on the new device until you have copied over the backed-up folders.
5. Copy the backup folder to the same (or new) location on the new device.
6. Launch RetroDECK on the new device and point it to the `retrodeck/` folder location during installation. If you moved `retrodeck/` to the SD card, select the SD card option. If you moved it to internal storage (home/), select that option. Otherwise, choose the custom option.

[Steam Deck - Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)

## Quickguide - Linux Desktop

1. Back up the existing `retrodeck/` folder.
2. Install RetroDECK from Flathub via your application manager on the new PC.
3. Do not launch RetroDECK on the new device until you have copied over the backed-up folders.
4. Copy the backup folder to the same (or new) location on the new device.
5. Launch RetroDECK on the new device and point it to the `retrodeck/` folder location during installation. If you moved `retrodeck/` to home/ select the internal storage option. Otherwise, choose the custom option.

After that, you can continue following the installation guide if you are unsure on progress the installation, here:

[Linux Desktop - Installation and Updates](../wiki_devices/linux_desktop/linux-install.md) if you are unsure on progress the installation.


## Full step by step guide - Steam Deck - Only Move retrodeck/

You will need to back up the main `retrodeck/` folder.

**Note:**

Depending on how comfortable you are using the Steam Deck controller to navigate the desktop environment, this may be easier to do with a connected mouse and keyboard.

### Step 1: Back Up Your Existing Files

1. Check the `Prerequisites: Before You Move` section above and abide by those rules.
2. First, put the Steam Deck into Desktop Mode: `Steam button` -> `Power` -> `Switch to Desktop`.
3. Open the Dolphin File Manager (the folder icon in the taskbar).
4. Navigate to where you installed retrodeck/ (this folder should contain sub-folders such as bios, roms, and saves).
5. Copy the whole `retrodeck/` folder to a device used for transfer, such as a thumb drive, microSD Card, NAS, SFTP, or use transfer software like Warpinator to send the folder to the new Steam Deck via network.

### Step 2:  Install RetroDECK on Your New Steam Deck

Follow the installation guide over at: [Steam Deck - Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)

### Step 3: Restore Your Backed-Up Files

Replace the `retrodeck/` folder on the new device with the one you copied via any of the chosen methods from Step 1.

Next time you launch RetroDECK, all your files should be there again.

## Full step by step guide - Steam Deck - Move both ~/.var/app/net.retrodeck.retrodeck and retrodeck/

You will need to back up two directories: 

the main `retrodeck/` folder and the hidden `~/.var/app/net.retrodeck.retrodeck` folder.

**Note:**

Depending on how comfortable you are using the Steam Deck controller to navigate the desktop environment, this may be easier to do with a connected mouse and keyboard.

### Step 1: Back up your existing files

The main `retrodeck/` folder.

1. Check the `Prerequisites: Before You Move` section above and abide by those rules.
2. First, put the Steam Deck into Desktop Mode: `Steam button` -> `Power` -> `Switch to Desktop`.
3. Open the Dolphin File Manager (the folder icon in the taskbar).
4. Navigate to where you installed retrodeck/ (this folder should contain sub-folders such as bios, roms, and saves).
5. Copy the whole `retrodeck/` folder to a device used for transfer, such as a thumb drive, microSD Card, NAS, SFTP, or use transfer software like Warpinator to send the folder to the new Steam Deck via network.

You will need to back up the hidden `~/.var/app/net.retrodeck.retrodeck` folder.

1. Go to your `home` folder.
2. Find the `hamburger menu` button (three horizontal lines in the top-right). Open the menu and select `Show Hidden Files` or if you are  on a keyboard, you can press `Ctrl+H`.
3. Navigate to `~/.var/app/` 
5. Copy the whole `net.retrodeck.retrodeck` folder to a device used for transfer, such as a thumb drive, microSD Card, NAS, SFTP, or use transfer software like Warpinator to send the folder to the new Steam Deck via network.
files to the new Steam Deck. Or use a transfer software like warpinator to send the folder to the new Steam Deck via network.

### Step 2: Install RetroDECK on Your New Steam Deck

Follow the installation guide over at: but don't open RetroDECK at all after you have installed it form Discover. 

Follow the installation guide over at: [Steam Deck - Installation and Updates](../wiki_devices/steamdeck/steamdeck-start.md)  but don't open RetroDECK at all after you have installed it from Discover.


### Step 3: Restore your backed up files

Replace the `retrodeck/` & `~/.var/app/net.retrodeck.retrodeck` folder on the new device with the one you copied via any of the chosen methods from Step 1. In both cases, you can safely overwrite all existing files.

Next time you launch RetroDECK, all your files and configurations should be there again.

Don't forget to install the official controller profiles and other things via the configurator!
