# RetroDECK Library Structure

Libraries in RetroDECK can live in three main places. This structure helps keep things clean, efficient, and modular.

| Location                        | Purpose                                                                                          | Notes                                                                                          |
|--------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| **1. Freedesktop Runtime: lib/** | Acts like an **OS layer** for Flatpak. Most common libraries are already available here.         | You can browse these from inside the Flatpak shell or from the host OS.                        |
| **2. shared-libs/ folder**     | Holds **shared libraries** used by multiple components (like Qt). Helps avoid duplication.        | Organized into subfolders by version (e.g. `qt5/`, `qt6/`) to prevent version conflicts.       |
| **3. Component lib/ folder**   | Contains **component-specific libraries** not found in the runtime or shared-libs.               | Usually includes libraries built with the app in its original Flatpak manifest.                |

**Read more here:** [Folders & Filepaths](../general/folders-filepaths.md)

---

## Library Manager (LibMan) 

`LibMan` is RetroDECK's automated `Library Manager`.

Works against a **priority order** for where libraries should go:

1. **Freedesktop Runtime: lib/** 
2. **shared-libs/**
3. **Component: lib/**

If a Library exists it removes it in the lower layers and replaces it with a symlink instead.

**Example:**

If a library is already in the `runtime` or `shared-libs`.

`LibMan` will remove it from the `component: lib/` and add a symlink to avoid duplication.
