# Spreading Files over multiple drivers

<img src="../../wiki_icons/pixelitos/folder-blue-games.png" width="50">

Spreading files over other:

- Internal drives
- External drives
- NAS
- Other

Can be done with `Symbolic Links`.

For more technical details - read more about [Symbolic Links on Wikipedia](https://en.wikipedia.org/wiki/Symbolic_link)

If you are used to a Windows environment `Symbolic Links` are NOT the same as  `Windows Shortcuts`-

A `Symbolic Link` act as the file was in the place you are linking to and the software will interpret it as such.

We later plan to add tools for this in the `RetroDECK Configurator` to make it even easier.

### 🛑 Warning 🛑

- You can not have RetroDECK open while doing creating the `Symbolic Links` as the games are loaded on boot.
- You should after adding a `Symbolic Links` and got it working never unplug the external drive from RetroDECK while it is running.
- If you are making changes to the always `Symbolic Links` close down RetroDECK, make the changes and then relaunch it.

### Other recommendations

- If you are on a Steam Deck, this needs to be done in `Desktop Mode`.
- On the drive you want to add it is recommended to create a folder for in this example the Wii games so you don't need to create a symbolic link for each game and just do one link to the folder to be interpret as a subfolder within RetroDECK's ES-DE interface.

## Creating Symbolic Links: Example Wii Games

This example will be written from the standpoint of the KDE Desktop environment used by SteamOS and many others systems. If you are on Gnome/XFCE or any other desktop environment the procedure should be similar else consult your desktop environment website.

**Example problem:**

You have several backups of Wii games you want to add to `~/retrodeck/roms/wii/`.

Let's say that those backups are on an external called `2nddrive` drive in in a folder called `wii games`.

So the path when you go into the folder from the Desktop GUI could be (in this example):

`/var/mnt/2nddrive/wii games`


### Creating from the GUI

1. Go into your `~/retrodeck/roms/wii/` folder.
2. `Right Click` on an empty space and press `Create New` - `Link to file or folder`.
3. Press the open file browser button.
4. Press `Folder`.
5. Navigate to the `/var/mnt/2nddrive/wii games` folder (or where ever you store the games).
6. Highlight the `wii games` folder and press OK.

Now the Symbolic Link has been created and will show up in the ES-DE interface for RetroDECK.

When you navigate to wii game section the `wii games` folder should be accessible from the ES-DE menu as a subfolder with all the games.

### Other files

You can also link other files this way such as individual games instead of folders or save files etc...

## Advanced Usage: Replacing entire systems or functions with Symbolic Links (Not Recommended!!)
This is not something we recommend doing as it cause link breakage with with upcoming updates to RetroDECK.

Do not do this unless you really really know what you are doing and this might be a hit or miss depending on your system.

You could in theory delete a system folder lets say `~/retrodeck/roms/wii/` or even a `~/retrodeck/roms/saves/wii/` or `~/retrodeck/roms/states/wii/` or what ever folder or subfolder under `~/retrodeck/` and put is as a symbolic link to another place.

**Example Wii:**

Create a symbolic link from `~/retrodeck/roms/` to a folder on an external drive called `wii` and only have those games stored on an external drive permanently.

