# RetroDECK: Flatpak Folder Structure

<img src="../../../wiki_icons/pixelitos/folder-red-games.png" width="75">

RetroDECK is a Flatpak — a sandboxed bundle containing applications, configurations, and supporting files.  

---

## RetroDECK Flatpak: User-Accessible Folders 

| **Folder Name**                       | **Folder Path**                             | **Comment**                                                                 |
|:-------------------------------------:|:-------------------------------------------:|:---------------------------------------------------------------------------:|
| `retrodeck/` (userdata) Folder        | `<Dynamic Path>/retrodeck/`                 | **Read more:** [RetroDECK: Userdata Folder Structure](../../wiki_management/retrodeck-folders/retrodeck-folders.md) |
| `/.var/app/net.retrodeck.retrodeck` Folder | `~/.var/app/net.retrodeck.retrodeck`      | Mapped as `/var` inside the Flatpak. Exposes configuration, cache, and system data from the Flatpak environment. |
| `cache` Folder                        | `~/.var/app/net.retrodeck.retrodeck/cache/` | Stores cache files and temporary data for components.                        |
| `config` Folder                       | `~/.var/app/net.retrodeck.retrodeck/config/` | Contains copied configuration files for components.                          |
| `data` Folder                         | `~/.var/app/net.retrodeck.retrodeck/data/` | Stores data structures for components.                                       |
| `config/retrodeck` Folder             | `~/.var/app/net.retrodeck.retrodeck/config/retrodeck/` | Main configuration file: `retrodeck.cfg`.                                    |

---

## Flatpak: General Folders

| **Folder Name**       | **Local Path**                           | **System Path**                     | **Comment**                                           |
|:--------------------:|:----------------------------------------:|:----------------------------------:|:-----------------------------------------------------:|
| Flatpak Runtimes      | `~/.local/share/flatpak/runtime/`       | `/var/lib/flatpak/runtime/`        | Stores runtime libraries such as `org.kde.Platform`, `org.freedesktop.Platform`, `org.gnome.Platform`. |
| Flatpak Overrides     | `~/.local/share/flatpak/overrides/`     | `/var/lib/flatpak/overrides/`      | Flatpak-specific overrides for sandboxed applications. |

---

## RetroDECK Flatpak CLI Shell Folder Paths

In Debug Mode, the `/var` and `/app` directories inside the Flatpak sandbox are mapped differently from the host Linux filesystem.

```
flatpak run --command=bash net.retrodeck.retrodeck --debug
```

| **Sandbox Path** | **Corresponding Host Path** | **Comment** |
|------------------|-----------------------------|-------------|
| `/app` | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/`<br>or<br>`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/`<br>Contains: `bin`, `lib`, `libexec`, `manifest-base-1.json`, `manifest.json`, `retrodeck`, `share`, `tools` | Read-only runtime environment provided by the Flatpak package. |
| `/var` | `~/.var/app/net.retrodeck.retrodeck/` including subfolders: `cache`, `config`, `data`, `db`, `home`, `mnt`, `opt`, `run`, `srv`, `tmp` | Writable portion of the sandbox storing configuration, cache, and component data. |


---

## Steam: Folder Structure

| **Folder Name** | **Folder Path** | **Comment** |
|-----------------|----------------|-------------|
| Steam Default Templates | `~/.steam/steam/controller_base/templates/` | RetroDECK injects Steam Input templates here. |
| Application Templates | `~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/` | Temporary changes stored here if user modifies templates. |
| Steam Binding Icons | `~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` | RetroDECK injects Steam Input icons here. |

---

## RetroDECK Flatpak: Folder Structure

- **Folder Name:** Name of the folder  
- **Path Local:** If RetroDECK is installed as a local application.  
- **Path System:** If RetroDECK is installed as a system application.  
- **Comment:** Notes and descriptions of the folder contents.  

---

### `flatpak/app/net.retrodeck.retrodeck/` - Top Level

| **Folder Name**    | **Path Local** | **Path System** | **Comment** | 
|-------------------|----------------|----------------|-------------|
| RetroDECK's Flatpak Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | This is mapped as `/app` inside the Flatpak. Contains `manifest.json`. |
| `bin` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Symlinked binaries, other executables, `retrodeck.sh`. |
| `lib` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | Freedesktop runtime libraries. |
| `libexec` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | Various scripts, e.g., `post_update.sh`. |
| `retrodeck` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | RetroDECK structure subfolders and `version` file. |
| `share` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Shared resources for RetroDECK. |
| `tools` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | Scripts like `configurator.sh` and `retrodeck_function_wrapper.sh`. |




---

### retrodeck/

| **Folder Name**    | **Path Local** | **Path System** | **Comment** | 
|-------------------|----------------|----------------|-------------|
| `binding_icons` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` | Steam radial icons. |
| `components` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | Components subfolders. |
| `config` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` | Exposed component config subfolders. |
| `graphics` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | Graphical assets used by ES-DE and `splash.svg`. |
| `steam_grid` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` | Grid art for Steam. |

