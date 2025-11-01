# RetroDECK Library Structure


<img src="../../../wiki_icons/pixelitos/folder-red-activities.png" width="75">

Libraries in RetroDECK can live in three main places. This structure helps keep things clean, efficient, and modular.

## Library Priority Order

| Location                        | Purpose                                                                                          | Notes                                                                                          |
|--------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| **1. lib/** | Acts like an **OS layer** for Flatpak. Most common libraries are already available here.         | You can browse these **Freedesktop Runtime** libraries from inside the Flatpak shell or from the host OS.                       |
| **2. components/shared-libs/**     | Is a component that holds **Shared Libraries** used by multiple components (like Qt). Helps avoid duplication.        |       |
| **3. components/<component>/lib/**   | Contains **component-specific libraries** not found in the runtime or shared-libs.               | Usually includes libraries built with the app in its original Flatpak manifest.                |

**Read more here:** [Folders & Filepaths](../general/folders-filepaths.md)
