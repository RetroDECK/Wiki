# RetroDECK: Flatpak Directory Structure

<img src="../../../wiki_icons/pixelitos/Directory-red-games.png" width="75" alt="">

RetroDECK is a Flatpak - a sandboxed bundle containing applications, configurations and supporting files.  

---

## RetroDECK Flatpak: User-Accessible Directories 

| **Directory Name**                       | **Directory Path**                             | **Comment**                                                                 |
|:-------------------------------------:|:-------------------------------------------:|:---------------------------------------------------------------------------:|
| `retrodeck/` (userdata) Directory        | `<Dynamic Path>/retrodeck/`                 | **Read more:** [RetroDECK: Userdata Directory Structure](../../wiki_management/retrodeck-folders.md) |
| `/.var/app/net.retrodeck.retrodeck` Directory | `~/.var/app/net.retrodeck.retrodeck`      | Mapped as `/var` inside the Flatpak. Exposes configuration, cache and system data from the Flatpak environment. |
| `cache` Directory                        | `~/.var/app/net.retrodeck.retrodeck/cache/` | Stores cache files and temporary data for components.                        |
| `config` Directory                       | `~/.var/app/net.retrodeck.retrodeck/config/` | Contains copied configuration files for components.                          |
| `data` Directory                         | `~/.var/app/net.retrodeck.retrodeck/data/` | Stores data structures for components.                                       |
| `config/retrodeck` Directory             | `~/.var/app/net.retrodeck.retrodeck/config/retrodeck/` | Main configuration file: `retrodeck.cfg`.                                    |

---

## Flatpak: General Directories

| **Directory Name**       | **Local Path**                           | **System Path**                     | **Comment**                                           |
|:--------------------:|:----------------------------------------:|:----------------------------------:|:-----------------------------------------------------:|
| Flatpak Runtimes      | `~/.local/share/flatpak/runtime/`       | `/var/lib/flatpak/runtime/`        | Stores runtime libraries such as `org.kde.Platform`, `org.freedesktop.Platform`, `org.gnome.Platform`. |
| Flatpak Overrides     | `~/.local/share/flatpak/overrides/`     | `/var/lib/flatpak/overrides/`      | Flatpak-specific overrides for sandboxed applications. |

---

## RetroDECK Flatpak Sandbox and Persistent Data

When accessing the Flatpak sandbox via the CLI in Debug Mode, internal directories such as `/app` and `/var` map to different locations on the host filesystem.

This is part of Flatpak's sandboxing model:

- The application runtime under `/app` is **read-only**.  
- `/var` provides **writable directories** for persistent user data, such as configuration, cache and application-specific files.  
- RetroDECK also creates a user-defined **userdata directory** `retrodeck/`, which can be placed wherever the user chooses.

When the application is updated, the runtime under `/app` changes, but the writable data under `/var` (for example `config`, `cache` and `data`) remains mostly unchanged (depending on the update).

Because the `retrodeck/` and `/var` directories are shared across versions and branches, **regular backups are recommended**, especially when testing beta or development builds that may modify configuration or data formats in both directories. Jumping from a bleeding-edge development build back to stable is **not recommended**.

See the [RetroDECK Testing Guide](https://retrodeck.readthedocs.io/en/latest/wiki_development/testing/retrodeck-testing/) for instructions on creating backups.

| **Internal Path** | **Host Path** | **Comment** |
|---|---|---|
| `/app` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/`<br>or<br>`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | Read-only runtime environment provided by the Flatpak package. Contains: `bin`, `lib`, `libexec`, `manifest-base-1.json`, `manifest.json`, `retrodeck`, `share`, `tools`. |
| `/var` | `~/.var/app/net.retrodeck.retrodeck/` | Writable portion of the sandbox. Contains application state directories such as `cache`, `config` and `data`. |

---

## XDG Base Directory Paths in Flatpak

The following table shows how XDG base directory variables map to their corresponding host paths. 

These directories follow the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/).

| **XDG Variable** | **Host Path** | **Comment** |
|---|---|---|
| `XDG_CACHE_HOME` | `~/.var/app/net.retrodeck.retrodeck/cache/` | Cache directory. Corresponds to `$HOME/.cache` inside the Flatpak sandbox. |
| `XDG_CONFIG_HOME` | `~/.var/app/net.retrodeck.retrodeck/config/` | Configuration directory. Corresponds to `$HOME/.config` inside the Flatpak sandbox. |
| `XDG_DATA_HOME` | `~/.var/app/net.retrodeck.retrodeck/data/` | Application data directory. Corresponds to `$HOME/.local/share` inside the Flatpak sandbox. |

---

## Steam: Directory Structure

