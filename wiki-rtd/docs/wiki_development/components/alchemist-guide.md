# The RetroDECK Alchemist - A component_recipe.sh and artifact making  guide

`alchemist.sh` reads the `component_recipe` definitions and uses them to build **component artifacts**.

These artifacts are compressed archives containing the files, binaries and resources required by each RetroDECK component.

The generated artifacts are then consumed by the **RetroDECK Assembler**, which integrates the components into RetroDECK during the release process.

### HEREBY BE WARNED!

*Alchemy* - *noun* - "A power or process that changes or transforms something in a mysterious or impressive way."

The **RetroDECK Alchemist** is a magician, chef and bartender.

Given the proper recipe, it can transmute one or more **sourced ingredients** into the perfect **component artifact**.

Alchemy and cooking are, by definition, delicate processes.

- The ingredients must be **known and pure**.
- The recipe must be **precise and deterministic**.
- Any deviation from the process can be **disastrous**.

To produce a consistent artifact, every ingredient must be well understood. 

Ingredients should be pulled from the shelf **when they are known to be correct and the time is right**. Always chasing the freshest experimental ingredients is a fool’s errand and can lead to unreliable, non-reproducible artifacts.

---

### In Other Words

- **Keep recipes correct:** Ensure every recipe is accurate, reproducible, and well maintained.
- **Pin stable versions:** Carefully manage component versions and lock dependencies to known-good versions.
- **Prefer proven releases:** Do not automatically chase nightly, latest, or experimental source releases. These can introduce instability and produce unreliable systems that may break the user environment.
- **Use bleeding-edge sources only when necessary:** Use nightly or unstable sources only when no stable alternative exists, such as components that are exclusively distributed as daily or otherwise unstable builds.
- **Check major releases before upgrading:** When a component publishes a new major stable version, check its official channels and social media for known issues or planned hotfixes.
- **Wait for hotfixes when appropriate:** If a major release has a hotfix planned shortly after release, wait for the hotfix before promoting the new version to a stable RetroDECK release.
- **Prioritize reliability:** Stable RetroDECK releases should favor known-good, tested component versions over being immediately up to date.

---

## Repository Context

