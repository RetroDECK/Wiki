# Creating Component: AppImage

<img src="../../../../wiki_images/logos/appimage-logo.svg" width="100" alt="AppImage logo">

This is part of the **How-to: Create Components Guide**.

This guide uses **Cemu** as an example. AppImages can have significantly different structures, so inspect each AppImage individually.

> **Note:** This guide assumes you have read the [Creating Component: Guide](creating-components-guide.md).

---

## Step 0: Create a Testing Directory

1. Ensure that a local copy of **RetroDECK Cooker** is installed.
2. Create the components directory: `mkdir -p ~/retrodeck_dev/components` 

---

## Step 1: Download the AppImage



1. Download the AppImage from its official website, GitHub repository, or another trusted source.
2. Place the AppImage in:

   `~/retrodeck_dev/components/`

3. Create a directory matching the component name:

   `~/retrodeck_dev/components/<component_name>`

### Example

Download Cemu:

`wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"`

The AppImage should be located at:

`~/retrodeck_dev/components/Cemu-2.6-x86_64.AppImage`

Create the component directory:

`mkdir -p ~/retrodeck_dev/components/cemu`

---

## Step 2: Set Permissions and Extract the AppImage

Open a terminal in:

`~/retrodeck_dev/components/`

### Set Executable Permissions

`chmod +x "<Application>.AppImage"`

### Extract the AppImage

`./<Application>.AppImage --appimage-extract`

### Example

`chmod +x "Cemu-2.6-x86_64.AppImage"`

`./Cemu-2.6-x86_64.AppImage --appimage-extract`

This creates a directory named:

`squashfs-root`

That will contain:

```
    squashfs-root/
    ├── AppRun
    ├── apprun-hooks/
    ├── checkrt
    └── usr/
        ├── bin/       # Application binary
        ├── lib/
        └── share/
```

---

## Preparing Testing of the AppImage

During this stage, identify and document the files required by the application:

- **Binary**
- **Dependencies**
- **Libraries**
- **Other important files**

`AppRun` is present in AppImages and may be:

- A script that launches the application binary.
- A binary that launches the application.
- A symbolic link to the application binary.

### Create the Component Directory

Create a directory for the component under the RetroDECK Flatpak's component directory.

For example, for Cemu:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/cemu`

In general:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/<component_name>`

### Copy the Application Files

Copy the **contents of the `usr/` directory** from the extracted AppImage into the RetroDECK component directory.

Do **not** copy the `usr/` directory itself.

The structure varies between AppImages. For example, Cemu uses:

```
    squashfs-root/
    ├── AppRun
    ├── apprun-hooks/
    ├── checkrt
    └── usr/ <--- Copy under this
        ├── bin/
        ├── lib/
        ├── share/
        └── <other>/
```

Copy the required `usr/` structure into:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/<component_name>/`

For example:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/cemu/`

The resulting structure should resemble:


```
    components/
    └── cemu/
        ├── bin/
        ├── lib/
        └── share/

```


## Common AppImage Structures

### AppImage V2

    squashfs-root/
    ├── AppRun
    └── usr/
        ├── bin/       # Application binary
        ├── lib/       # Libraries
        └── share/     # Application data and resources

### AppImage V3

```
    squashfs-root/     # Links to AppDir
    └── AppDir/
        ├── bin/       # Application binary
        ├── lib/       # Libraries or symbolic link
        └── share/     # Application data and resources
```

---

## AppImage Structure Examples

### Azahar

```
    squashfs-root/
    ├── AppRun
    ├── apprun-hooks/
    ├── checkrt
    └── usr/
        ├── bin/       # Application binary
        ├── lib/
        ├── share/
        ├── plugins/
        └── translations/
```

### Mudlet

```
    squashfs-root/
    ├── AppRun
    ├── <translation files>
    ├── doc/           # Licenses and documentation
    ├── lcf/
    ├── lib/
    ├── mudlet         # Application binary
    ├── mudlet-lua
    ├── plugins/
    └── translations/
```

### ES-DE

```
    squashfs-root/
    ├── AppRun
    └── usr/
        ├── bin/       # Application binary
        ├── lib/
        └── share/
```

### OpenGOAL

```
    squashfs-root/
    ├── AppRun
    ├── apprun-hooks/
    ├── checkrt
    └── usr/
        ├── bin/       # Application binary
        ├── lib/
        └── share/
```

---


## Testing Guide

Start testing:

**Read more:** [Component Testing Guide](components-testing-guide.md)

---