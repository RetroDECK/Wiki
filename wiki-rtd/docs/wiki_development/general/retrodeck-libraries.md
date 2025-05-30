# RetroDECK Libraries


<img src="../../../wiki_icons/pixelitos/folder-red-activities.png" width="75">

Libraries in RetroDECK can live in three main places. This structure helps keep things clean, efficient, and modular.

## Library Structure

| Location                        | Purpose                                                                                          | Notes                                                                                          |
|--------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| **1. lib/** | Acts like an **OS layer** for Flatpak. Most common libraries are already available here.         | You can browse these **Freedesktop Runtime** libraries from inside the Flatpak shell or from the host OS.                       |
| **2. components/shared-libs/**     | Holds **shared libraries** used by multiple components (like Qt). Helps avoid duplication.        | Organized into subfolders by version (e.g. `qt5/`, `qt6/`) to prevent version conflicts.       |
| **3. components/<component>/lib/**   | Contains **component-specific libraries** not found in the runtime or shared-libs.               | Usually includes libraries built with the app in its original Flatpak manifest.                |

**Read more here:** [Folders & Filepaths](../general/folders-filepaths.md)

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