- `alchemist.sh` is invoked from the `components` directory of the cloned [RetroDECK components repository](https://github.com/RetroDECK/components).
- The script location is flexible, but the **calling directory matters**:
- When run inside a Git repository, `$REPO_ROOT` points to the repository root.
- Otherwise, `$REPO_ROOT` defaults to the directory containing `alchemist.sh`.

---
  
## Running Locally

Follow these steps to build and test a component artifact locally with **Alchemist**.

### 1. Download Alchemist

Clone or download the Alchemist automation tools from:

[RetroDECK Components - Alchemist](https://github.com/RetroDECK/components/tree/cooker/automation-tools/alchemist)

### 2. Prepare the Component

Place the component directory inside the `alchemist` directory:

`./alchemist.sh -f <component-directory>/component_recipe.json`

```
alchemist/
└── <component_directory>/
    ├── component_recipe.json
    └── <ingredient-files>
```

The component directory must contain a `component_recipe.json` and all required ingredient files.

### 3. Build the Artifact

From the `alchemist` directory, run:

```
./alchemist.sh -f <component_directory>/component_recipe.json
```

### 4. Output

After a successful build, the generated artifact will be available at:

`<component_directory>/artifact/<component_artifact>.tar.gz`


### 5. Extract the Artifact

Extract the generated `.tar.gz` archive:

`<component_artifact>.tar.gz`

This will produce the component directory contained within the artifact.

### 6. Install the Component

Move the extracted component directory into RetroDECK's internal `components` directory.

The installation path depends on the RetroDECK installation type:

| Installation | Components Directory | Privileges |
|---|---|---|
| **Local / User** | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | User access |
| **System-wide** | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | Requires `sudo` |

### 7. Launch RetroDECK

Start RetroDECK after installing the component.

If the component is component files are configured correctly, RetroDECK should detect and load it automatically.

---

## Creating a New `component_recipe.json` - Alchemical Tips

These are the **Alchemist's pro tips** for creating reliable, reproducible and maintainable component recipes.

### Key Principles

- **Pin to a Release** - Ingredients should be retrieved from a fixed, known-good release whenever possible. This preserves build quality and prevents unexpected upstream changes from affecting artifacts.
- **Use Stable Version References** - The `desired_versions.sh` file maintains the versions designated as stable. Recipes can reference these versions as placeholders, reducing the need to modify individual recipes whenever a new stable version is adopted.
- **Prefer Reproducibility** - A recipe should produce the same artifact from the same pinned inputs. Avoid unpinned URLs, moving targets, and automatically tracking upstream `latest` or nightly releases unless there is no stable alternative.

### Component Source Format - What to Prioritize?

When multiple source formats are available, prioritize them in the following order. This generally provides the easiest and most reliable integration with RetroDECK:

| Priority | Format | Description |
|---:|---|---|
| 1 | **Flatpak** | Sandboxed Linux application package, commonly distributed through Flathub. |
| 2 | **AppImage** | Portable, self-contained application that runs without traditional installation. |
| 3 | **Precompiled Binary** | Ready-to-run executable built for a specific platform or architecture. |
| 4 | **Build from Source** | Raw source code that must be compiled before it can be used. |

---

### Templates and Examples of `component_recipe.json`

The wiki pages linked alongside this guide contain templates and example `component_recipe.json` files. Use these as a baseline when creating a new recipe.

For the most up-to-date recipes, also review the **cooker** or a future **version** branch of the RetroDECK Components repository:

[RetroDECK Components Repository - cooker](https://github.com/RetroDECK/components/tree/cooker)

---

## Structure of component_recipe.json

Every `component_recipe.json` contains at least the following core elements:

### name

- The root key of the `component_recipe.json` that identifies the component.
- The artifact name and some source paths, such as the component directory name in the repository, are derived from this value.
- Keep the name consistent across the recipe, component directory, and generated artifact.

### source

- Defines where the component files are obtained from.
- Each component must have at least one source.

### assets

- Defines the files or resources to retrieve from a source.
- Every source must contain at least one asset.

### Optional: Additional Sources

Use additional sources when a component requires multiple downloads to obtain all required files.

They may also be required when the primary source is a nested archive that needs multiple extraction stages.

### Optional: Additional Assets

Each source can define its own set of assets.

Use additional assets to retrieve specific files or resources from their respective sources.

### Optional: Libraries - libs

Most binary-based sources require additional libraries to function correctly within the base Flatpak environment.

The **RetroDECK: Library Hunter**, `hunt_libraries.sh`, can be used to identify the libraries required by a binary and generate them as a `.json` file.

The generated `.json` file can then be copied into the `component_recipe.json` as part of the recipe's library configuration.

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
          "source": "bin",
          "dest": "bin"
        },
        {
          "type": "dir",
          "source": "$REPO_ROOT/$COMPONENT_NAME",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "create",
          "dest": "component_version",
          "contents": "$SOURCE_VERSION"
        },
        {
          "type": "dir",
          "source": "$REPO_ROOT/$COMPONENT_NAME/rd_assets/rd_config",
          "dest": "rd_config"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_functions.sh",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_launcher.sh",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_manifest.json",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_recipe.json",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        }
      ],
      "libs": []
    }
  ]
}



