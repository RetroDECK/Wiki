# RetroDECK Global Variables List

A collection of variables used by RetroDECK


## Flatpak XDG 

### $XDG_SESSION_DESKTOP

Desktop Session

### $XDG_SESSION_TYPE

Session Type

### $XDG_CACHE_HOME

Non-essential user-specific data
    


`.var/app/net.retrodeck.retrodeck/cache/`

### $XDG_CONFIG_HOME

User-specific configuration files

`.var/app/net.retrodeck.retrodeck/config/`

### $XDG_DATA_HOME

User-specific data

`.var/app/net.retrodeck.retrodeck/data/`

### $XDG_STATE_HOME

State data such as undo history

`.var/app/net.retrodeck.retrodeck/.local/state/`

## RetroDECK Pathing Variables


### $backups_folder

`retrodeck/backups`

### $bios_folder

`retrodeck/bios/`

### $borders_folder

`retrodeck/borders`

### $config

Folder with all the default emulator configs

`/app/retrodeck/config`

### $cheats_folder

`retrodeck/cheats/`

### $es-de_folder

`retrodeck/ES-DE/`

### $logs_folder

`retrodeck/logs/`

### $media_folder

`retrodeck/ES-DE/downloaded_media`

### $themes_folder

`retrodeck/ES-DE/themes`

### $roms_folder

`retrodeck/roms/`

### $saves_folder

`retrodeck/saves/`

### $screenshots_folder

`retrodeck/screenshots/`

### $sdcard

**Example:**

`/run/media/mmcblk0p1`

### $shaders_folder

`retrodeck/shaders/`

### $states_folder

`retrodeck/states/`

### $splashscreen_dir

The default location of extra splash screens

`$XDG_CONFIG_HOME/ES-DE/resources/graphics/extra_splashes`                                   

### $texture_packs_folder

`retrodeck/texture_packs/`

### $rdhome 

`retrodeck/`

### $rd_components

`/app/retrodeck/components`

### $rd_shared_libs

`/app/retrodeck/components/shared-libs`


## RetroDECK Component Function Variables

Are defined by each components component_functions.sh.

**See examples on the components repo:**

https://github.com/RetroDECK/components/blob/cooker/


## RetroDECK Harware / OS

### $distro_name 

`distro_name=$(flatpak-spawn --host grep '^ID=' /etc/os-release | cut -d'=' -f2)`


### $distro_version

`distro_version=$(flatpak-spawn --host grep '^VERSION_ID=' /etc/os-release | cut -d'=' -f2)`

### $gpu_info

`gpu_info=$(flatpak-spawn --host lspci | grep -i 'vga\|3d\|2d')`

### $cpu_cores

`cpu_cores=$(nproc)`

### $cpu_cores

`max_threads=$(echo $(($(nproc) / 2)))`

### $native_resolution

Used for detecting the Steam Deck resolution.

```
width=$(grep -oP '\d+(?=x)' /sys/class/graphics/fb0/modes)
height=$(grep -oP '(?<=x)\d+' /sys/class/graphics/fb0/modes)
if [[ $width -ne 1280 ]] || [[ $height -ne 800 ]]; then
  native_resolution=false
else
  native_resolution=true
fi
```

## Static variables

### $bios_checklist

A config file listing BIOS file information that can be verified

`$config/retrodeck/reference_lists/bios.json`

### $current_splash_file

The active ES-DE splash file that will be shown on boot

`$XDG_CONFIG_HOME/ES-DE/resources/graphics/splash.svg`

### $default_splash_file

The default RetroDECK ES-DE splash file.

`$XDG_CONFIG_HOME/ES-DE/resources/graphics/splash-orig.svg`   

### $input_validation

A config file listing valid CLI inputs

`$config/retrodeck/reference_lists/input_validation.cfg`

### $finit_options_list

A config file listing available optional installs during finit

`$config/retrodeck/reference_lists/finit_options_list.cfg`

