# RetroDECK Alchemist & component_recipe.json

## The RetroDECK Alchemist

**The RetroDECK Alchemist** is a magician / chef / bartender who , when given the proper instruction, can transmute one or more base source ingredients into the perfect gem of a component artifact .

*Alchemy* — *noun* — “A power or process that changes or transforms something in a mysterious or impressive way.”

(The `alchemist.sh` it is a Plugin‑Based Component Assembler).

**Concistency is important**

> **Garbage in, garbage out** – [Wikipedia](https://en.wikipedia.org/wiki/Garbage_in,_garbage_out)

**HEREBY BE WARNED**

Alchemy and cooking is, by definition, delicate.  

- The ingredients must be known and pure.  
- The recipe must be exact.  

Any deviation from this process can be **disastrous**.

To achieve a perfect output, the input must be equally well‑known.  
Only by pulling input from a **specific moment in time** can we guarantee consistency.  
Dynamic sources that use “latest” versions change without review, making them unreliable for reproducible builds.

(Be careful with versioning of components for stable builds).

### Repository Context

- The `alchemist.sh` script is invoked from the `…/components` directory of the cloned repository:  
  <https://github.com/RetroDECK/components.git>
- The script’s location is flexible, but **the calling directory matters**:
  - If run inside a Git repo, `$REPO_ROOT` points to the repo’s root.
  - Otherwise, `$REPO_ROOT` defaults to the directory containing `alchemist.sh`.

---
  
## Creating a new componment_recipe.json tips

### Tip 1: Component Source Format: What to Prioritize?

When multiple source formats are available for a component, prioritize them in the following order for ease of integration with RetroDECK:

| Priority | Format              | Description                                                                 |
|----------|---------------------|-----------------------------------------------------------------------------|
| 1        | Flatpak             | A sandboxed package format commonly used on Linux for app distribution , published on flathub     |
| 2       | AppImage            | A portable, self-contained executable that runs without installation        |
| 3        | Precompiled Binary  | A ready-to-run executable built for a specific platform                     |
| 4        | Build from Source   | Raw source code that must be compiled manually before use                   |

### Tip 2: TEMPLATES and EXAMPLES of component_recipe.json 

On the wiki (next to this guide) we list some examples and templates of `component_recipe.json`.

If you want to make a new one use them as your baseline.

More examples will be added over time.

### Tip 3: Hunt the libraries

Use `hunt_libraries.sh` to auto‑generate the `libs[]` array.

[Guide: Library Hunter & Gatherer]() <- W.I.P

---

## Structure of component_recipe.json

All `component_recipe.json` contain at least four parts:

**Name**  

   - The root key of the `component_recipe.json` file, indicating the component’s name.  
   - The artifact name and some source paths (e.g., the directory name in the components repo) are derived from this name, so it should be consistent across the component.

**Source**  

   - Each component has a single source from which files are pulled to be stored in the final artifact.

**Asset**  

   - Every component source includes at least one asset—the file(s) pulled from the source ingredient.

**Extras**  

   - Minimum extras: component launcher, component manifest, and shipped default config.  
   - May also include prepared symlinks or other locally‑available files that do **not** come from downloaded sources.

### Optional Inclusions

**Additional Sources**  

  - Used when a component requires more than one download to gather all needed files, or when the original source is a nested archive requiring multiple extraction passes.

**Additional Assets**  

  - Each source can have its own set of assets, directing the recipe to pull specific files from specific sources.

**Libraries**  

  - Most sources need extra libraries to function within the base Flatpak environment.  
  - The `hunt_libraries.sh` script can bootstrap a list of requirements for every binary.


### Key Principles

- **Pin to a Release** – All ingredients must be taken from a fixed release to preserve quality and avoid unpredictable changes.  
- **Stable Versions List** – The `desired_versions.sh` file enumerates all “stable” source versions. These can be referenced in component recipes as placeholders, reducing the need for frequent edits when a new stable version appears.

---

## Example - Recipe Breakdown: Azahar

```
{
  "azahar": [
    {
      "source_url": "org.azahar_emu.Azahar",
      "source_type": "flatpak_id",
      "version": "$AZAHAR_DESIRED_VERSION",
      "dest": "user",
      "extraction_type": "flatpak",
      "assets": [
        {
          "type": "dir",
          "source": "usr/bin",
          "dest": "bin"
        }
      ],
      "libs": [
        {
          "library": "libQt6Widgets.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Gui.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Core.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Multimedia.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Network.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6DBus.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Concurrent.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        }
      ],
      "extras": [
        {
          "type": "dir",
          "source": "$REPO_ROOT/$COMPONENT_NAME",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        }
      ]
    }
  ]
}
```

---

## Component Recipes: Component Information & Key‑Value Reference

| Field               | Description |
|---------------------|-------------|
| **JSON root key**   | Defines the component name and creates the placeholder variable `$COMPONENT_NAME`. |
| **source_url**      | `{SOURCE_URL}` – URL/path to download the source. Acceptable forms: direct HTTP(S) link, redirect, GitHub repo URL, flathub ID or local filesystem path. Can contain a `{VERSION}` placeholder that will be replaced by the value of the `version` key. Relative local paths expand to `$WORKDIR/`. |
| **source_type**     | `{SOURCE_TYPE}` – Determines which downloader plugin to use <br>• - `flatpak-id` – Flathub ID  <br> - `github-release` - Github Releases <br> - `http` - Web download  |
| **version**         | `{VERSION}` – Specific version to fetch. For non‑local sources, this replaces `{VERSION}` in `source_url`. For `local` sources, `latest` can be used if no version is required. Required for all types except `local`. Substituted for `{VERSION}` in `source_url`.<br>• `http` / `github-release` – Specific version string (or `latest` for GitHub) |
| **extraction_type**| `{EXTRACTION_TYPE}` – Extraction plugin to apply to the downloaded file. Supported methods:<br>• `appimage` – Extract AppImage (`$EXTRACTED_PATH` = `<dest>/<AppImage‑name>-extracted`)<br>• `archive` – Extract any archive (`$EXTRACTED_PATH` = `<dest>/<archive‑name>-extracted`)<br>• `local` / `git` / `flatpak` – Dummy plugins returning `$DOWNLOADED_FILE` as `$EXTRACTED_PATH` |
| **dest**| *(Optional)*  Absolute destination for download/extraction. Defaults to `$WORKDIR`. For `flatpak-id` it also selects install scope (`user` / `system`).|
| **additional_sources**| *(Optional)* Array of extra source objects with the same structure, allowing multiple downloads to be processed similarly. |

### assets

Items to copy from the extracted source into the final artifact.

| Field               | Description |
|---------------------|-------------|
| **type**   | Defines whether the asset is a single file (`file`) or an entire directory (`dir`). |
| **source**       | Path to the desired file or directory, **relative to** the `$EXTRACTED_PATH` variable produced during the extraction stage (e.g., `usr/bin`). |
| **dest**       | Path where the asset should be placed, **relative to** `$COMPONENT_ARTIFACT_ROOT` (e.g., `bin`). This determines the layout inside the final artifact archive. |


### libs

Additional library objects are listed here, each processed identically to the previously described library entries.



| Field               | Description |
|---------------------|-------------|
| **library**   | Name of the library to collect. Libraries are resolved by stripping the filename to its base extension to capture dynamic symlinks. Example: specifying `libQt6Widgets.so.6` actually gathers all matching files like `libQt6Widgets.so*` from the source.|
| **runtime_name**       | *(Optional)* Name of the Flatpak runtime from which to obtain the library (requires `runtime_version`). |
| **runtime_version**       | *(Optional)* Specific version of the Flatpak runtime to target (requires `runtime_name`). |
| **dest**       | Directory where the library should be placed, **relative to** `$COMPONENT_ARTIFACT_ROOT`.  When a runtime is specified, expands to `$COMPONENT_ARTIFACT_ROOT/<runtime_name>/<runtime_version>/`. Otherwise expands to `$COMPONENT_ARTIFACT_ROOT/`. |
| **source**       | *(Optional)* If present, specifies a concrete source location for the library **relative to** `$EXTRACTED_PATH` if not using a runtime. Used when the library must be taken from a particular asset rather than a Flatpak runtime. |


### extras

An array of objects defining extra content to be gathered or created for the final artifact.

| Field | Description |
|-------|-------------|
| **type** | Defines the kind of extra content `dir`, `file`, `symlink`, or `create`. |
| **source** | *(semi‑optional)* Source path for the extra. Can be absolute or relative. Depends on `type`:<br>• `dir` / `file` – Absolute or relative path (relative expands to `$WORKDIR/`).<br>• `symlink` – Path where the symlink will be created (relative expands to `$COMPONENT_ARTIFACT_ROOT/`).<br>• `create` – Omitted. |
| **dest**  | *(optional)* Destination **relative to** `$COMPONENT_ARTIFACT_ROOT` for `dir`, `file`, and `create`. For `symlink` it is an absolute target path. If relative, it expands to `$COMPONENT_ARTIFACT_ROOT/dest`. |
| **contents**  | *(optional)* Allows inserting provided information directly into the destination file. |

---

## Nested Archives & additional_sources

- A *nested archive* creates a new archive that also needs extraction.  
- Objects are processed **in the order they appear** in the recipe, allowing later sources to depend on earlier ones.

### Simplified Example: Extracting a Nested Archive

```
{
  "retroarch": [
    {
      "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch.7z",
      "source_type": "http",
      "version": "1.21.0",
      "extraction_type": "archive"
    },
    {
      "source_url": "RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage",
      "source_type": "local",
      "extraction_type": "appimage",
      "assets": [
        {
          "type": "dir",
          "source": "usr/bin",
          "dest": "bin"
        }
      ]
    },
    {
      "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
      "source_type": "http",
      "version": "1.21.0",
      "extraction_type": "archive",
      "assets": [
        {
          "type": "dir",
          "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
          "dest": "cores"
        }
      ]
    }
  ]
}
```

**Explanation**

1. **Core source** – Downloads `RetroArch.7z` and extracts it as an archive.  
2. **First additional source** – Treats the already‑extracted AppImage (`RetroArch-Linux-x86_64.AppImage`) as a *local* source, extracts it, and copies its `usr/bin` directory to the artifact’s `bin` folder.  
3. **Second additional source** – Downloads a second archive (`RetroArch_cores.7z`), extracts it, and copies the cores directory into the artifact’s `cores` folder.

By ordering the additional sources array this way, the Alchemist ensures that each step has the necessary data from the previous step before proceeding.


### Object 1 - Core Archive (downloaded)


```
{
  "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch.7z",
  "source_type": "http",
  "version": "1.21.0",
  "extraction_type": "archive"
}
```

**Alchemist:**

- **Download:** `RetroArch.7z` is fetched from the internet and placed into `$WORKDIR`.  
- **Extraction:** Treated as an `archive`; it is extracted to the default destination `$WORKDIR/RetroArch.7z-extracted`.  
- **Post‑extract actions:** None (no assets, libs, or extras).  
- **Next step:** The Alchemist proceeds to Object 2.

### Object 2 - Local AppImage (extracted from the first archive)

```
    {
      "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
      "source_type": "http",
      "version": "1.21.0",
      "extraction_type": "archive",
      "assets": [
        {
          "type": "dir",
          "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
          "dest": "cores"
        }
      ]
    }
  ]
}
```

**Alchemist:**

- **Source:** The AppImage located at `$WORKDIR/RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage` (produced by Object 1).  
- **Extraction:** Handled as an `appimage`.  
- **Asset gathering:** The directory `$WORKDIR/$EXTRACTED_PATH/usr/bin/` is collected and copied to `$COMPONENT_ARTIFACT_ROOT/bin/`.

### Object 3 - Additional Cores Archive (downloaded)


- **Download:** A new archive `RetroArch_cores.7z` is retrieved from the internet.  
- **Extraction:** Treated as an `archive`.  
- **Asset gathering:** The path `$WORKDIR/$EXTRACTED_PATH/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores/` is collected and placed into `$COMPONENT_ARTIFACT_ROOT/cores/`.

```
{
    "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
    "source_type": "http",
    "version": "1.21.0",
    "extraction_type": "archive",
    "assets": [
        {
            "type": "dir",
            "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
            "dest": "cores"
        }
    ]
}
```


### Why This Verbose Multi‑Object Approach?

- **Fine‑grained control:** Each object can specify its own assets, libraries, and extras, ensuring precise handling of files.  
- **Avoids conflicts:** Prevents issues where a parent archive contains multiple files with the same extensions (blob‑matching problems).  
- **Flexibility:** Different classes of files (assets, libs, etc.) can originate from distinct sources, allowing consistent and reproducible builds.  

By processing each source object sequentially, the Alchemist maintains strict control over every step, guaranteeing deterministic results across builds.





---

## Reusable Environmental Variable Reference

### Core Paths            - Flathub source
        Components Ingredient Files
        RetroDECK Tools & Functions
        Flatpak
        Testing
    Credits ❤️
    Archive 📂

Table of contents

    The RetroDECK Alchemist
        Repository Context
    Creating a new componment_recipe.json tips
        Tip 1: Component Source Format: What to Prioritize?
        Tip 2: TEMPLATES and EXAMPLES of component_recipe.json
        Tip 3: Hunt the libraries
    Structure of component_recipe.json
        Optional Inclusions
        Key Principles
    Example - Recipe Breakdown: Azahar
    Component Recipes: Component Information & Key‑Value Reference
        assets
        libs
        extras
    Nested Archives & additional_sources
        Simplified Example: Extracting a Nested Archive
        Object 1 - Core Archive (downloaded)
        Object 2 - Local AppImage (extracted from the first archive)
        Object 3 - Additional Cores Archive (downloaded)
        Why This Verbose Multi‑Object Approach?
    Reusable Environmental Variable Reference
        Core Paths
        Download & Extraction Helpers
        Flatpak‑Related Variables
        Version Management
    Alchemist Execution Logic
        Alchemist Process Abstraction
        Example: Final Artifact Layout ($COMPONENT_NAME-artifact) for Azahar

RetroDECK Alchemist & component_recipe.json
The RetroDECK Alchemist

The RetroDECK Alchemist is a magician / chef / bartender who , when given the proper instruction, can transmute one or more base source ingredients into the perfect gem of a component artifact .

Alchemy — noun — “A power or process that changes or transforms something in a mysterious or impressive way.”

(The alchemist.sh it is a Plugin‑Based Component Assembler).

Concistency is important

    Garbage in, garbage out – Wikipedia

HEREBY BE WARNED

Alchemy and cooking is, by definition, delicate.

    The ingredients must be known and pure.
    The recipe must be exact.

Any deviation from this process can be disastrous.

To achieve a perfect output, the input must be equally well‑known.
Only by pulling input from a specific moment in time can we guarantee consistency.
Dynamic sources that use “latest” versions change without review, making them unreliable for reproducible builds.

(Be careful with versioning of components for stable builds).
Repository Context

    The alchemist.sh script is invoked from the …/components directory of the cloned repository:
    https://github.com/RetroDECK/components.git
    The script’s location is flexible, but the calling directory matters:
    If run inside a Git repo, $REPO_ROOT points to the repo’s root.
    Otherwise, $REPO_ROOT defaults to the directory containing alchemist.sh.

Creating a new componment_recipe.json tips
Tip 1: Component Source Format: What to Prioritize?

When multiple source formats are available for a component, prioritize them in the following order for ease of integration with RetroDECK:
Priority 	Format 	Description
1 	Flatpak 	A sandboxed package format commonly used on Linux for app distribution , published on flathub
2 	AppImage 	A portable, self-contained executable that runs without installation
3 	Precompiled Binary 	A ready-to-run executable built for a specific platform
4 	Build from Source 	Raw source code that must be compiled manually before use
Tip 2: TEMPLATES and EXAMPLES of component_recipe.json

On the wiki (next to this guide) we list some examples and templates of component_recipe.json.

If you want to make a new one use them as your baseline.

More examples will be added over time.
Tip 3: Hunt the libraries

Use hunt_libraries.sh to auto‑generate the libs[] array.

Guide: Library Hunter & Gatherer <- W.I.P
Structure of component_recipe.json

All component_recipe.json contain at least four parts:

Name

    The root key of the component_recipe.json file, indicating the component’s name.
    The artifact name and some source paths (e.g., the directory name in the components repo) are derived from this name, so it should be consistent across the component.

Source

    Each component has a single source from which files are pulled to be stored in the final artifact.

Asset

    Every component source includes at least one asset—the file(s) pulled from the source ingredient.

Extras

    Minimum extras: component launcher, component manifest, and shipped default config.
    May also include prepared symlinks or other locally‑available files that do not come from downloaded sources.

Optional Inclusions

Additional Sources

    Used when a component requires more than one download to gather all needed files, or when the original source is a nested archive requiring multiple extraction passes.

Additional Assets

    Each source can have its own set of assets, directing the recipe to pull specific files from specific sources.

Libraries

    Most sources need extra libraries to function within the base Flatpak environment.
    The hunt_libraries.sh script can bootstrap a list of requirements for every binary.

Key Principles

    Pin to a Release – All ingredients must be taken from a fixed release to preserve quality and avoid unpredictable changes.
    Stable Versions List – The desired_versions.sh file enumerates all “stable” source versions. These can be referenced in component recipes as placeholders, reducing the need for frequent edits when a new stable version appears.

Example - Recipe Breakdown: Azahar

{
  "azahar": [
    {
      "source_url": "org.azahar_emu.Azahar",
      "source_type": "flatpak_id",
      "version": "$AZAHAR_DESIRED_VERSION",
      "dest": "user",
      "extraction_type": "flatpak",
      "assets": [
        {
          "type": "dir",
          "source": "usr/bin",
          "dest": "bin"
        }
      ],
      "libs": [
        {
          "library": "libQt6Widgets.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Gui.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Core.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Multimedia.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Network.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6DBus.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Concurrent.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        }
      ],
      "extras": [
        {
          "type": "dir",
          "source": "$REPO_ROOT/$COMPONENT_NAME",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        }
      ]
    }
  ]
}

Component Recipes: Component Information & Key‑Value Reference
Field 	Description
JSON root key 	Defines the component name and creates the placeholder variable $COMPONENT_NAME.
source_url 	{SOURCE_URL} – URL/path to download the source. Acceptable forms: direct HTTP(S) link, redirect, GitHub repo URL, flathub ID or local filesystem path. Can contain a {VERSION} placeholder that will be replaced by the value of the version key. Relative local paths expand to $WORKDIR/.
source_type 	{SOURCE_TYPE} – Determines which downloader plugin to use
• - flatpak-id – Flathub ID
- github-release - Github Releases
- http - Web download
version 	{VERSION} – Specific version to fetch. For non‑local sources, this replaces {VERSION} in source_url. For local sources, latest can be used if no version is required. Required for all types except local. Substituted for {VERSION} in source_url.
• http / github-release – Specific version string (or latest for GitHub)
extraction_type 	{EXTRACTION_TYPE} – Extraction plugin to apply to the downloaded file. Supported methods:
• appimage – Extract AppImage ($EXTRACTED_PATH = <dest>/<AppImage‑name>-extracted)
• archive – Extract any archive ($EXTRACTED_PATH = <dest>/<archive‑name>-extracted)
• local / git / flatpak – Dummy plugins returning $DOWNLOADED_FILE as $EXTRACTED_PATH
dest 	(Optional) Absolute destination for download/extraction. Defaults to $WORKDIR. For flatpak-id it also selects install scope (user / system).
additional_sources 	(Optional) Array of extra source objects with the same structure, allowing multiple downloads to be processed similarly.
assets

Items to copy from the extracted source into the final artifact.
Field 	Description
type 	Defines whether the asset is a single file (file) or an entire directory (dir).
source 	Path to the desired file or directory, relative to the $EXTRACTED_PATH variable produced during the extraction stage (e.g., usr/bin).
dest 	Path where the asset should be placed, relative to $COMPONENT_ARTIFACT_ROOT (e.g., bin). This determines the layout inside the final artifact archive.
libs

Additional library objects are listed here, each processed identically to the previously described library entries.
Field 	Description
library 	Name of the library to collect. Libraries are resolved by stripping the filename to its base extension to capture dynamic symlinks. Example: specifying libQt6Widgets.so.6 actually gathers all matching files like libQt6Widgets.so* from the source.
runtime_name 	(Optional) Name of the Flatpak runtime from which to obtain the library (requires runtime_version).
runtime_version 	(Optional) Specific version of the Flatpak runtime to target (requires runtime_name).
dest 	Directory where the library should be placed, relative to $COMPONENT_ARTIFACT_ROOT. When a runtime is specified, expands to $COMPONENT_ARTIFACT_ROOT/<runtime_name>/<runtime_version>/. Otherwise expands to $COMPONENT_ARTIFACT_ROOT/.
source 	(Optional) If present, specifies a concrete source location for the library relative to $EXTRACTED_PATH if not using a runtime. Used when the library must be taken from a particular asset rather than a Flatpak runtime.
extras

An array of objects defining extra content to be gathered or created for the final artifact.
Field 	Description
type 	Defines the kind of extra content dir, file, symlink, or create.
source 	(semi‑optional) Source path for the extra. Can be absolute or relative. Depends on type:
• dir / file – Absolute or relative path (relative expands to $WORKDIR/).
• symlink – Path where the symlink will be created (relative expands to $COMPONENT_ARTIFACT_ROOT/).
• create – Omitted.
dest 	(optional) Destination relative to $COMPONENT_ARTIFACT_ROOT for dir, file, and create. For symlink it is an absolute target path. If relative, it expands to $COMPONENT_ARTIFACT_ROOT/dest.
contents 	(optional) Allows inserting provided information directly into the destination file.
Nested Archives & additional_sources

    A nested archive creates a new archive that also needs extraction.
    Objects are processed in the order they appear in the recipe, allowing later sources to depend on earlier ones.

Simplified Example: Extracting a Nested Archive

{
  "retroarch": [
    {
      "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch.7z",
      "source_type": "http",
      "version": "1.21.0",
      "extraction_type": "archive"
    },
    {
      "source_url": "RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage",
      "source_type": "local",
      "extraction_type": "appimage",
      "assets": [
        {
          "type": "dir",
          "source": "usr/bin",
          "dest": "bin"
        }
      ]
    },
    {
      "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
      "source_type": "http",
      "version": "1.21.0",
      "extraction_type": "archive",
      "assets": [
        {
          "type": "dir",
          "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
          "dest": "cores"
        }
      ]
    }
  ]
}

Explanation

    Core source – Downloads RetroArch.7z and extracts it as an archive.
    First additional source – Treats the already‑extracted AppImage (RetroArch-Linux-x86_64.AppImage) as a local source, extracts it, and copies its usr/bin directory to the artifact’s bin folder.
    Second additional source – Downloads a second archive (RetroArch_cores.7z), extracts it, and copies the cores directory into the artifact’s cores folder.

By ordering the additional sources array this way, the Alchemist ensures that each step has the necessary data from the previous step before proceeding.
Object 1 - Core Archive (downloaded)

{
  "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch.7z",
  "source_type": "http",
  "version": "1.21.0",
  "extraction_type": "archive"
}

Alchemist:

    Download: RetroArch.7z is fetched from the internet and placed into $WORKDIR.
    Extraction: Treated as an archive; it is extracted to the default destination $WORKDIR/RetroArch.7z-extracted.
    Post‑extract actions: None (no assets, libs, or extras).
    Next step: The Alchemist proceeds to Object 2.

Object 2 - Local AppImage (extracted from the first archive)

    {
      "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
      "source_type": "http",
      "version": "1.21.0",
      "extraction_type": "archive",
      "assets": [
        {
          "type": "dir",
          "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
          "dest": "cores"
        }
      ]
    }
  ]
}