```

## Component Recipes: Component Information & Key–Value Reference

A `component_recipe.json` defines how **Alchemist** obtains component sources, extracts them, collects the required assets and libraries and assembles them into a compressed component artifact.

### Recipe Structure

A component recipe uses the component name as the JSON root key. The value is an array of source definitions.

```
{
  "component_name": [
    {
      "source_url": "https://example.com/download/v{VERSION}/app.tar.gz",
      "source_type": "http",
      "version": "1.0.0",
      "extraction_type": "archive",
      "assets": [
        {
          "type": "dir",
          "source": "bin",
          "dest": "bin"
        }
      ],
      "libs": [
        {
          "library": "libQt6Core.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "lib"
        }
      ]
    }
  ]
}
```

A recipe can contain multiple source objects when a component requires files from multiple sources.

---

### Source Fields

The source section defines **where a component is obtained** and **how Alchemist processes the source**.

| Field | Description |
|---|---|
| **JSON root key** | Defines the component name and the `$COMPONENT_NAME` variable. The name is also used when creating component paths and artifacts. |
| **source_url** | URL or path used to obtain the source. Depending on `source_type`, this may be an HTTP(S) URL, GitHub/GitLab/Codeberg release, Flathub ID, Git repository, Flatpak bundle, or local filesystem path. Supports the `{VERSION}` placeholder, which is replaced with the resolved version. |
| **source_type** | Selects the downloader plugin used to obtain the source. See [Supported Source Types](#supported-source-types). |
| **version** | Version or revision to retrieve. Depending on the source type, this may be a release version, Git tag, branch, commit, or another source-specific revision. The value can also replace `{VERSION}` in `source_url`. |
| **extraction_type** | Selects the extraction plugin used to process the downloaded source. See [Extraction Types](#extraction-types). |
| **dest** | Optional destination used during downloading or extraction. If omitted, Alchemist uses its working directory. |
| **additional_sources** | Optional array of additional source definitions. Use this when a component requires multiple downloads or source packages. Each additional source follows the same source structure. |

### Supported Source Types

| Source Type | Purpose |
|---|---|
| `http` | Downloads a file from an HTTP(S) URL. |
| `github-release` | Obtains a release asset from GitHub. |
| `gitlab-release` | Obtains a release asset from GitLab. |
| `codeberg-release` | Obtains a release asset from Codeberg. |
| `flatpak-id` | Obtains a Flatpak application using its application ID. |
| `flatpak-bundle` | Obtains a Flatpak bundle. |
| `git` | Obtains source from a Git repository. |
| `local` | Uses a local file or directory as the source. |

### Extraction Types

| Extraction Type | Purpose |
|---|---|
| `archive` | Extracts a supported archive. |
| `appimage` | Extracts an AppImage. |
| `local` | Passes the downloaded or local source through without archive extraction. |

After the extraction stage, Alchemist exposes the resulting source through:

```
$EXTRACTED_PATH
```

Asset source paths are normally resolved relative to `$EXTRACTED_PATH`.

## assets

The `assets` array defines which files, directories, scripts, links, and other resources Alchemist processes and how they are placed into the final component artifact.

### asset Fields

| Field | Description |
|---|---|
| **type** | Defines the asset operation to perform. |
| **source** | Source file, directory, or script used by the asset operation. Normally resolved relative to `$EXTRACTED_PATH`. |
| **dest** | Destination or target used by the asset operation. Its meaning depends on the asset type. |
| **contents** | Optional content supplied to supported operations, such as `create` and script-related operations. |
| **executable** | Optional setting used by supported asset handlers to control executable permissions. |

### asset Types

| Type | Purpose |
|---|---|
| `dir` | Copies an entire directory into the component artifact. |
| `file` | Copies a single file into the component artifact. |
| `merge` | Merges source contents into a destination. Useful when multiple sources contribute files to the same location. |
| `file-rename` | Renames or moves a file. |
| `create` | Creates a new file, optionally using `contents`. |
| `symlink` | Creates a symbolic link. |
| `archive` | Extracts an archive from selected files or directories (catch-all for all archives). |
| `7z` | Extracts a 7z archive. |
| `zip` | Extracts a ZIP archive. |
| `tar.gz` | Extracts a gzip-compressed tar archive. |
| `tgz` | Extracts a gzip-compressed tar archive. |
| `tar.bz2` | Extracts a bzip2-compressed tar archive. |
| `tbz2` | Extracts a bzip2-compressed tar archive. |
| `tar.xz` | Extracts an xz-compressed tar archive. |
| `txz` | Extracts an xz-compressed tar archive. |
| `tar` | Extracts an uncompressed tar archive. |
| `script` | Processes and runs a Bash script through the asset handler. |
| `source` | Sources a Bash script into the current shell environment. |
| `execute` | Executes a script as a separate Bash process. |
| `cleanup` | Removes a file from the extracted source. |
| `cleanup-dir` | Removes a directory from the extracted source. |

### asset Path Handling

For standard file and directory operations, paths are generally resolved as follows

source → `$EXTRACTED_PATH/<source>`
dest   → `$COMPONENT_ARTIFACT_ROOT/<dest>`


```
{
  "type": "dir",
  "source": "usr/bin",
  "dest": "bin"
}
```

The asset `source` is resolved relative to: `$EXTRACTED_PATH/usr/bin/` and copied into: `$COMPONENT_ARTIFACT_ROOT/bin/`

### create

The `create` asset type creates a new file in the component artifact.

```
{
  "type": "create",
  "dest": "version.txt",
  "contents": "{VERSION}"
}
```

### executable

The `executable` field is supported by the `file` asset operation.

The copied file is marked as executable.

Other local asset types cannot be marked executable through this field.

```
{
  "type": "file",
  "source": "my-app",
  "dest": "bin",
  "executable": tr
}  
```

### script

The `script` and `source` asset types source the specified Bash script into the current shell environment.

```
{
  "type": "script",
  "source": "setup.sh"
}
```

### execute

The `execute` asset type starts the script as a separate Bash process.

```
{
  "type": "execute",
  "source": "setup.sh",
  "contents": "argument"
}
```

For `execute`, `contents` is passed to the script as an argument; it is **not** written to the script.

### cleanup

Use `cleanup` to remove a file:

```
{
  "type": "cleanup",
  "source": "unwanted-file"
}
```

Use `cleanup-dir` to remove a directory and its contents:

```
{
  "type": "cleanup-dir",
  "source": "unwanted-directory"
}
```

These operations modify the extracted source before the final artifact is assembled.


---

## assets: libs

The `libs` array defines additional libraries that Alchemist must collect for the component.

Each library object supports the following fields:

| Field | Description |
|---|---|
| **library** | Library filename to collect. Alchemist resolves the library to its `.so` basename and copies matching dynamic-library files and symlinks. |
| **runtime_name** | Optional Flatpak runtime name. Must be supplied together with `runtime_version`. |
| **runtime_version** | Optional Flatpak runtime version. Must be supplied together with `runtime_name`. |
| **dest** | Destination directory. A relative destination is resolved from `$COMPONENT_ARTIFACT_ROOT`. |
| **source** | Optional source directory for the library. Relative paths are resolved from `$EXTRACTED_PATH` when a Flatpak runtime is not used. |

A library can be collected from either:

- A specified Flatpak runtime.
- A specific directory in the extracted source.

```
{
  "library": "libQt6Core.so.6",
  "runtime_name": "org.kde.Platform",
  "runtime_version": "6.9",
  "dest": "shared-libs"
}
```

```
{
  "library": "libexample.so.1",
  "source": "usr/lib",
  "dest": "shared-libs"
}
```

### Runtime Destination

When `runtime_name` and `runtime_version` are provided, the effective destination is:

`$COMPONENT_ARTIFACT_ROOT/<dest>/<runtime_name>/<runtime_version>/`

**Example:**

`$COMPONENT_ARTIFACT_ROOT/shared-libs/org.kde.Platform/6.9/`

When no runtime is specified, a relative `dest` resolves to:

`$COMPONENT_ARTIFACT_ROOT/<dest>/`

### Library Matching

The requested library name is reduced to its `.so` basename when collecting files.

**Example:**

`libQt6Widgets.so.6`

is used to locate and copy the matching library family, including matching symlinks such as:

```
libQt6Widgets.so
libQt6Widgets.so.6
libQt6Widgets.so.6.x.y
```

The exact files available depend on the selected library source.

### Qt Runtime Handling

When a library is collected from `org.kde.Platform`, Alchemist also collects the corresponding Qt plugins when they are available in the runtime.

The plugins are placed under:

`$COMPONENT_ARTIFACT_ROOT/<dest>/org.kde.Platform/<runtime_version>/plugins/`

This behavior is automatic for `org.kde.Platform`.

### Library Placement and shared-libs

Use the destination that matches how the component is expected to locate its dependencies.

For RetroDECK components, `shared-libs` is generally preferred when compatible with the component's library-loading requirements and library-decoupling strategy.

Other destinations, such as `lib`, may be appropriate when an application specifically expects libraries there.


---

## Repo hosted assets

### rd_assets

This directory contains **component-specific RetroDECK configuration files and assets** that are packaged into the component artifact and made available to the Flatpak environment.

Use `rd_assets/` for files that are maintained by RetroDECK rather than obtained directly from the component's upstream source.

- Pre-configured RetroDECK files under `rd_assets/rd_config/`.
- Component-specific configuration files.
- RetroDECK integration assets.
- Additional files or organized subdirectories required by the component.

**Example:**

```
$REPO_ROOT/$COMPONENT_NAME/
└── rd_assets/
    └── custom_art/
        └── artfile.pngf
    └── rd_config/
        └── example.conf
