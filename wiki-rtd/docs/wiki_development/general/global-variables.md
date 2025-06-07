# RetroDECK Global Variables

Variables used by RetroDECK


## Flatpak XDG 

### $XDG_SESSION_DESKTOP

Desktop Session

### $XDG_SESSION_TYPE

Session Type

### $XDG_CACHE_HOME

Non-essential user-specific data
    
**Corresponds to:**

`.var/app/net.retrodeck.retrodeck/cache/`

### $XDG_CONFIG_HOME

User-specific configuration files

**Corresponds to:**

`.var/app/net.retrodeck.retrodeck/config/`

### $XDG_DATA_HOME

User-specific data

**Corresponds to:**

`.var/app/net.retrodeck.retrodeck/data/`

### $XDG_STATE_HOME

State data such as undo history

`.var/app/net.retrodeck.retrodeck/.local/state/`

## RetroDECK Folder Variables



### $bios_folder

**Corresponds to:**

`retrodeck/bios/`

### $cheats_folder

**Corresponds to:**

`retrodeck/cheats/`

### $es-de_folder

**Corresponds to:**

`retrodeck/ES-DE/`

### $logs_folder

$rd_logs_folder?

**Corresponds to:**

`retrodeck/logs/`

### $roms_folder

**Corresponds to:**

`retrodeck/roms/`

### $saves_folder

**Corresponds to:**

`retrodeck/saves/`

### $screenshots_folder

**Corresponds to:**

`retrodeck/screenshots/`

### $shaders_folder

**Corresponds to:**

`retrodeck/shaders/`

### $states_folder

**Corresponds to:**

`retrodeck/states/`

### $texture_packs_folder

**Corresponds to:**

`retrodeck/texture_packs/`

### $rd_api_dir

RetroDECK API folder

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

## SORT

$rd_defaults
$rd_conf
$rdhome

$new_home_path
$hard_version
$default_sd
$version

$RD_FILE_LOCK
$lockfile


$HOME

