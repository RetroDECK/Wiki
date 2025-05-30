# RetroDECK Library Structure

Libraries in RetroDECK can live in three main places:

| Location                        | Purpose                                                                                          | Notes                                                                                          |
|--------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| **1. Freedesktop Runtime: lib/** | Acts like the **OS layer** for Flatpak. Most common libraries are already available here.         | You can browse these from inside the Flatpak shell or from the host OS.                        |
| **2. shared-libs/ folder**     | Holds **shared libraries** used by multiple components (like Qt). Helps avoid duplication.        | Organized into subfolders by version (e.g. `qt5/`, `qt6/`) to prevent version conflicts.       |
| **3. Component lib/ folder**   | Contains **component-specific libraries** not found in the runtime or shared-libs.               | Usually includes libraries built with the app in its original Flatpak manifest.                |

**Read more here:** [Folders & Filepaths](../general/folders-filepaths.md)

---

## When Adding a Component

This structure helps keep things clean, efficient, and modular. It also defines the **priority order** for where libraries should go:

1. **Freedesktop Runtime: lib/** – If the library is already here, you don’t need to include it.
2. **shared-libs/** – If the library is used by multiple components, put it here.
3. **Component: lib/** – If it’s only used by one component, keep it local.

If a library is already in the runtime or shared-libs, **remove it from the component** to avoid duplication.  
If you think a library might be useful for other components, consider moving it to `shared-libs/`.  
Otherwise, keep it in the component’s own `lib/` folder.
