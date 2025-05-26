# Creating Component: AppImage

<img src="../../../wiki_images/logos/appimage-logo.svg" width="100">

This a part of the How-to: Create Components Guide

We are going to use CEMU as an example and remember that each AppImage is different from another. 

## Step 0: Make a testing folder 

1. Have a local copy of RetroDECK Cooker installed.
2. Create a components folder under retrodeck/ userdata folder.
3. **Result:** `retrodeck/components/`

## Step 1: Download the AppImage from Source

1. Download the file from Github/Website or where every you find it.
2. Put it into `retrodeck/components/`.
3. Create a folder in `retrodeck/components/<component_name>` that matches the name of the component you want to add.

**Example:**


```
wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"
```

1. Put it into `retrodeck/components/Cemu-2.6-x86_64.AppImage`.
2. Create a folder called `retrodeck/components/cemu`.


## Step 2: Permissions & Extract 

Open a terminal window in `retrodeck/components/`

**Set Permissions:**

```
chmod +x "XXX.AppImage"
```

**Extract it:**

```
./XXX.AppImage --appimage-extract
```

**Example:**

```
chmod +x "Cemu-2.6-x86_64.AppImage"`
./Cemu-2.6-x86_64.AppImage --appimage-extract
```

## Step 3: New folder and move.

A new folder called `retrodeck/components/squashfs-root` has been created.

The structure is different in each AppImage.

**AppRun** exists in every AppImage and it can be either a:

- Script (that launches the binary).
- Binary (separate but launches the main binary).
- Symlink (to the main binary).

Other standard files such as: **icons**, **.desktop** also exist in every AppImage. 

Most follow this structure (with additional folders and files depending on the app):

```
squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

### Examples of AppImage Structures

#### Emulators 

**Cemu**

```
squashfs-root
    - AppRun
    - apprun-hooks
    - checkrt
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

**Azahar**

```
squashfs-root
    - AppRun 
    - apprun-hooks
    - checkrt
    - usr
        - bin (contains the binary)
        - lib   
        - share
        - plugins
        - translations
```

#### Engines 

**Mudlet**

```
squashfs-root
    - AppRun 
    - <translation files>
    - doc (licences)
    - lcf
    - lib
    - mudlet (binary)
    - mudlet-lua
    - plugins
    - translations
```

#### Systems

**ES-DE:**

```
squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

#### Ports 

**OpenGOAL:**

```
squashfs-root
    - AppRun
    - apprun-hooks
    - checkrt
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

**Ship of Harkinian**

```
squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

**Osu!**

```
squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin (contains the binary)  
        - share
```
        
## Step 4: Identify Key Parts in squashfs-root

Identify the:

- Binary
- Libraries
- Other important files

**Example:**

Cemu

In the terminal move out key parts 

```
mv squashfs-root/apprun-hooks cemu/
mv squashfs-root/usr/* cemu/
```

 
### Step 5: (Optional) Remove unneeded libraries

Remove any duplicate libraries that may be included in the AppImage which also exist in the RetroDECK flatpak runtime.

### Step 5: Create the INGREDIENT files

Add the INGREDIENT files to: `retrodeck/components/<component_name>`

```
components/<component_name>/component_launcher.sh 
components/<component_name>/component_manifest.json
components/<component_name>/component_functions.sh
components/<component_name>/component_prepare.sh
```

Make sure that `component_launcher.sh` is executable: 

```
chmod +x component_launcher.sh`
```

**Example:**

```
components/cemu/component_launcher.sh 
components/cemu/component_manifest.json
components/cemu/component_functions.sh
components/cemu/component_prepare.sh
```

```
chmod +x cemu/component_launcher.sh
```

### Step 6: Compress the artifact

Compress the RetroDECK: `retrodeck/components/<component_name>` folder into tar.gz. 

Name it: `<component_name>-artifact.tar.gz`

Command:

```
tar -czf "<component_name>-artifact.tar.gz" "<component_name>"
```

**Example:**

```
tar -czf "cemu-artifact.tar.gz" "cemu"
