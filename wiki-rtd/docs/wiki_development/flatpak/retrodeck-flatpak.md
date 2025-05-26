# About Flatpak

<img src="../../../wiki_images/logos/flatpak-logo.svg" width="100">

Flatpak is a application packing method available on Linux and provides a separate sandbox environment from the main OS like chroot or a docker container.

## The Manifest file
More on: [Flatpak Manifests](https://docs.flatpak.org/en/latest/manifests.html)

The manifest is an `.yml`or `.json` with a set of instructions to tell the flatpak-builder cli tool how to build the flatpak from the modules in the file.

The manifest got an header and a body that is the definitions of modules.

Even the core application it self is a module inside the flatpak that needs to be defined.


### RetroDECK: Manifest

RetroDECK flatpak's name is `net.retrodeck.retrodeck` and it's defined in the manifest file.

[net.retrodeck.retrodeck.yml](https://github.com/XargonWan/RetroDECK/blob/main/net.retrodeck.retrodeck.yml) in our manifest the RetroDECK module is defined together with a ever growing list of other modules like our dependencies:

- Emulators
- Game Engines
- Libraries
- Github / Gitlab projects

Are all defined in their own module and built together.

*"It's modules all the way down!"*

## The /app folder

The flatpak application is located and built inside the `/app` folder within this environment.

The real location of the `/app` folder in the hostOS is in the none writable path: `/var/lib/flatpak/app/`

In RetroDECK's case it is `/var/lib/flatpak/app/net.retrodeck.retrodeck/`

### Writable folders in RetroDECK:

These folder are the only folders writable by flatpak:

(Note that these /var/ source folders are within the flatpak environment)

- `/var/data` is mapped to  `~/.var/app/<FLATPAKNAME>/data`
- `/var/cache` is mapped to  `~/.var/app/<FLATPAKNAME>/cache`
- `/var/config` is mapped to`~/.var/app/<FLATPAKNAME>/config`

**For RetroDECK:**

`~/.var/app/net.retrodeck.retrodeck/`



## The Metainfo file

To be published on Flathub a metainfo `.xml` file is needed that contains all the information for the store:

- Official name
- Website links
- Screenshots links
- Version
- Patchnotes
- Etc...

### RetroDECK: Metainfo file

[net.retrodeck.retrodeck.metainfo.xml](https://github.com/XargonWan/RetroDECK/blob/main/net.retrodeck.retrodeck.metainfo.xml) on our GitHub repository's root.


## Permissions

More on [Sandbox Permissions Reference](https://docs.flatpak.org/en/latest/sandbox-permissions-reference.html)

Additional permissions arguments can be defined in the manifest to give access to several features of the hostsystem. Flatpak developers are always adding new permissions but the goal of a flatpak it should only request as much as it needs and not be over permissive .

All permissions can be even overridden by the user doing cli commands or using flatseal to add more permissions.

Example arguments:


```
finish-args:
  - --share=ipc
  - --share=network
  - --device=all
  - --filesystem=home
  - --filesystem=/run/media
  - --filesystem=/media
  - --filesystem=/media
```


In this example we're telling the flatpak:

Enable ipc and networking

```
--share=ipc
--share=network
```

Have access to all plugged in devices, such as controllers and webcams.

```
--device=all
```

Have access to file systems paths for the entire home catalog and plugged in Disks / SDCards and USB Storage.

```
--filesystem=home
--filesystem=/run/media
--filesystem=/media
--filesystem=/mnt
```


## Example Modules


A good way to learn how to write modules is to search on flathub's GitHub for other modules to get an idea, however our manifest is more or less using every module type possible. What follows are two examples (note that providing a sha256 is mandatory):

### Example of rclone module

```
  - name: rclone
    buildsystem: simple
    build-commands:
      - cp rclone ${FLATPAK_DEST}/bin/
    sources:
      - type: archive
        url: https://github.com/rclone/rclone/releases/download/v1.61.1/rclone-v1.61.1-linux-amd64.zip
        sha256: 6d6455e1cb69eb0615a52cc046a296395e44d50c0f32627ba8590c677ddf50a9
```

**What does this module do?**

- Downloads the file from the defined url
- Extracts it automatically as it's defined as a archive
- Executing the build-commands (a copy in this case).

### Example of a cmake-ninja module

```
  - name: glslang
    buildsystem: cmake-ninja
    config-opts:
      - -DCMAKE_BUILD_TYPE=Release
      - -DENABLE_CTEST=OFF
      - -DENABLE_OPT=OFF
    cleanup:
      - /include
      - /lib/cmake
    sources:
      - type: archive
        url: https://github.com/KhronosGroup/glslang/archive/13.1.1.tar.gz
        sha256: 1c4d0a5a38c8aaf89a2d7e6093be734320599f5a6775b2726beeb05b0c054e66
```

**What does this module do?**

- Downloads the archive
- Extracts it
- Sets the config options
- Execute cmake-ninja
- Cleanup by deleting the paths defined in the cleanup.


## How do I browse RetroDECK flatpak enviroment?

Via Debug Mode:

`flatpak run --command=sh net.retrodeck.retrodeck`

You can then access the full flatpak system such as `/var/` `/app/`
