# Creating a Component from an AppImage

This a part of the How-to: Create Components Guide

We are going to use CEMU as an example.

### Structure of an AppImage


        
## Step 1: Download the AppImage from Source

1. Download the file from Github/Website or where every you find it.
2. Put it into `retrodeck/components/`.
3. Create a folder in `retrodeck/components/<component_name>` that matches the name of the component you want to add.

**Example:**

`wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"` via Terminal.

1. Put it into `retrodeck/components/Cemu-2.6-x86_64.AppImage`.
2. Create a folder called `retrodeck/components/cemu`.


## Step 2: Permissions & Extract 

1. Open a terminal window in `retrodeck/components/`
2. Set the AppImage permissions by typing: `chmod +x "XXX.AppImage"` 
3. Then extract it by typing: `./XXX.AppImage --appimage-extract`

**Example:**

```
chmod +x "Cemu-2.6-x86_64.AppImage"`
./Cemu-2.6-x86_64.AppImage --appimage-extract
```

## Step 3: New folder and move.

A new folder called `retrodeck/components/squashfs-root` has been created.

The structure could be different from each AppImage.

**Example:**

Cemu

```
squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin
        - lib
        - share
```
        
## Step 4: Identify Key Parts in squashfs-root

**Example:**

Cemu

In the terminal move out key parts 

```
mv squashfs-root/apprun-hooks cemu/
mv squashfs-root/usr/* cemu/
```

This component appears to run fine with only this library included, so removing all others to save on space
find cemu/lib/ -not -name 'libGLU.so.1' -delete
 
### Step 5: (Optional) Remove unneeded libraries

Remove any duplicate libraries that may be included in the AppImage which also exist in the RetroDECK flatpak runtime.
