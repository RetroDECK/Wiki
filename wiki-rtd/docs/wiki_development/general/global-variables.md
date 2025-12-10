# RetroDECK Variables List

A collection of variables used by RetroDECK.

---

## Linux Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$HOME` | User's home directory | `~` |
| `LD_LIBRARY_PATH` | Directories for dynamic linker to search shared libraries | `/usr/lib:/usr/local/lib` |

---

## Flatpak XDG Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$XDG_SESSION_DESKTOP` | Desktop session name | - |
| `$XDG_SESSION_TYPE` | Session type | - |
| `$XDG_CACHE_HOME` | Non-essential user-specific cache data | `.var/app/net.retrodeck.retrodeck/cache/` |
| `$XDG_CONFIG_HOME` | User-specific configuration files | `.var/app/net.retrodeck.retrodeck/config/` |
| `$XDG_DATA_HOME` | User-specific data files | `.var/app/net.retrodeck.retrodeck/data/` |
| `$XDG_STATE_HOME` | State data (e.g., undo history) | `.var/app/net.retrodeck.retrodeck/.local/state/` |

---

## QT Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `QT_PLUGIN_PATH` | QT plugin search path | - |
| `QT_QPA_PLATFORM` | QT platform type | - |
| `QT_QPA_PLATFORM_PLUGIN_PATH` | QT platform plugin path | - |
| `QT_QPA_PLATFORMTHEME` | QT platform theme | - |

---

## RetroDECK Pathing Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$backups_folder` | Folder for backups | `retrodeck/backups` |
| `$bios_folder` | Folder for BIOS files | `retrodeck/bios/` |
| `$borders_folder` | Folder for emulator borders | `retrodeck/borders` |
| `$config` | Folder with default emulator configs | `/app/retrodeck/config` |
| `$cheats_folder` | Folder for cheat files | `retrodeck/cheats/` |
| `$helper_files_folder` | Folder for documentation/helper files | `$config/retrodeck/helper_files` |
| `$logs_folder` | Logs folder | `retrodeck/logs/` |
| `$media_folder` | Folder for downloaded media | `retrodeck/ES-DE/downloaded_media` |
| `$presets_dir` | Folder for system preset configs | `$config/retrodeck/presets` |
| `$rdhome` | RetroDECK home folder | `retrodeck/` |
| `$rd_components` | Components folder | `/app/retrodeck/components` |
| `$rd_shared_libs` | Shared libraries folder | `/app/retrodeck/components/shared-libs` |
| `$roms_folder` | ROMs folder | `retrodeck/roms/` |
| `$saves_folder` | Saves folder | `retrodeck/saves/` |
| `$screenshots_folder` | Screenshots folder | `retrodeck/screenshots/` |
| `$sdcard` | SD card mount point | `/run/media/mmcblk0p1` |
| `$shaders_folder` | Shaders folder | `retrodeck/shaders/` |
| `$states_folder` | States folder | `retrodeck/states/` |
| `$splashscreen_dir` | Extra splash screens folder | `$XDG_CONFIG_HOME/ES-DE/resources/graphics/extra_splashes` |
| `$texture_packs_folder` | Texture packs folder | `retrodeck/texture_packs/` |
| `$themes_folder` | Themes folder | `retrodeck/ES-DE/themes` |

---

