# Spreading Files over multiple drivers

<img src="../../wiki_icons/pixelitos/folder-blue-games.png" width="50">

## About Symbolic Links

Spreading files over other:

- Internal drives
- External drives
- NAS
- Other

Can be done with `Symbolic Links`.

For more technical details - read more about [Symbolic Links on Wikipedia](https://en.wikipedia.org/wiki/Symbolic_link)

If you are used to a Windows environment `Symbolic Links` are NOT the same as  `Windows Shortcuts`.

A `Symbolic Link` act as the file was in the place you are linking to and the software will interpret it as such.

We later plan to add tools for this in the `RetroDECK Configurator` to make it even easier.

### 🛑 Symbolic Link: Warnings 🛑

- You should not have RetroDECK open while creating the `Symbolic Links` as the games are loaded on launch.
- When you have successfully added a `Symbolic Link` to RetroDECK and got it working, remember to never unplug / disconnect the drive while RetroDECK is running.
- If you are making changes to your `Symbolic Links` you must close down RetroDECK, make the changes and then relaunch it.

### Other recommendations

If you are on a Steam Deck, this needs to be done in `Desktop Mode`.

On the drive you want to add to RetroDECK. it is recommended to create a folder or folders games per system, so you don't need to create `Symbolic Link` for each game. But rather just make a link to the folder.

If you want to spread games for one system over a multiple of drivers with `Symbolic Links` you can do so, but naming the folders so you understand what drive they are coming from could be a good recommendation.

Each folder added will then be interpreted as a subfolder within RetroDECK's ES-DE interface under the system you have added the `Symbolic Link` to.

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

## Advanced Usage: Replacing entire systems or functions with Symbolic Links

**Disclaimer: Not Recommended!**

Do not do this unless you really really know what you are doing and this might be a hit or miss depending on your system.

This is not something we recommend doing as upcoming updates to RetroDECK could cause link breakage.

But if you like to tinker and experiment feel free to try it on your own.

### The usecase
You could in theory delete a system folder lets say `~/retrodeck/roms/wii/` or even a `~/retrodeck/roms/saves/wii/` or `~/retrodeck/roms/states/wii/` or what ever folder or subfolder under `~/retrodeck/` and put is as a symbolic link to another place.

**Example Wii:**

Create a symbolic link from `~/retrodeck/roms/` to a folder on an external drive called `wii` and only have those games stored on an external drive permanently.

