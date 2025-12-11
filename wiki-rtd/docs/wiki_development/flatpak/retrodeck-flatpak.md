# About Flatpak

<img src="../../../wiki_images/flatpak/flathub-logo.svg" width="100">

This is general information about the Flatpak packing format.

Flatpak is a application packing method available on Linux and provides a separate sandbox environment from the main OS like chroot or a docker container.


### How do I browse RetroDECK flatpak enviroment?

Via Debug Mode you can access the full flatpak system such as `/var` `/app`.


**Read more here:** 

[RetroDECK: Debug Mode](../general/debug-mode.md)

---

## What makes the RetroDECK Flatpak Different? 

Let us explain what we have created.

### Simple flatpak

<img src="../../../wiki_images/flatpak/flatpak.drawio.png" width="250"> 

This is a simple flatpak

- The application has all the things it needs in the Flatpak Runtime.

---

### Advanced flatpak

<img src="../../../wiki_images/flatpak/flatpakadv.drawio.png" width="250"> 

This is a more advanced flatpak

- The application needs to add additional libraries in addition to what is in the Flatpak Runtime. We internally call it the "library layer". 

---

### RetroDECK Classic

<img src="../../../wiki_images/flatpak/flatpakrdclassic.drawio.png" width="250"> 

This is RetroDECK 0.9.4 and all older versions.

- The application relied solely on the libraries provided by the Flatpak runtime. 
- This model forced a single runtime to serve all components, regardless of their divergent library requirements.
- As individual components evolved, their library dependencies diverged significantly most notably the transition from Qt 5 to Qt 6 . 
- Because a Flatpak can host only one runtime, updating the runtime to satisfy a newer component (e.g., PCSX2) would inevitably break compatibility with others that depend on older libraries. 
- This incompatibility prevented us from upgrading several components to their latest releases in a easy maner and often required manual patches or custom builds.

---

### RetroDECK "New"

<img src="../../../wiki_images/flatpak/flatpakrdneo.drawio.png" width="250"> 

This is RetroDECK 0.10.0b and future versions. 

It was inspired by Docker and OSTree. 

1. **Base Runtime** – Provides a stable, standard execution environment common to all parts, but it can be diverged if needed by components. 
2. **Libraries Layer** – A curated collection of libraries and tools that are universally required across components.
3. **Component Shared Libraries Layer** – A curated collection of libraries that are component specific but can be shared with other components, thus saving space. 
4. **Component Specific Libraries Layer** – Unique special libraries that are only bound to that component and can not be shared. 
5. **Component Applications** - The binaries are within their own little environment. 
6. **RetroDECK** - RetroDECK application at the top calling various components, layers and functions. 

When traversing from the base runtime upward through a component’s flow from the Host OS to RetroDECK, the resulting view for that component reflects a concatenated set of libraries and dependencies specifically for that component (it only sees what it needs to see).

Effectively, each component are isolated within their own environment kinda like AppImage‑style sandboxed pre‑extracted, containers for every component that runs within a Flatpak total environment. 

It's kinda like spinning up a docker container from a premade set of interchangeable layers for each component at the moment it runs.

**Benefits**

- **Isolation:** Each component receives precisely the libraries it needs without affecting others from either or both shared-libraries and component specific libraries. 
- **Flexibility:** Newer components can be integrated by adding or adjusting only their custom layers, leaving the base runtime untouched. 
- **Scalability:** The architecture makes it much easier to add more components, keeping them updated and isolated.


## The Manifest File