### $rd_conf

RetroDECK config file path

`$XDG_CONFIG_HOME/retrodeck/retrodeck.cfg`

### $rd_conf_backup

Backup of RetroDECK config file from update

`$XDG_CONFIG_HOME/retrodeck/retrodeck.bak`


### $rd_defaults

A default RetroDECK config file

`$config/retrodeck/retrodeck.cfg`

### $rd_update_patch

A static location for the temporary patch file used during retrodeck.cfg updates

`$XDG_CONFIG_HOME/retrodeck/rd_update.patch`


## API-related variables

### $rd_api_dir

RetroDECK API folder

`$XDG_CONFIG_HOME/retrodeck/api`


### $REQUEST_PIPE

`$rd_api_dir/retrodeck_api_pipe`

### $PID_FILE

`$rd_api_dir/retrodeck_api_server.pid`

### $rd_api_socket

`$rd_api_dir/retrodeck_api_server.sock`

### $RD_FILE_LOCK

File lock file for multi-threaded write operations to the same file

`$rd_api_dir/retrodeck_api_server.sock`




## TODO SORT W.I.P

$new_home_path
$hard_version
$default_sd
$version

$RD_FILE_LOCK
$lockfile

rd_logs_folder 

$HOME
TODO: instead of this maybe we can iterate the features.json
multi_user_emulator_config_dirs="$config/retrodeck/reference_lists/multi_user_emulator_config_dirs.cfg"  # A list of emulator config folders that can be safely linked/unlinked entirely in multi-user mode
rd_es_themes="/app/share/es-de/themes"                                                                   # The directory where themes packaged with RetroDECK are stored
lockfile="$XDG_CONFIG_HOME/retrodeck/.lock"                                                                   # Where the lockfile is located
default_sd="/run/media/mmcblk0p1"                                                                        # Steam Deck SD default path
hard_version="$(cat '/app/retrodeck/version')"                                                           # hardcoded version (in the readonly filesystem)
rd_repo="https://github.com/RetroDECK/RetroDECK"                                                         # The URL of the main RetroDECK GitHub repo
es_themes_list="https://gitlab.com/es-de/themes/themes-list/-/raw/master/themes.json"                    # The URL of the ES-DE 2.0 themes list
remote_network_target_1="https://flathub.org"                                                            # The URL of a common internet target for testing network access
remote_network_target_2="$rd_repo"                                                                       # The URL of a common internet target for testing network access
remote_network_target_3="https://one.one.one.one"                                                        # The URL of a common internet target for testing network access
helper_files_folder="$config/retrodeck/helper_files"                                                     # The parent folder of RetroDECK documentation files for deployment
rd_metainfo="/app/share/metainfo/net.retrodeck.retrodeck.metainfo.xml"                                   # The shipped metainfo XML file for this version
rpcs3_firmware="http://dus01.ps3.update.playstation.net/update/ps3/image/us/2024_0227_3694eb3fb8d9915c112e6ab41a60c69f/PS3UPDAT.PUP" # RPCS3 Firmware download location
RA_API_URL="https://retroachievements.org/dorequest.php"                                                 # API URL for RetroAchievements.org
presets_dir="$config/retrodeck/presets"                                                                  # Repository for all system preset config files
git_organization_name="RetroDECK"                                                                        # The name of the organization in our git repository such as GitHub
cooker_repository_name="Cooker"                                                                          # The name of the cooker repository under RetroDECK organization
main_repository_name="RetroDECK"                                                                         # The name of the main repository under RetroDECK organization
features="$config/retrodeck/reference_lists/features.json"                                               # A file where all the RetroDECK and component capabilities are kept for querying
es_systems="/app/share/es-de/resources/systems/linux/es_systems.xml"                                     # ES-DE supported system list
es_find_rules="/app/share/es-de/resources/systems/linux/es_find_rules.xml"                               # ES-DE emulator find rules










