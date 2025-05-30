# What are the various folders and filepaths in RetroDECK?

RetroDECK is a Flatpak a sandboxed bundle of different applications and configurations. 

## RetroDECK Flatpak: Userdata Accessible Folders 

| Folder Type:    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| RetroDECK Userdata Folder |`retrodeck/` |   Dynamic path, Contains userdata: `roms`, `bios` etc...    |  
| Flatpak .var/app/ Folder |`~/.var/app/net.retrodeck.retrodeck` |  contains: `cache` `config` and `data`     |  
| Flatpak cache Folder |`~/.var/app/net.retrodeck.retrodeck/cache/` |  cache files and temp data   |  
| Flatpak config Folder |`~/.var/app/net.retrodeck.retrodeck/config/` | configuration files for various systems    |  
| Flatpak data Folder |`~/.var/app/net.retrodeck.retrodeck/data/` |  data structures and files need by some systems      |  
| Flatpak RetroDECK config Folder |`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/` | `retrodeck.cfg`, `godot` and `changelog.xml` files    |  


## RetroDECK Flatpak: Folder Structure 

- **Folder Name:** Name of the folder
- **Path Local:** If RetroDECK is installed as a local application.
- **Path System:** If RetroDECK is installed as a system application.
- **Comment:** Comments

### flatpak/app/net.retrodeck.retrodeck/ - Top Level

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| RetroDECK's Flatpak Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | This is mapped as the `/app` inside the flatpak. `manifest.json` is also located here  |
| bin Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Symlinked binaries, other binaries, `retrodeck.sh`  |
| lib Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Freedesktop Runtime Libraries |  
| libexec Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | Various script functions  `post_update.sh` |  
| retrodeck Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | RetroDECK Structure sub-folders and version file |  
| share Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Shared resources  | 
| tools Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | `configurator.sh` `retrodeck_function_wrapper.sh`  | 

### retrodeck/

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| binding_icons Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` |  Steam: Radial Icons  |  
| components Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | Components sub-folders |
| config Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/`| Exposed Component Configs sub-folders |  
| graphics Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | Contains some graphical assets used by ES-DE and the `splash.svg` RetroDECK startup image  |  
| steam_grid Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` |  Grid art for Steam | 


#### retrodeck/graphics/


| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| Extra Splashes Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` |  Contains extra RetroDECK startup images (splashes)     |  

#### retrodeck/components/

Each component is in it's own sub-folder

**Emulators**

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| cemu Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/cemu/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/cemu/` |  cemu  |
| dolphin Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/dolphin/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/dolphin/` |  dolphin  |  
| duckstation Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/duckstation/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/duckstation/` |  duckstation (Legacy)  |  
| mame Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/mame/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/mame/` |  mame  |  
| melonds Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/melonds/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/melonds/` |  melonds  |  
| pancakes Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/pancakes/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/pancakes/` |  pancakes  |  
| pcsx2 Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/pcsx2/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/pcsx2/` |  pcsx2  |  
| ppsspp Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/ppsspp/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/ppsspp/` |  ppsspp  |  
| primehack Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/primehack/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/primehack/` |  primehack  |  
| retroarch Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/retroarch/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/retroarch/` |  retroarch  |  
| rpcs3 Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/rpcs3/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/rpcs3/` |  primehack  |  
| ruffle Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/ruffle/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/ruffle/` |  ruffle  |  
| vita3k Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/vita3k/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/vita3k/` |  vita3k  | 
| xemu Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/xemu/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/xemu/` |  xemu  |  

**Engines**

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| gzdoom Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/gzdoom/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/gzdoom/` |  gzdoom  |  
| solarus Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/solarus/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/solarus/` |  solarus  |  

**Ports**

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| portX Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` |  portx  |  

No ports are added yet


**Systems**

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| es-de Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/` |  ES-DE  |  
| portmaster Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/portmaster/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/portmaster` |  portmaster  |  
| steam-rom-manager Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/steam-rom-manager/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/steam-rom-manager/` |  steam-rom-manager (SRM)  |  

**Other**

| Folder  Name    | Path Local           | Path System           |          Comment     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| shared-libs Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/shared-libs/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/shared-libs/` |  Shared Libraries  |  

---

EDIT THIS


## RetroDECK installed as User Application

If you have installed RetroDECK from Flathub as a User Application (this also corresponds to Flatpak Shell `app/`):

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Graphics Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` |  Contains some graphical assets used by ES-DE and the `splash.svg` RetroDECK startup image  |  