## Component Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$component_name` | Name of the component | - |
| `component_folder_path` | Path of the component folder | `"$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"` |
| Component Function Variables | Defined by each component’s `component_functions.sh` | See [components repo](https://github.com/RetroDECK/components/blob/cooker/) |

---

## Hardware / OS Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$distro_name` | Linux distribution name | `$(flatpak-spawn --host grep '^ID=' /etc/os-release | cut -d'=' -f2)` |
| `$distro_version` | Linux distribution version | `$(flatpak-spawn --host grep '^VERSION_ID=' /etc/os-release | cut -d'=' -f2)` |
| `$gpu_info` | GPU info | `$(flatpak-spawn --host lspci | grep -i 'vga\|3d\|2d')` |
| `$cpu_cores` | Number of CPU cores | `$(nproc)` |
| `$max_threads` | Max threads for RetroDECK | `$(($(nproc)/2))` |
| `$width` | Display width | `grep -oP '\d+(?=x)' /sys/class/graphics/fb0/modes` |
| `$height` | Display height | `grep -oP '(?<=x)\d+' /sys/class/graphics/fb0/modes` |
| `$native_resolution` | Detect Steam Deck resolution | `true/false` |
| `$hard_version` | Hardcoded RetroDECK version | `$(cat '/app/retrodeck/version')` |
| `$version` | Current RetroDECK version | - |

---

## Static Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$bios_checklist` | BIOS verification list | `$config/retrodeck/reference_lists/bios.json` |
| `$current_splash_file` | Active splash file | `$XDG_CONFIG_HOME/ES-DE/resources/graphics/splash.svg` |
| `$default_splash_file` | Default ES-DE splash file | `$XDG_CONFIG_HOME/ES-DE/resources/graphics/splash-orig.svg` |
| `$default_sd` | Default Steam Deck SD path | `/run/media/mmcblk0p1` |
| `$input_validation` | CLI input validation file | `$config/retrodeck/reference_lists/input_validation.cfg` |
| `$features` | RetroDECK & component capabilities | `$config/retrodeck/reference_lists/features.json` |
| `$finit_options_list` | Optional installs for `finit` | `$config/retrodeck/reference_lists/finit_options_list.cfg` |
| `$multi_user_emulator_config_dirs` | Multi-user safe emulator config dirs | `$config/retrodeck/reference_lists/multi_user_emulator_config_dirs.cfg` |
| `$rd_conf` | RetroDECK config file | `$XDG_CONFIG_HOME/retrodeck/retrodeck.cfg` |
| `$rd_conf_backup` | Backup of RetroDECK config file | `$XDG_CONFIG_HOME/retrodeck/retrodeck.bak` |
| `$rd_defaults` | Default RetroDECK config | `$config/retrodeck/retrodeck.cfg` |
| `$rd_update_patch` | Temporary patch file | `$XDG_CONFIG_HOME/retrodeck/rd_update.patch` |
| `$rd_metainfo` | Shipped metainfo XML file | `/app/share/metainfo/net.retrodeck.retrodeck.metainfo.xml` |
| `$new_home_path` | Home path after move | - |

---

## API Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$rd_api_dir` | RetroDECK API folder | `$XDG_CONFIG_HOME/retrodeck/api` |
| `$REQUEST_PIPE` | RetroDECK API pipe | `$rd_api_dir/retrodeck_api_pipe` |
| `$PID_FILE` | API server PID file | `$rd_api_dir/retrodeck_api_server.pid` |
| `$rd_api_socket` | API socket file | `$rd_api_dir/retrodeck_api_server.sock` |
| `$RD_FILE_LOCK` | File lock for multi-thread writes | `$rd_api_dir/retrodeck_file_lock` |
| `$lockfile` | Lockfile location | `$XDG_CONFIG_HOME/retrodeck/.lock` |

---

## ES-DE Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$es_themes_list` | URL for ES-DE themes | `https://gitlab.com/es-de/themes/themes-list/-/raw/master/themes.json` |
| `$es_systems` | Supported systems list | `/app/share/es-de/resources/systems/linux/es_systems.xml` |
| `$es_find_rules` | Emulator find rules | `/app/share/es-de/resources/systems/linux/es_find_rules.xml` |
| `$rd_es_themes` | RetroDECK packaged themes | `/app/share/es-de/themes` |

---

## GitHub Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$cooker_repository_name` | Name of cooker repo | `Cooker` |
| `$git_organization_name` | Git organization | `RetroDECK` |
| `$main_repository_name` | Main repo name | `RetroDECK` |
| `$rd_repo` | Main repo URL | `https://github.com/RetroDECK/RetroDECK` |

---

## URLs

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$rpcs3_firmware` | RPCS3 firmware download | `http://dus01.ps3.update.playstation.net/.../PS3UPDAT.PUP` |
| `$RA_API_URL` | RetroAchievements.org API | `https://retroachievements.org/dorequest.php` |

---

## Network Testing Variables

| Variable | Description | Example / Path |
|----------|------------|----------------|
| `$remote_network_target_1` | Network test target #1 | `https://flathub.org` |
| `$remote_network_target_2` | Network test target #2 | `$rd_repo` |
| `$remote_network_target_3` | Network test target #3 | `https://one.one.one.one` |
