# Creating Component: AppImage

<img src="../../../../wiki_images/logos/appimage-logo.svg" width="100">

This a part of the How-to: Create Components Guide

We are going to use CEMU as an example and remember that each AppImage is different from another. 

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

---

## Step 0: Make a testing directory 

1. Have a local copy of RetroDECK Cooker installed.
2. Create a components directory for example: `~/retrodeck_dev/components/`

---

## Step 1: Download the AppImage from Source

1. Download the file from Github/Website or where every you find it.
2. Put it into `retrodeck_dev/components/`.
3. Create a directory in `retrodeck_dev/components/<component_name>` that matches the name of the component you want to add.

**Example:**


```
wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"
```

1. Put it into `retrodeck_dev/components/Cemu-2.6-x86_64.AppImage`.
2. Create a directory called `retrodeck_dev/components/cemu`.

---

## Step 2: Permissions & Extract 

Open a terminal window in `retrodeck_dev/components/`

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

---

## Step 3: New directory and move.

A new directory called `retrodeck_dev/components/squashfs-root` has been created.

The structure is different in each AppImage.

**AppRun** exists in every AppImage and it can be either a:

- Script (that launches the binary).
- Binary (separate but launches the main binary).
- Symlink (to the main binary).

Other standard files such as: **icons**, **.desktop** also exist in every AppImage. 

Most follow these structures (with additional directorys and files depending on the app):


**AppImage V2:**

```
- squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

**AppImage V3:**

```
squashfs-root (links to AppDir)
AppDir 
    - bin (contains the binary)
    - lib   
    - share
```

---

### Examples of AppImage Structures

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

---

**Eden**

```
squashfs-root (links to AppDir)
AppDir
    - bin (contains the binary)
    - lib (link) 
    - etc 
    - share
    - shared
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

---

**Mudlet**

```
squashfs-root (contains the binary)
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

---

**ES-DE:**

```
squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin (contains the binary)
        - lib   
        - share
```

---

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

---

## Step 5: Testing

During this step, identify and document the following components:

- **Binary**
- **Libraries**
- **Other important files**

To begin testing, try launching the binary from RetroDECK's Flatpak shell:

`flatpak run --command=bash net.retrodeck.retrodeck --debug`

While testing, make detailed notes on what works, what partially works, and what does not work at all. 

Fixing these issues will be addressed later during the **Alchemist and Hunter step**. 

**Example Considerations** 

Does the application report missing libraries? 

Does it crash at startup or during use? 

Are all expected features functioning correctly?

---

## Step 6: Creating Component: Ingredient Files

You now will need to move on to the next step:

**Read more here:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)