Alchemist:

    Source: The AppImage located at $WORKDIR/RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage (produced by Object 1).
    Extraction: Handled as an appimage.
    Asset gathering: The directory $WORKDIR/$EXTRACTED_PATH/usr/bin/ is collected and copied to $COMPONENT_ARTIFACT_ROOT/bin/.

Object 3 - Additional Cores Archive (downloaded)

    Download: A new archive RetroArch_cores.7z is retrieved from the internet.
    Extraction: Treated as an archive.
    Asset gathering: The path $WORKDIR/$EXTRACTED_PATH/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores/ is collected and placed into $COMPONENT_ARTIFACT_ROOT/cores/.

{
    "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
    "source_type": "http",
    "version": "1.21.0",
    "extraction_type": "archive",
    "assets": [
        {
            "type": "dir",
            "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
            "dest": "cores"
        }
    ]
}

Why This Verbose Multi‑Object Approach?

    Fine‑grained control: Each object can specify its own assets, libraries, and extras, ensuring precise handling of files.
    Avoids conflicts: Prevents issues where a parent archive contains multiple files with the same extensions (blob‑matching problems).
    Flexibility: Different classes of files (assets, libs, etc.) can originate from distinct sources, allowing consistent and reproducible builds.

By processing each source object sequentially, the Alchemist maintains strict control over every step, guaranteeing deterministic results across builds.
Reusable Environmental Variable Reference
Core Paths
Variable 	Description
$REPO_ROOT 	Set to the root of the git‑cloned repository if alchemist.sh is invoked inside one. Otherwise, defaults to the directory from which the script is called.
$WORKDIR 	Working directory for the current component build. Holds downloaded sources, extracted files, and the temporary artifact directory. Can be overridden via an argument to alchemist.sh; otherwise falls back to $DEFAULT_WORKDIR defined in defaults.sh.
$COMPONENT_NAME 	Name of the component currently being processed. Should match the component directory name in the components repository for consistency.
$COMPONENT_ARTIFACT_ROOT 	Path to the final artifact directory where all files destined for the archive are placed. Computed as: \(WORKDIR/\)COMPONENT_NAME-artifact.
Download & Extraction Helpers
Variable 	Description
$DOWNLOADED_FILE 	Stores the full path of the most recently downloaded file. Populated by the download.sh plugin (via echo "DOWNLOADED_FILE=...").
$EXTRACTED_PATH 	Stores the full path of the most recently extracted archive. Populated by the extract.sh plugin (via echo "EXTRACTED_PATH=..."). For local extractions (no real archive), a dummy plugin returns the same path as $DOWNLOADED_FILE.
Flatpak‑Related Variables
Variable 	Description
$FLATPAK_USER_ROOT 	Default user‑install location ($HOME/.local/share/flatpak/app). Defined in defaults.sh.
$FLATPAK_SYSTEM_ROOT 	Default system‑install location (/var/lib/flatpak/app). Defined in defaults.sh.
$FLATPAK_DEFAULT_INSTALL_MODE 	Default install mode for Flatpak packages (user). System mode may require sudo.
$FLATHUB_REPO 	URL of the Flathub repository (https://flathub.org/repo/flathub.flatpakrepo). Adjust if the repo changes.
Version Management
Variable 	Description
$DESIRED_VERSIONS 	Path to the desired_versions.sh script containing the catalog of desired component versions. Used to resolve version placeholders in component recipes. Can be overridden per alchemist.sh run via an input argument, enabling separate “stable” and “beta” version sets.
Alchemist Execution Logic

Take the Azahar example for above:

    Component Name – Set to azahar.
    Download URL – org.azahar_emu.Azahar.
    Downloader Plugin – flatpak_id (selected via source_type).
    Version Resolution – $AZAHAR_DESIRED_VERSION is read from desired_versions.sh (e.g., export AZAHAR_DESIRED_VERSION="2123.3"). This value replaces {VERSION} in the URL.
    Downloaded File Path – Stored in $DOWNLOADED_FILE.
    Extraction Plugin – flatpak, applied to $DOWNLOADED_FILE.
    Extracted Destination – Path returned in $EXTRACTED_PATH.
    Copy the full directory from $EXTRACTED_PATH/usr/bin to $COMPONENT_ARTIFACT_ROOT/bin.
    Flatpak Runtime – Install the required runtime (name and version) if it isn’t already present.
    Gather Library – Retrieve libQt6Widgets.so.6 from the specified Flatpak runtime and place it in the appropriate location within the artifact.

Alchemist Process Abstraction

At a high level, the Alchemist processes information in this loop:

    Read component_recipe.json file.
    Read component name from the root key.
    Generate a set of parent objects to be processed.
    Each parent object contains download sources, extraction commands, asset‑gathering instructions, library‑gathering instructions, and extras‑gathering instructions.
    Process each object sequentially.
    Compress the contents of the *-artifact directory for storage.

Example: Final Artifact Layout ($COMPONENT_NAME-artifact) for Azahar

azahar-artifact
├── bin
│   ├── azahar
│   └── qt.conf
├── component_extras.sh
├── component_functions.sh
├── component_launcher.sh
├── component_libs.json
├── component_manifest.json
├── component_prepare.sh
├── component_recipe.json
├── rd_config
│   └── qt-config.ini
└── shared-libs
    └── org.kde.Platform
        └── 6.9
            ├── libQt6Concurrent.so -> libQt6Concurrent.so.6
            ├── libQt6Concurrent.so.6 -> libQt6Concurrent.so.6.9.3
            ├── libQt6Concurrent.so.6.9.3
            ├── libQt6Core.so -> libQt6Core.so.6
            ├── libQt6Core.so.6 -> libQt6Core.so.6.9.3
            ├── libQt6Core.so.6.9.3
            ├── libQt6DBus.so -> libQt6DBus.so.6
            ├── libQt6DBus.so.6 -> libQt6DBus.so.6.9.3
            ├── libQt6DBus.so.6.9.3
            ├── libQt6Gui.so -> libQt6Gui.so.6
            ├── libQt6Gui.so.6 -> libQt6Gui.so.6.9.3
            ├── libQt6Gui.so.6.9.3
            ├── libQt6Multimedia.so -> libQt6Multimedia.so.6
            ├── libQt6Multimedia.so.6 -> libQt6Multimedia.so.6.9.3
            ├── libQt6Multimedia.so.6.9.3
            ├── libQt6Network.so -> libQt6Network.so.6
            ├── libQt6Network.so.6 -> libQt6Network.so.6.9.3
            ├── libQt6Network.so.6.9.3
            ├── libQt6Widgets.so -> libQt6Widgets.so.6
            ├── libQt6Widgets.so.6 -> libQt6Widgets.so.6.9.3
            └── libQt6Widgets.so.6.9.3

release

| Variable | Description |
|---------|-------------|
| **$REPO_ROOT** | Set to the root of the git‑cloned repository if `alchemist.sh` is invoked inside one. Otherwise, defaults to the directory from which the script is called. |
| **$WORKDIR** | Working directory for the current component build. Holds downloaded sources, extracted files, and the temporary artifact directory. Can be overridden via an argument to **alchemist.sh**; otherwise falls back to **$DEFAULT_WORKDIR** defined in `defaults.sh`. |
| **$COMPONENT_NAME** | Name of the component currently being processed. Should match the component directory name in the components repository for consistency. |
| **$COMPONENT_ARTIFACT_ROOT** | Path to the final artifact directory where all files destined for the archive are placed. Computed as: **$WORKDIR/$COMPONENT_NAME-artifact**. |

### Download & Extraction Helpers

| Variable | Description |
|---------|-------------|
| **$DOWNLOADED_FILE** | Stores the full path of the most recently downloaded file. Populated by the `download.sh` plugin (via **echo "DOWNLOADED_FILE=..."**). |
| **$EXTRACTED_PATH** | Stores the full path of the most recently extracted archive. Populated by the `extract.sh` plugin (via **echo "EXTRACTED_PATH=..."**). For **local** extractions (no real archive), a dummy plugin returns the same path as **$DOWNLOADED_FILE**. |

### Flatpak‑Related Variables

| Variable | Description |
|---------|-------------|
| **$FLATPAK_USER_ROOT** | Default user‑install location (**$HOME/.local/share/flatpak/app**). Defined in `defaults.sh`. |
| **$FLATPAK_SYSTEM_ROOT** | Default system‑install location (**/var/lib/flatpak/app**). Defined in `defaults.sh`. |
| **$FLATPAK_DEFAULT_INSTALL_MODE** | Default install mode for Flatpak packages (**user**). System mode may require **sudo**. |
| **$FLATHUB_REPO** | URL of the Flathub repository (**https://flathub.org/repo/flathub.flatpakrepo**). Adjust if the repo changes. |

### Version Management

| Variable | Description |
|---------|-------------|
| **$DESIRED_VERSIONS** | Path to the `desired_versions.sh` script containing the catalog of desired component versions. Used to resolve version placeholders in component recipes. Can be overridden per **alchemist.sh** run via an input argument, enabling separate “stable” and “beta” version sets. |


---

## Alchemist Execution Logic

Take the Azahar example for above:

1. **Component Name** – Set to `azahar`.  
2. **Download URL** – `org.azahar_emu.Azahar`.  
3. **Downloader Plugin** – `flatpak_id` (selected via `source_type`).  
4. **Version Resolution** – `$AZAHAR_DESIRED_VERSION` is read from `desired_versions.sh` (e.g., `export AZAHAR_DESIRED_VERSION="2123.3"`). This value replaces `{VERSION}` in the URL.  
5. **Downloaded File Path** – Stored in `$DOWNLOADED_FILE`.  
6. **Extraction Plugin** – `flatpak`, applied to `$DOWNLOADED_FILE`.  
7. **Extracted Destination** – Path returned in `$EXTRACTED_PATH`.  
8. **Copy the full directory** from `$EXTRACTED_PATH/usr/bin` to `$COMPONENT_ARTIFACT_ROOT/bin`.  
9. **Flatpak Runtime** – Install the required runtime (name and version) if it isn’t already present.  
10. **Gather Library** – Retrieve `libQt6Widgets.so.6` from the specified Flatpak runtime and place it in the appropriate location within the artifact. 

### Alchemist Process Abstraction

At a high level, the Alchemist processes information in this loop:

1. **Read** `component_recipe.json` file.  
2. **Read** component name from the root key.  
3. **Generate** a set of *parent objects* to be processed.  
   - Each parent object contains download sources, extraction commands, asset‑gathering instructions, library‑gathering instructions, and extras‑gathering instructions.  
4. **Process** each object sequentially.  
5. **Compress** the contents of the `*-artifact` directory for storage.

### Example: Final Artifact Layout ($COMPONENT_NAME-artifact) for Azahar

```
azahar-artifact
├── bin
│   ├── azahar
│   └── qt.conf
├── component_extras.sh
├── component_functions.sh
├── component_launcher.sh
├── component_libs.json
├── component_manifest.json
├── component_prepare.sh
├── component_recipe.json
├── rd_config
│   └── qt-config.ini
└── shared-libs
    └── org.kde.Platform
        └── 6.9
            ├── libQt6Concurrent.so -> libQt6Concurrent.so.6
            ├── libQt6Concurrent.so.6 -> libQt6Concurrent.so.6.9.3
            ├── libQt6Concurrent.so.6.9.3
            ├── libQt6Core.so -> libQt6Core.so.6
            ├── libQt6Core.so.6 -> libQt6Core.so.6.9.3
            ├── libQt6Core.so.6.9.3
            ├── libQt6DBus.so -> libQt6DBus.so.6
            ├── libQt6DBus.so.6 -> libQt6DBus.so.6.9.3
            ├── libQt6DBus.so.6.9.3
            ├── libQt6Gui.so -> libQt6Gui.so.6
            ├── libQt6Gui.so.6 -> libQt6Gui.so.6.9.3
            ├── libQt6Gui.so.6.9.3
            ├── libQt6Multimedia.so -> libQt6Multimedia.so.6
            ├── libQt6Multimedia.so.6 -> libQt6Multimedia.so.6.9.3
            ├── libQt6Multimedia.so.6.9.3
            ├── libQt6Network.so -> libQt6Network.so.6
            ├── libQt6Network.so.6 -> libQt6Network.so.6.9.3
            ├── libQt6Network.so.6.9.3
            ├── libQt6Widgets.so -> libQt6Widgets.so.6
            ├── libQt6Widgets.so.6 -> libQt6Widgets.so.6.9.3
            └── libQt6Widgets.so.6.9.3
```