| ES-DE Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/` | Top Level ES-DE Folder |  
| ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| SRM Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/srm/` | Used by Steam Rom Manager |  
| bin Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Mapped to /app/bin inside the flatpak. Contains: wrappers, scripts, retrodeck.sh and more |  
| lib Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | Freedesktop Runtime Libraries |  

| shared-libs Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/components/shared-libs/` | Components Shared Libraries | 

| retrodeck Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | `retrodeck.cfg`  `net.retrodeck.retrodeck.mime.xml` `retrodeck-mimetype.xml` |  

 
| PortMaster Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/PortMaster/` |  Used by PortMaster  |  
| Share Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Shared resources  | 
| Tools Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | Configurator and Wrapper  | 
| .desktop Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/export/share/applications/` | .desktop files  | 
| Controller Configs Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/controller_configs/` | Steam Input Templates  | 
| Helper Files Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/helper_files/` | Helper Text Files  | 
| Presets Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/presets/` | Presets Files  | 
| Reference Lists Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/reference_lists/` | Various lists `bios.json` `features.json`   | 
| MIME Folder |`~/.local/share/flatpak/exports/share/mime/packages/` | `net.retrodeck.retrodeck.mime.xml`  | 
| Libretro Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/libretro/` | Used by RetroArch `assets`, `autoconfig`, `cores`, `database`, `filters`, `overlays`, `shaders`, `system`| 
| RetroArch Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retroarch/` | Used by RetroArch `retroarch.cfg`, `retroarch-core-options.cfg`, `scummvm.ini`, `borders`, `core-overrides`| 




## RetroDECK installed as System Application

If you have installed RetroDECK from Flathub as a System Application (this also corresponds to Flatpak Shell `app/`):

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Graphics Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` |  Contains some graphical assets used by ES-DE and the `splash.svg` RetroDECK startup image  |  
| Extra Splashes Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` |  Contains extra RetroDECK startup images (splashes)    |  
| ES-DE Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/` | Top Level ES-DE Folder |  
| ES-DE Linux Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| SRM Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/srm/` | Used by Steam Rom Manager |  
| bin Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Mapped to /app/bin inside the flatpak. Contains: wrappers, scripts, retrodeck.sh and more |  
| lib Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | Freedesktop Runtime Libraries |  
| Components Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/components/` | Components Folders |  
| shared-libs Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/components/shared-libs/` | Components Shared Libraries | 
| libexec Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | `retrodeck.cfg`  `net.retrodeck.retrodeck.mime.xml` `retrodeck-mimetype.xml` |  
| retrodeck Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | contains various extra files and features like icons, the system config files  |  
| binding_icons Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` |  Steam: Radial Icons  |  
| steam_grid Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` |   Steam: Grid Art |  
| PortMaster Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/PortMaster/` |  Used by PortMaster  |  
| Share Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Shared resources  | 
| Tools Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Configurator and Wrapper  | 
| .desktop Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/controller_configs/` | .desktop files  | 
| Controller Configs Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/controller_configs/` | Steam Input Templates  | 
| Helper Files Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/helper_files/` | Helper Text Files  | 
| Presets Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/presets/` | Presets Files  | 
| Reference Lists Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/reference_lists/` | Various lists `bios.json` `features.json`  | 
| MIME Folder |`/var/lib/flatpak/exports/share/mime/packages/` | `net.retrodeck.retrodeck.mime.xml`  | 
| Libretro Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/libretro/` | Used by RetroArch `assets`, `autoconfig`, `cores`, `database`, `filters`, `overlays`, `shaders`, `system`| 
| RetroArch Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retroarch/` | Used by RetroArch `retroarch.cfg`, `retroarch-core-options.cfg`, `scummvm.ini`, `borders`, `core-overrides`| 

## Steam Folder structure

| Type    | Folder                 | Comment     | 
|  :---:  | :---:                  | :---:     |
| Steam Default Templates Folder |`~/.steam/steam/controller_base/templates/` |        RetroDECK injects Steam Input Templates here                   |  
| Application Templates Folder |`~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/` | Temporary changes are stored here if the user makes them|
| Steam Binding Icons Folder |`~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` |               etroDECK injects Steam Input Templates here                        |  