```

Files in `rd_assets/` should be explicitly included by the component recipe when they are required in the final artifact.

For additional examples, see the RetroDECK components repository.

---

### tmp_assets

This directory stores component-specific temporary files and locally generated build assets.

Files placed in `tmp_assets/` are not automatically included in the final component artifact. They must be explicitly referenced by the recipe or otherwise consumed during the build process.

- Locally built component archives.
- `.tar.gz` files generated from source builds.
- Locally generated archives that cannot be downloaded from an external source.
- Temporary files required during component development.

**Example:**

```
$REPO_ROOT/$COMPONENT_NAME/
└── tmp_assets/
    └── <component>.tar.gz
```

**Example:**

`$REPO_ROOT/$COMPONENT_NAME/tmp_assets/example-component.tar.gz`

The locally generated archive can then be referenced by a recipe using the appropriate local source configuration:

```
{
  "example-component": [
    {
      "source_url": "$REPO_ROOT/example-component/tmp_assets/example-component.tar.gz",
      "source_type": "local",
      "version": "1.0.0",
      "extraction_type": "archive"
    }
  ]
}
```


---

## Guide: Adding Libraries - The Library Hunter

Use the [`hunt_libraries.sh`](https://github.com/RetroDECK/RetroDECK/blob/cooker/developer_toolbox/hunt_libraries.sh) developer tool to identify libraries required by a component and generate a starting `libs[]` configuration.

The tool uses `ldd` to inspect the specified binary and generates a JSON list of libraries that are not already provided by the RetroDECK base runtime. It can also search installed Flatpak runtimes and an optional library path, such as libraries bundled with an AppImage.

### Basic Usage

Run the hunter against the binary you are integrating:

    ./developer_toolbox/hunt_libraries.sh /path/to/binary

The script supports the following options:

| Option | Description |
|---|---|
| `-q, --qt-version` | Specify the KDE runtime version to use when resolving Qt libraries. |
| `-p, --path` | Search an additional library directory, such as an AppImage's bundled libraries. |
| `-o, --output` | Specify the output JSON file. |

**Example:**

```
    ./developer_toolbox/hunt_libraries.sh \
      -p /path/to/component/usr/lib \
      -o component_libs.json \
      /path/to/component/usr/bin/example