---

### retrodeck/graphics/

| **Folder Name**    | **Path Local** | **Path System** | **Comment** | 
|-------------------|----------------|----------------|-------------|
| `extra_splashes` Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` | Extra RetroDECK startup images (splashes). |

---

### retrodeck/components/

Each component resides in its own subfolder containing binaries, libraries, and related files.  

#### Clients

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `clientX` | .../retrodeck/components/ | .../retrodeck/components/ | clientX (no clients added yet). |

#### Emulators

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `cemu` | .../retrodeck/components/cemu/ | .../retrodeck/components/cemu/ | Cemu emulator. |
| `dolphin` | .../retrodeck/components/dolphin/ | .../retrodeck/components/dolphin/ | Dolphin emulator. |
| `duckstation` | .../retrodeck/components/duckstation/ | .../retrodeck/components/duckstation/ | DuckStation (Legacy). |
| `mame` | .../retrodeck/components/mame/ | .../retrodeck/components/mame/ | MAME emulator. |
| `melonds` | .../retrodeck/components/melonds/ | .../retrodeck/components/melonds/ | MelonDS emulator. |
| `pancakes` | .../retrodeck/components/pancakes/ | .../retrodeck/components/pancakes/ | Pancakes emulator. |
| `pcsx2` | .../retrodeck/components/pcsx2/ | .../retrodeck/components/pcsx2/ | PCSX2 emulator. |
| `ppsspp` | .../retrodeck/components/ppsspp/ | .../retrodeck/components/ppsspp/ | PPSSPP emulator. |
| `primehack` | .../retrodeck/components/primehack/ | .../retrodeck/components/primehack/ | PrimeHack emulator. |
| `retroarch` | .../retrodeck/components/retroarch/ | .../retrodeck/components/retroarch/ | RetroArch frontend. |
| `rpcs3` | .../retrodeck/components/rpcs3/ | .../retrodeck/components/rpcs3/ | RPCS3 emulator. |
| `ruffle` | .../retrodeck/components/ruffle/ | .../retrodeck/components/ruffle/ | Ruffle Flash emulator. |
| `vita3k` | .../retrodeck/components/vita3k/ | .../retrodeck/components/vita3k/ | Vita3K emulator. |
| `xemu` | .../retrodeck/components/xemu/ | .../retrodeck/components/xemu/ | Xemu emulator. |

#### Engines

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `gzdoom` | .../retrodeck/components/gzdoom/ | .../retrodeck/components/gzdoom/ | GZDoom engine. |
| `solarus` | .../retrodeck/components/solarus/ | .../retrodeck/components/solarus/ | Solarus engine. |

#### Ports

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `portX` | .../retrodeck/components/ | .../retrodeck/components/ | PortX (no ports added yet). |

#### Systems

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `es-de` Main | .../retrodeck/components/es-de/ | .../retrodeck/components/es-de/ | ES-DE main folder. |
| `es-de Linux` | .../share/retrodeck/components/es-de/share/es-de/resources/systems/linux/ | .../share/retrodeck/components/es-de/share/es-de/resources/systems/linux/ | `es_find_rules.xml` and `es_systems.xml`. |
| `portmaster` | .../retrodeck/components/portmaster/ | .../retrodeck/components/portmaster/ | Portmaster. |
| `steam-rom-manager` | .../retrodeck/components/steam-rom-manager/ | .../retrodeck/components/steam-rom-manager/ | Steam ROM Manager (SRM). |

#### Other

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `shared-libs` | .../retrodeck/components/shared-libs/ | .../retrodeck/components/shared-libs/ | Shared libraries used by components. |

---

### retrodeck/config/

Each component's default configs and related files (wrappers, graphical assets, other component-specific files) are stored here.  
The structure mirrors `retrodeck/components/`. Many files are later copied to `~/.var/app/net.retrodeck.retrodeck/config/` for end-user edits via RetroDECK.

---

#### Emulators

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `cemu` | .../retrodeck/config/cemu/ | .../retrodeck/config/cemu/ | Cemu config files. |
| `dolphin` | .../retrodeck/config/dolphin/ | .../retrodeck/config/dolphin/ | Dolphin config files. |
| `duckstation` | .../retrodeck/config/duckstation/ | .../retrodeck/config/duckstation/ | DuckStation (Legacy). |
| `mame` | .../retrodeck/config/mame/ | .../retrodeck/config/mame/ | MAME config files. |
| `melonds` | .../retrodeck/config/melonds/ | .../retrodeck/config/melonds/ | MelonDS config files. |
| `pcsx2` | .../retrodeck/config/pcsx2/ | .../retrodeck/config/pcsx2/ | PCSX2 config files. |
| `ppsspp` | .../retrodeck/config/ppsspp/ | .../retrodeck/config/ppsspp/ | PPSSPP config files. |
| `primehack` | .../retrodeck/config/primehack/ | .../retrodeck/config/primehack/ | PrimeHack config files. |
| `retroarch` | .../retrodeck/config/retroarch/ | .../retrodeck/config/retroarch/ | RetroArch configs, borders, core overrides. |
| `rpcs3` | .../retrodeck/config/rpcs3/ | .../retrodeck/config/rpcs3/ | RPCS3 configs. |
| `ruffle` | .../retrodeck/config/ruffle/ | .../retrodeck/config/ruffle/ | Ruffle configs. |
| `ryujinx` | .../retrodeck/config/ryujinx/ | .../retrodeck/config/ryujinx/ | Archived Ryujinx config (binary removed). |
| `vita3k` | .../retrodeck/config/vita3k/ | .../retrodeck/config/vita3k/ | Vita3K config files. |
| `xemu` | .../retrodeck/config/xemu/ | .../retrodeck/config/xemu/ | Xemu config files. |

---

#### Engines

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `gzdoom` | .../retrodeck/config/gzdoom/ | .../retrodeck/config/gzdoom/ | GZDoom wrapper configs. |
| `solarus` | .../retrodeck/config/solarus/ | .../retrodeck/config/solarus/ | Solarus configs. |
| `pico-8` | .../retrodeck/config/pico-8/ | .../retrodeck/config/pico-8/ | Pico-8 wrapper configs. |

---

#### Ports

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `portX` | .../retrodeck/config/ | .../retrodeck/config/ | PortX (no ports added yet). |

---

#### Systems

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `es-de` | .../retrodeck/config/es-de/ | .../retrodeck/config/es-de/ | ES-DE configs. |
| `portmaster` | .../retrodeck/config/portmaster/ | .../retrodeck/config/portmaster/ | Portmaster configs. |
| `steam-rom-manager` | .../retrodeck/config/steam-rom-manager/ | .../retrodeck/config/steam-rom-manager/ | Steam ROM Manager (SRM) configs. |

---

#### retrodeck/config/retrodeck

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `retrodeck` | .../retrodeck/config/retrodeck/ | .../retrodeck/config/retrodeck/ | Main RetroDECK configs: `retrodeck.cfg`, MIME files. |
| `controller_configs` | .../controller_configs/ | .../controller_configs/ | Steam Input templates. |
| `reference_lists` | .../reference_lists/ | .../reference_lists/ | Lists like `bios.json`, `features.json`. |
| `helper_files` | .../helper_files/ | .../helper_files/ | Helper lists and support files. |
| `presets` | .../presets/ | .../presets/ | Default preset configuration files. |

---

### share/

| **Folder Name** | **Path Local** | **Path System** | **Comment** |
|-----------------|----------------|----------------|-------------|
| `metainfo` | .../share/metainfo/ | .../share/metainfo/ | `net.retrodeck.retrodeck.metainfo.xml` |
| `mime` | .../share/mime/ | .../share/mime/ | `net.retrodeck.retrodeck.mime.xml` |
| `icons` | .../share/icons/hicolor/scalable/apps/ | .../share/icons/hicolor/scalable/apps/ | Scalable SVG icons. |

---