| **Directory Name** | **Directory Path** | **Comment** |
|-----------------|----------------|-------------|
| Steam Default Templates | `~/.steam/steam/controller_base/templates/` | RetroDECK injects Steam Input templates here. |
| Application Templates | `~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/` | Temporary changes stored here if user modifies templates. |
| Steam Binding Icons | `~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` | RetroDECK injects Steam Input icons here. |

---

## RetroDECK Flatpak: Directory Structure

- **Directory Name:** Name of the Directory  
- **Path Local:** If RetroDECK is installed as a local application.  
- **Path System:** If RetroDECK is installed as a system application.  
- **Comment:** Notes and descriptions of the Directory contents.  

---

### `flatpak/app/net.retrodeck.retrodeck/` - Top Level

| **Directory Name**    | **Path Local** | **Path System** | **Comment** | 
|-------------------|----------------|----------------|-------------|
| RetroDECK's Flatpak Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | This is mapped as `/app` inside the Flatpak. Contains `manifest.json`. |
| `bin` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Symlinked binaries, other executables, `retrodeck.sh`. |
| `lib` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | Freedesktop runtime libraries. |
| `libexec` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | Various scripts, e.g., `post_update.sh`. |
| `retrodeck` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | RetroDECK structure subdirectories and `version` file. |
| `share` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Shared resources for RetroDECK. |
| `tools` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | Scripts like `configurator.sh` and `retrodeck_function_wrapper.sh`. |




---

### retrodeck/

| **Directory Name**    | **Path Local** | **Path System** | **Comment** | 
|-------------------|----------------|----------------|-------------|
| `binding_icons` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` | Steam radial icons. |
| `components` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | Components subdirectories. |
| `config` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` | Exposed component config subdirectories. |
| `graphics` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | Graphical assets used by ES-DE and `splash.svg`. |
| `steam_grid` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` | Grid art for Steam. |

---

### retrodeck/graphics/

| **Directory Name**    | **Path Local** | **Path System** | **Comment** | 
|-------------------|----------------|----------------|-------------|
| `extra_splashes` Directory | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` | Extra RetroDECK startup images (splashes). |

---

### retrodeck/components/

Each component resides in its own subDirectory containing binaries, libraries and related files.  

**Examples:**

| **Directory Name** | **Path Local** | **Path System** | **Comment** |
|---------------------|----------------|-----------------|-------------|
| `cemu` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/cemu/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/cemu/` | Cemu emulator. |
| `dolphin` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/dolphin/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/dolphin/` | Dolphin emulator. |
| `duckstation (Legacy)` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/duckstation/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/duckstation/` | DuckStation (Legacy). |
| `mame` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/mame/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/mame/` | MAME emulator. |
| `es-de` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/` | ES-DE main Directory. |
| `portmaster` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/portmaster/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/portmaster/` | Portmaster. |
| `steam-rom-manager` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/steam-rom-manager/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/steam-rom-manager/` | Steam ROM Manager (SRM). |
| `shared-libs` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/shared-libs/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/shared-libs/` | Shared libraries used by components. |

---

### retrodeck/config/

Each component's default configs and related files (wrappers, graphical assets, other component-specific files) are stored here.  
The structure mirrors `retrodeck/components/`. Many files are later copied to `~/.var/app/net.retrodeck.retrodeck/config/` for end-user edits via RetroDECK.

**Examples:**

| **Directory Name** | **Path Local** | **Path System** | **Comment** |
|---------------------|----------------|-----------------|-------------|
| `cemu` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/cemu/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/cemu/` | Cemu config files. |
| `dolphin` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/dolphin/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/dolphin/` | Dolphin config files. |
| `duckstation (Legacy)` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/duckstation/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/duckstation/` | DuckStation (Legacy) config files. |

---

#### retrodeck/config/retrodeck

| **Directory Name** | **Path Local** | **Path System** | **Comment** |
|---------------------|----------------|-----------------|-------------|
| `retrodeck` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/` | Main RetroDECK configs: `retrodeck.cfg`, MIME files. |
| `controller_configs` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/controller_configs/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/controller_configs/` | Steam Input templates. |
| `reference_lists` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/reference_lists/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/reference_lists/` | Lists like `bios.json`, `features.json`. |
| `helper_files` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/helper_files/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/helper_files/` | Helper lists and support files. |
| `presets` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/presets/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/presets/` | Default preset configuration files. |

---

### share/

| **Directory Name** | **Path Local** | **Path System** | **Comment** |
|---------------------|----------------|-----------------|-------------|
| `metainfo` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/metainfo/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/metainfo/` | `net.retrodeck.retrodeck.metainfo.xml` |
| `mime` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/mime/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/mime/` | `net.retrodeck.retrodeck.mime.xml` |
| `icons` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/icons/hicolor/scalable/apps/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/icons/hicolor/scalable/apps/` | Scalable SVG icons. |

---

