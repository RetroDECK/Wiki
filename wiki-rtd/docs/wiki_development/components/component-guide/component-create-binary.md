# Creating Component: Binary Testing

<img src="../../../../wiki_images/logos/appimage-logo.svg" width="100" alt="Appimage logo">

This a part of the How-to: Create Components Guide

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

---

## Downloading Binaries

Binaries may be distributed through multiple sources on the internet, including GitHub, itch.io, GitLab, SourceForge and personal websites.

### Example: Ironwail

Ironwail releases are available on GitHub:

https://github.com/andrei-drexler/ironwail/releases

A Linux x64 release may be provided as:

`ironwail-X.X.X-linux-x64.tar.gz`

After extracting the archive, the application files may resemble:

```
ironwail/
├── ironwail
├── ironwail.pak
├── LICENSE.txt
├── Quakespasm.html
├── Quakespasm-Music.txt
└── Quakespasm.txt
```

---

## Building from Source

### Prerequisite: Check the Internet!

Before building from source, check whether a prebuilt binary is already available online. In many cases, the application may already be distributed in a usable format, allowing you to avoid compiling it yourself.

Look for existing builds such as:

- **Flatpak**
- **AppImage**
- **Standalone binaries**

Always verify that the source is trustworthy and that the build corresponds to the genuine application and an appropriate version. Prefer official project releases and reputable build systems where possible.

Do not assume that an unofficial build is safe simply because it is available online. Verify the source, project ownership, version, and build provenance before using it.

---

### Building Is Different for Every Application

Every project can use different build systems, compilation methods, dependencies and build requirements.

Always follow the build instructions provided by the project and identify the dependencies required to produce the binary.

---

### Example: Building SDL2TRS

See the official [SDL2TRS build instructions](https://gitlab.com/jengun/sdltrs/-/blob/sdl2/BUILDING.md).

Set up a Debian- or Ubuntu-based build environment and install the required dependencies:

`sudo apt install libsdl2-dev libreadline-dev`

#### Build with CMake (Recommended)

`mkdir -p build`

`cd build`

`cmake ..`

`cmake --build .`

The resulting SDL2TRS binary will be created in the `build/` directory.

---

## Preparing Testing of the Binary

During this stage, identify and document the files required by the application:

- **Binary**
- **Dependencies**
- **Libraries**
- **Other important files**

Some applications are distributed or built as a single binary, such as **SDL2TRS**.

At the opposite end of the spectrum is **ZEsarUX**, which requires a much larger set of supporting files. These include `.txt` documents, `.md` markdown files, directories, binaries and other resources required for its full functionality. This is because **ZEsarUX** effectively simulates an entire fake operating-system environment, with these files forming part of that simulated environment.

---

### Create the Component Directory

Create a directory for the component under the RetroDECK Flatpak's component directory.

For example, for SDL2TRS:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/sdl2trs`

In general:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/<component_name>`

---

### Copy the Application Files

Copy the complete application file structure into the component directory.

```
    files/
    └── sdl2trs
```


Copy the structure into:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/<component_name>/`

For example:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/sdl2trs/`

The resulting structure should resemble:

**SDL2TRS**

```
    components/
    └── sdl2trs/
        └── sdl2trs
```

**Ironwail**

```
    components/
    └── ironwail/
        ├── ironwail
        ├── ironwail.pak
        ├── LICENSE.txt
        ├── Quakespasm.html
        ├── Quakespasm-Music.txt
        └── Quakespasm.txt
```

**ZEsarUX**

```
    components/
    └── zexarus/
        ├── 128.rom
        ├── 128s.rom
        ├── 48.rom
        ├── 48es.rom
        ├── 80-lec.rom
        ├── ACKNOWLEDGEMENTS
        ├── ALTERNATEROMS
        ├── alternate_roms/
        ├── Cambios
        ├── Changelog
        ├── copiers/
        ├── docs/
        ├── DONATE
        ├── DONORS
        ├── FEATURES
        ├── FEATURES_es
        ├── HISTORY
        ├── INSTALL
        ├── INSTALLWINDOWS
        ├── LICENSE
        ├── LICENSES_info
        ├── my_soft/
        ├── README
        ├── TODO
        ├── TODO_accessibility
        ├── TODO_audio
        ├── TODO_core_cpu
        ├── TODO_devices
        ├── TODO_generic
        ├── TODO_machines
        ├── TODO_menu
        ├── TODO_next_version
        ├── TODO_os
        ├── TODO_snapshots
        ├── TODO_tape
        ├── TODO_this_version
        ├── TODO_video
        ├── TODO_ZENG
        ├── TODO_ZRCP_network
        ├── zx80.rom
        ├── zx81.rom
        ├── zxuno.flash
        ├── zxuno_bootloader.rom
        ├── zxevo_baseconf.rom
        ├── zxevo_tsconf.rom
        ├── Z88OZ45.rom
        ├── Z88OZ46.rom
        ├── Z88OZ47.rom
        ├── Z88OZ431.rom
        ├── Z88UK220.rom
        ├── Z88UK300.rom
        ├── Z88UK400.rom
        ├── zesarux
        ├── zesarux.mp3
        ├── zesarux.odt
        ├── zesarux.pdf
        └── zesarux.xcf
```

---

## Testing Guide

Start testing:

**Read more:** [Component Testing Guide](components-testing-guide.md)

---
