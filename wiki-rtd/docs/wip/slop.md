# Revolutionizing Component Build Automation

## Introduction

Managing dependencies for Linux applications can become complex when each component brings its own set of shared libraries. Duplicate libraries, version mismatches, and fragile build environments are common pain points. This post outlines a streamlined approach that automates library discovery, categorisation, and packaging, resulting in cleaner artifacts and easier backend deduplication.

## 1. Keep a Small Bash “Extras” Hook

Some components require custom steps (patches, post‑install actions). Rather than embedding these in the main recipe, we retain a lightweight

# component_extras.sh – sourced only when needed

This keeps the core recipe declarative while allowing per‑component customisation.

## 
2. Merge component_libs and component_recipe

Previously we maintained two separate JSON files:

```
    component_libs.json – raw library listings
    component_recipe.json – build instructions
```

Both describe the same entities, so we now combine them into a single JSON document. The hunter’s output can be pasted directly into the merged recipe with minimal adjustments.

3. Plugin‑Based Assembler (Cooker)

The original assembler was monolithic. Refactoring it into a plugin system (named Cooker) provides:

```
    Extensibility: add support for new source layouts without modifying core code.
    Maintainability: isolated plugins are easier to test and update.
    Performance: independent plugins can run in parallel.

```

##  Hunter & Gatherer Improvements
4.1 Universal Runtime Recording

The hunter now always records runtime_name and runtime_version for any library found in a runtime (Qt, GNOME, etc.). This removes the previous Qt‑only special case and makes the downstream processing runtime‑agnostic.
4.2 Consistent shared-libs Layout

All runtime‑provided libraries follow a single hierarchy:


```

shared-libs/
└── <runtime-name>/
    └── <runtime-version>/
        └── <library>.so

```
        
Libraries not associated with a known runtime (e.g., bundled inside an AppImage) can be placed at the top level of shared-libs or in a custom sub‑folder specified via dest.


4.3 Example component_libs.json

```
[
  {
    "library": "libQt6Widgets.so.6",
    "runtime_name": "org.kde.Platform",
    "runtime_version": "6.9",
    "dest": "shared-libs"
  },
  {
    "library": "libgtk-4.so.1",
    "runtime_name": "org.gnome.Platform",
    "runtime_version": "44",
    "dest": "shared-libs"
  },
  {
    "library": "libaom.so.3",
    "source": "squashfs-root/usr/lib",
    "dest": "shared-libs"
  }
]

```
    Runtime libraries are automatically placed under shared-libs/<runtime>/<version>/.
    Non‑runtime libraries remain at the root of shared-libs (or another location you define).

4.4 Gatherer Behaviour

```
    Runtime libraries are copied into the unified hierarchy.
    Custom/AppImage libraries are copied to the exact dest you declare.
    Paths in source are stored relative to the directory where the hunter is executed, ensuring portability across CI agents and developer machines.

```
5. Resulting Component Directory Layout

If libaom.so.3 is marked as a unique, non‑runtime library (dest: "shared-libs"), the final artifact looks like:

```
azahar/
├── component_functions.sh
├── component_launcher.sh
├── component_libs.json
├── component_manifest.json
├── component_prepare.sh
├── component_recipe.json
├── rd_config/
│   └── qt-config.ini
├── recipe.sh
└── shared-libs/
    ├── libaom.so.3                         ← unique, non‑runtime lib
    ├── org.gnome.Platform/
    │   └── 44/
    │       └── libgtk-4.so.1
    └── org.kde.Platform/
        └── 6.9/
            ├── libQt6Widgets.so → libQt6Widgets.so.6.9.3
            └── … (other Qt libs)

```

The shared-libs tree can be processed uniformly in the backend for deduplication, while component‑specific libraries remain isolated.


## Recent Progress and Next Steps

Milestone	Benefit
Robust hunter/gatherer	Supports parallel execution and handles edge cases
Unified JSON schema	Reduces file count and simplifies version control
Plugin‑based Cooker	Enables easy addition of new source formats
Runtime‑agnostic metadata	Works with any installed runtime (KDE, GNOME, etc.)
Standardised shared-libs hierarchy	Simplifies backend deduplication

Upcoming work:


```

    Implement incremental updates for individual components.
    Extend the plugin ecosystem for containerised builds and cross‑architecture packaging.
    Add monitoring dashboards to visualise library reuse across components.

```
    
## Conclusion

By consolidating library metadata, standardising the storage layout, and moving to a modular assembler, the build process becomes more reliable and easier to maintain. The approach reduces duplicate libraries, improves reproducibility, and prepares the pipeline for future extensions.
Full Example: Combined component_recipe.json


```

{
  "azahar": {
    "version": "latest",
    "type": "appimage",
    "source_url": "https://github.com/azahar-emu/azahar/releases/latest/download/azahar.AppImage",
    "archive": false,
    "gather_libs": true,
    "assets": {
      "binary": {
        "type": "dir",
        "source": "/usr/bin",
        "dest": "/bin"
      }
    },
    "libs": [
      {
        "library": "libQt6Widgets.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libgtk-4.so.1",
        "runtime_name": "org.gnome.Platform",
        "runtime_version": "44",
        "dest": "shared-libs"
      },
      {
        "library": "libaom.so.3",
        "source": "squashfs-root/usr/lib",
        "dest": "shared-libs"
      }
    ],
    "extras": {
      "rd_config": {
        "type": "dir",
        "source": "/rd_config",
        "dest": "/rd_config"
      }
    }
  }
}

```
