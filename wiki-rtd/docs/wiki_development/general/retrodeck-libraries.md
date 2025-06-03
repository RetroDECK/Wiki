# RetroDECK Libraries


<img src="../../../wiki_icons/pixelitos/folder-red-activities.png" width="75">

Libraries in RetroDECK can live in three main places. This structure helps keep things clean, efficient, and modular.

## Library Structure

| Location                        | Purpose                                                                                          | Notes                                                                                          |
|--------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| **1. lib/** | Acts like an **OS layer** for Flatpak. Most common libraries are already available here.         | You can browse these **Freedesktop Runtime** libraries from inside the Flatpak shell or from the host OS.                       |
| **2. components/shared-libs/**     | Is a component that holds **Shared Libraries** used by multiple components (like Qt). Helps avoid duplication.        | Organized into subfolders by version (e.g. `qt-5.15/`, `qt-6.8/`) to prevent version conflicts.       |
| **3. components/<component>/lib/**   | Contains **component-specific libraries** not found in the runtime or shared-libs.               | Usually includes libraries built with the app in its original Flatpak manifest.                |

**Read more here:** [Folders & Filepaths](../general/folders-filepaths.md)

---


## shared-libs Component (Shared Libraries)

Is a component that handles various shared libraries that are being used my other components. 

It is built as it's own component during the assembler build process and results in the `shared-libs.tar.gz` artifact.

When installed in retrodeck the artifact is extracted into:

`/components/shared-libs/`

That is organized into subfolders by version (e.g. `qt-5.15/`, `qt-6.8/` ) to prevent version conflicts.

### How-to: Add a library to shared-libs?

On the [GitHub: shared-libs / cooker](https://github.com/RetroDECK/components/tree/cooker/shared-libs) exists a pair of files (a txt and a yml) that tells the assembler what libraries in a specific version to build and add into the subfolders. 

You need to create both or just update the txt file if only a library is missing from a specific version.

**shared-libs.6.8.yml**

The .yml file tells how to build in this case org.kde.Platform (KDE Framework) version 6.8.

```
app-id: net.retrodeck.shared-libs
runtime: org.kde.Platform
runtime-version: &runtime-version '6.8'
sdk: org.kde.Sdk

add-extensions:
  org.freedesktop.Platform.ffmpeg-full:
    directory: lib/ffmpeg
    add-ld-path: .
    version: *runtime-version
    no-autodownload: true
    autodelete: false

cleanup:
  - "/include"
  - "/lib/pkgconfig"
  - "/lib/debug"

modules:

  - name: shared-libs.6.8
    buildsystem: simple
    build-commands:
      - |
        source ./search_libs.sh
        search_libs "shared-libs-6.8.txt"
    sources:
      - type: dir
        path: .
      - type: file
        path: ../automation-tools/search_libs.sh
```


**shared-libs-6.8.txt**

Contains the list of libraries that will be build and part of the 6.8 folder. If you need to add a new specific library to the 6.8 version needed by a component, all you need to do is add it to the list via a pull request on the component repo cooker.


```
libavcodec.so.61
libavcodec.so.61.3.100
libavformat.so.61
libavformat.so.61.1.100
libavutil.so.59
libavutil.so.59.8.100
libdav1d.so.7
libdav1d.so.7.0.0
libicudata.so.75
libicudata.so.75.1
libicui18n.so.75
libicui18n.so.75.1
libicuuc.so.75
libicuuc.so.75.1
libopenh264.so.2.5.1
libopenh264.so.7
libQt6Core.so
libQt6Core.so.6
libQt6Core.so.6.8.3
libQt6DBus.so
libQt6DBus.so.6
libQt6DBus.so.6.8.3
libQt6Gui.so
libQt6Gui.so.6
libQt6Gui.so.6.8.3
libQt6Widgets.so
libQt6Widgets.so.6
libQt6Widgets.so.6.8.3
libQt6XcbQpa.so
libQt6XcbQpa.so.6
libQt6XcbQpa.so.6.8.3
libSDL2-2.0.so.0
libSDL2-2.0.so.0.3200.4
libswresample.so.5
libswresample.so.5.1.100
libswscale.so.8
libswscale.so.8.1.100
libvpx.so.9
libvpx.so.9.0
libvpx.so.9.0.1
libxcb-cursor.so.0
libxcb-cursor.so.0.0.0
libxcb.so.1
libxcb.so.1.1.0
libqxcb.so
```

**Example:**

You are adding a new component to RetroDECK but it complains it needs `libQt6Network.so.6` to work. All you need to do is add it to the textfile and it will be added to the 6.8 folder during the build process. 

---

## Library Manager (LibMan) 

`LibMan` is RetroDECK's semi-automated `Library Manager`.

It scans against automated and manually populated lists of known libraries in `lib/` or `components/shared-libs/`. 

If a library is already referenced it will remove it from the `components/<component>/lib/` and add a symlink to avoid duplication.

`LibMan` works against a **priority order** for where libraries should go:

1. **lib/** 
2. **components/shared-libs/**
3. **components/<component>/lib/**

[Components: Shared-Libs Lists](https://github.com/RetroDECK/components/tree/cooker/shared-libs)