```

The generated entries use `shared-libs` as the default destination.

**Note:** 

The Library Hunter is a starting point rather than a complete dependency validator. Always verify the generated libraries in the actual Flatpak environment.

### How the Library Hunter Searches

The hunter checks dependencies in several stages:

1. **RetroDECK base runtime** - Libraries already provided by the RetroDECK `org.freedesktop.Platform` runtime are skipped.
2. **KDE runtime** - Qt libraries are resolved from `org.kde.Platform`. Qt 5 and Qt 6 use the corresponding configured runtime versions.
3. **Other installed Flatpak runtimes** - The hunter searches installed user and system runtimes for the required library.
4. **Custom library path** - If `-p` is supplied, the specified path is searched for libraries that could not otherwise be resolved.
5. **Unresolved dependencies** - Libraries that cannot be found are retained in the generated JSON with only the `library` field so they can be resolved manually.

The hunter also examines dependencies of discovered libraries, so indirect library dependencies can be added to the generated list.

### Recommended Workflow

Install the relevant Flatpak runtimes before running the hunter. This gives it access to the runtimes from which component dependencies may be collected.

For components using Qt, make sure the appropriate KDE runtime version is installed. You can explicitly select the Qt runtime with:

```
    ./developer_toolbox/hunt_libraries.sh \
      --qt-version 6.10 \
      /path/to/binary
```

For older components, do not automatically replace an older runtime dependency with the newest runtime. If the component requires a specific runtime version, preserve the runtime and version identified by the dependency analysis and verify it against the component's requirements.

### Using Libraries from an AppImage or Other Local Source

If required libraries are bundled with the component itself, use `--path` to let the hunter search that directory:

```
    ./developer_toolbox/hunt_libraries.sh \
      --path /path/to/appimage-libs \
      /path/to/binary
```

When a library is found through the custom path, the generated entry contains a source path and uses `shared-libs` as its destination.

**Example:**

```
    {
      "library": "libexample.so.1",
      "source": "path/to/lib",
      "dest": "shared-libs"
    }
