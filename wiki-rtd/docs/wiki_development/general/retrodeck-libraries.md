# RetroDECK Libraries


<img src="../../../wiki_icons/pixelitos/folder-red-activities.png" width="75">

Libraries in RetroDECK can live in three main places. This structure helps keep things clean, efficient, and modular.

## Library Priority Order

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