More on: [Flatpak Manifests](https://docs.flatpak.org/en/latest/manifests.html)

The manifest is an `.yml`or `.json` with a set of instructions to tell the flatpak-builder cli tool how to build the flatpak from the modules in the file.

The manifest got an header and a body that is the definitions of modules.

Even the core application it self is a module inside the flatpak that needs to be defined.


### RetroDECK: net.retrodeck.retrodeck.yml

RetroDECK flatpak's name is `net.retrodeck.retrodeck` and it's defined in the manifest file.

[net.retrodeck.retrodeck.yml](https://github.com/RetroDECK/RetroDECK/blob/main/net.retrodeck.retrodeck.yml) in our manifest the RetroDECK.

## Flatpak Folder Structure

### The /app folder

The flatpak application is located and built inside the `/app` folder.

The real location of the `/app` folder in the hostOS is different depending on how you installed it. 

### The Writable /var/ folder:

These folder are the only folders writable by flatpak and corresponds to `/var` inside the Flatpak Environment.

- `/var/data` is mapped to  `~/.var/app/<FLATPAKNAME>/data`
- `/var/cache` is mapped to  `~/.var/app/<FLATPAKNAME>/cache`
- `/var/config` is mapped to`~/.var/app/<FLATPAKNAME>/config`

### RetroDECK: Flatpak Folder Structure

**Read more here:**

[RetroDECK: Flatpak Folder Structure](../general/folders-filepaths.md)

---

## The Metainfo file

To be published on Flathub a metainfo `.xml` file is needed that contains all the information for the store:

- Official name
- Website links
- Screenshots links
- Version
- Patchnotes
- Etc...


### RetroDECK: Metainfo file

[net.retrodeck.retrodeck.metainfo.xml](https://github.com/RetroDECK/RetroDECK/blob/main/net.retrodeck.retrodeck.metainfo.xml) on our GitHub repository's root.

---

## Permissions

More on [Sandbox Permissions Reference](https://docs.flatpak.org/en/latest/sandbox-permissions-reference.html)

Additional permissions arguments can be defined in the manifest to give access to several features of the hostsystem. Flatpak developers are always adding new permissions but the goal of a flatpak it should only request as much as it needs and not be over permissive .

All permissions can be even overridden by the user doing cli commands or using flatseal to add more permissions.


```
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#
#                             finish-args
#                         Runtime permissions
#
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

finish-args:
  # D-Bus: Prevent screen saver from activating
  - --talk-name=org.freedesktop.ScreenSaver

  # D-Bus: Prevent power management (sleep, suspend) actions
  - --talk-name=org.freedesktop.PowerManagement.Inhibit

  # D-Bus: Manage user session (systemd-logind)
  - --talk-name=org.freedesktop.login1.Manager

  # D-Bus: Enables generic inter-process communication
  - --talk-name=org.freedesktop.DBus

  # D-Bus: Share IPC namespace for inter-process communication
  - --share=ipc

  # Devices: All device access (e.g., /dev/*, used for various inputs)
  - --device=all

  # Devices: Bluetooth access (used for various inputs)
  - --allow=bluetooth

  # Filesystem: External Drives
  - --filesystem=/run/media
  - --filesystem=/mnt
  - --filesystem=/media

  # Filesystem: Discord (For the components that has an option for Discord Rich Presence)
  - --filesystem=xdg-run/app/com.discordapp.Discord:create

  # Filesystem: GTK‑3 configuration (read‑only)
  - --filesystem=xdg-config/gtk-3.0:ro

  # Filesystem: Home (/home folder access)
  - --filesystem=home

  # Filesystem: Steam ROM Manager / Steam Integration
  - --filesystem=~/.steam/steam:rw
  - --filesystem=xdg-data/Steam:rw
  - --filesystem=~/.steam:rw
  - --filesystem=~/.var/app/com.valvesoftware.Steam:rw

  # Filesystem: Udev information (read‑only, for inputs)
  - --filesystem=/run/udev:ro

  # GStreamer integration
  - --env=GST_PLUGIN_SYSTEM_PATH=/app/lib32/gstreamer-1.0:/app/lib/gstreamer-1.0:/usr/lib/i386-linux-gnu/gstreamer-1.0:/usr/lib/x86_64-linux-gnu/gstreamer-1.0

  # Gamescope integration
  - --filesystem=xdg-run/gamescope-0:ro
  - --env=LD_LIBRARY_PATH=/usr/lib/extensions/vulkan/gamescope/lib
  
  # Multi‑arch support (32‑bit libs on 64‑bit)
  - --allow=multiarch

  # Network 
  - --share=network

  # Sound: PulseAudio, PipeWire
  - --socket=pulseaudio
  - --filesystem=xdg-run/pipewire-0

  # Wayland: Display server access, SDL window‑class, Qt platform selection
  - --socket=wayland
  - --env=SDL_VIDEO_WAYLAND_WMCLASS=net.retrodeck.retrodeck
  - --env=QT_QPA_PLATFORM=wayland;wayland-egl;xcb

  # X11: Display server access, SDL window‑class
  - --socket=x11
  - --env=SDL_VIDEO_X11_WMCLASS=net.retrodeck.retrodeck      

  # Xemu: openSUSE QEMU_AUDIO_DRV fix
  - --unset-env=QEMU_AUDIO_DRV
```

---

## Modules


A good way to learn how to write modules is to search on flathub's GitHub for other modules to get an idea, however our manifest is more or less using every module type possible. What follows are two examples (note that providing a sha256 is mandatory):

**What does these module do?**

- Downloads the file from the defined url
- Extracts it automatically as it's defined as a archive

### Example of rclone module

```
  # -------------------------------------------------------------------------
  # rclone – manage files on cloud storage.
  # -------------------------------------------------------------------------

  - name: rclone
    buildsystem: simple
    build-commands:
      - install -Dm755 rclone "${FLATPAK_DEST}/bin/rclone"
    sources:
      - type: archive
        url: https://github.com/rclone/rclone/releases/download/v1.69.1/rclone-v1.69.1-linux-amd64.zip
        sha256: 231841f8d8029ae6cfca932b601b3b50d0e2c3c2cb9da3166293f1c3eae7d79c
```


### Example of a p7zip module

```
  # -------------------------------------------------------------------------
  # p7zip – 7‑Zip compression utilities.
  # -------------------------------------------------------------------------

  - name: p7zip
    no-autogen: true
    sources:
      - type: archive
        url: https://github.com/p7zip-project/p7zip/archive/v17.04/p7zip-v17.04.tar.gz
        sha256: ea029a2e21d2d6ad0a156f6679bd66836204aa78148a4c5e498fe682e77127ef
      - type: shell
        commands:
          - sed -i 's|/usr/local|${FLATPAK_DEST}|g' makefile.common
    post-install:
      - mv "${FLATPAK_DEST}/bin/7za" "${FLATPAK_DEST}/bin/7z"
    cleanup:
      - /man
```