```

The resulting entry can then be incorporated into the component recipe's `libs[]` array.

### When a Library Cannot Be Found

If the hunter cannot locate a library, it reports the library as unresolved and leaves it in the generated JSON:

```
    {
      "library": "libexample.so.1"
    }
```

Do not assume that an unresolved library should immediately be downloaded from an arbitrary website or copied from the host system.

First determine where the library is legitimately supplied:

- Check the component's upstream package or bundled files.
- Check the appropriate Flatpak runtime.
- Check an AppImage or other upstream distribution package.
- Use the hunter's `--path` option when the library is available in a local component source.
- If the dependency genuinely needs to be packaged separately, obtain it from a trusted and reproducible source and integrate it through the component recipe.

For locally generated or otherwise necessary source material that must be kept with the component, a compressed archive can be stored under:

```
    $REPO_ROOT/$COMPONENT_NAME/tmp_assets/
```

The archive must then be explicitly consumed by the recipe; files in `tmp_assets/` are not automatically included in the final artifact.

### Library Placement

The hunter defaults generated libraries to:

```
    shared-libs
```

This is also the recommended default for most RetroDECK components because it supports RetroDECK's library-decoupling approach.

A typical generated runtime entry looks like:

```
    {
      "library": "libQt6Core.so.6",
      "runtime_name": "org.kde.Platform",
      "runtime_version": "6.10",
      "dest": "shared-libs"
    }
```

Review the generated entries before committing them. Some applications have specific library-loading requirements and may require a different destination.

### Important Limitations

The Library Hunter should not be treated as a definitive dependency scanner.

It is based on `ldd`, checks the locally installed runtimes, optionally searches a supplied library path, and recursively examines dependencies it can resolve. Its results therefore depend on the binary being inspected and the runtimes and library sources available on the development system.

In particular:

- A library being present on the host does not necessarily mean it should be packaged.
- A library missing from the hunter's search paths is not necessarily unavailable.
- The selected runtime version matters for compatibility.
- The generated `libs[]` list should be reviewed rather than copied blindly.
- The final component should be tested inside the target Flatpak environment.

---

## Reusable Environment Variable Reference

Alchemist exposes a small set of environment variables that can be used by recipes, asset handlers, downloaders, extractors and build scripts.

### Core Paths

| Variable | Description |
|---|---|
| **$REPO_ROOT** | Root of the Git repository when Alchemist is run inside a Git working tree. Otherwise, defaults to the current working directory. |
| **$WORKDIR** | Temporary working directory used for the current Alchemist run. It contains downloaded sources, extracted files, and the temporary component artifact directory. An alternative value can be supplied with `-o` / `--output`. If not specified, Alchemist uses `$DEFAULT_WORKDIR`. |
| **$DEFAULT_WORKDIR** | Default temporary working directory. In `0.11.0`, it is created with `mktemp -d` when Alchemist starts. |
| **$COMPONENT_NAME** | Component name obtained from the root key of the recipe. It is also used to construct the component artifact path and final artifact filenames. |
| **$COMPONENT_ARTIFACT_ROOT** | Temporary directory containing the files that will be packaged into the final component archive. Computed as `$WORKDIR/$COMPONENT_NAME-artifact`. |

### Component Artifact Location

During processing:

```
    $WORKDIR/
    └── $COMPONENT_NAME-artifact/
```

The contents of `$COMPONENT_ARTIFACT_ROOT` become the contents of the final component archive.

The final archive is written to:

```
    $REPO_ROOT/$COMPONENT_NAME/artifacts/$COMPONENT_NAME.tar.gz
```

A SHA-256 checksum is written alongside it as:

```
    $REPO_ROOT/$COMPONENT_NAME/artifacts/$COMPONENT_NAME.tar.gz.sha
```

Alchemist removes the temporary `$WORKDIR` after a normal build.

### Download and Extraction Variables

| Variable | Description |
|---|---|
| **`$DOWNLOADED_FILE`** | Full path to the file returned by the downloader for the current source object. It is exported by `alchemist.sh` after `process_download` completes. |
| **`$SOURCE_VERSION`** | Resolved version returned by the downloader for the current source. The initial value comes from the recipe's `version` field and may be replaced by the downloader's resolved version. |
| **`$EXTRACTED_PATH`** | Full path to the extracted source for the current source object. It is exported after `process_extract` completes. For a local extraction, the extractor can return the downloaded path without performing archive extraction. |

The variables are per-source values. When a recipe contains multiple source objects, Alchemist updates them as each source is processed.

### Processing Relationship

```
    source_url
        │
        ▼
    $DOWNLOADED_FILE
        │
        ▼
    $EXTRACTED_PATH
        │
        ├── assets
        │
        └── libs
        │
        ▼
    $COMPONENT_ARTIFACT_ROOT
```
    
For standard asset operations, the extracted source is the input and `$COMPONENT_ARTIFACT_ROOT` is the assembly destination.

### Flatpak Variables

The following Flatpak-related variables are defined by `lib/defaults.sh` in Alchemist `0.11.0`.

| Variable | Default | Description |
|---|---|---|
| **`$FLATPAK_USER_ROOT`** | `$HOME/.local/share/flatpak` | Flatpak user installation root. |
| **`$FLATPAK_SYSTEM_ROOT`** | `/var/lib/flatpak` | Flatpak system installation root. |
| **`$FLATPAK_DEFAULT_INSTALL_MODE`** | `user` | Default Flatpak installation mode used by Alchemist tooling. |
| **`$FLATHUB_REPO`** | `https://flathub.org/repo/flathub.flatpakrepo` | Flathub repository definition used when configuring or accessing Flathub. |


## Version Management: $DESIRED_VERSIONS

`$DESIRED_VERSIONS` points to the version-definition file `version_policy.sh` used by the Alchemist version-loading mechanism.

The version loader works as follows:

1. `version_policy.sh` defines `*_VERSION_POLICY` values.
2. If `version_pins.sh` exists, its `*_PINNED_VERSION` values take precedence.
3. Alchemist exports the resulting `*_DESIRED_VERSION` variables.
4. Recipe values are subsequently processed with environment substitution where applicable.

### Version Variables

| Variable Pattern | Description |
|---|---|
| **$<COMPONENT>_VERSION_POLICY** | Version resolution policy for a component, such as `latest`, `newest` . |
| **$<COMPONENT>_PINNED_VERSION** | Optional explicitly pinned version. Takes precedence over the policy. |
| **$<COMPONENT>_DESIRED_VERSION** | Effective version selected by the version loader. |

**Example:**

```
    $AZAHAR_VERSION_POLICY
    $AZAHAR_PINNED_VERSION
    $AZAHAR_DESIRED_VERSION
```

The exact variables available depend on the entries defined in `version_policy.sh` and, when present, `version_pins.sh`.

---

### Download & Extraction Helpers

| Variable | Description |
|----------|-------------|
| **$DOWNLOADED_FILE** | Full path of the most recently downloaded file.<br>Populated by the `download.sh` plugin via:<br>`echo "DOWNLOADED_FILE=..."` |
| **$EXTRACTED_PATH** | Full path of the most recently extracted archive.<br>Populated by the `extract.sh` plugin via:<br>`echo "EXTRACTED_PATH=..."`<br><br>For **local** extractions (no real archive), a dummy plugin returns the same path as `$DOWNLOADED_FILE`. |

---

### Flatpak-Related Variables

| Variable | Description |
|----------|-------------|
| **$FLATPAK_USER_ROOT** | Default user install location:<br>`$HOME/.local/share/flatpak/app`<br>Defined in `defaults.sh`. |
| **$FLATPAK_SYSTEM_ROOT** | Default system install location:<br>`/var/lib/flatpak/app`<br>Defined in `defaults.sh`. |
| **$FLATPAK_DEFAULT_INSTALL_MODE** | Default install mode for Flatpak packages:<br>`user`<br>System mode may require `sudo`. |
| **$FLATHUB_REPO** | URL of the Flathub repository:<br>`https://flathub.org/repo/flathub.flatpakrepo`<br>Adjust if the repository location changes. |

---

### Version Management

| Variable | Description |
|----------|-------------|
| **$DESIRED_VERSIONS** | Path to the `desired_versions.sh` script containing the catalog of desired component versions.<br>Used to resolve version placeholders in component recipes.<br>Can be overridden per `alchemist.sh` run via an input argument,<br>allowing separate **stable** and **beta** version sets. |


---
