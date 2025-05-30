# What are the various folders and filepaths in RetroDECK?

RetroDECK is a Flatpak a sandboxed bundle of different applications and configurations. 

## User Accessible Folders 

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| RetroDECK Userdata Folder |`retrodeck/` |   Dynamic path, Contains userdata: `roms`, `bios` etc...    |  
| Flatpak Folder |`~/.var/app/net.retrodeck.retrodeck` |  contains: `cache` `config` and `data`     |  
| Flatpak Cache Folder |`~/.var/app/net.retrodeck.retrodeck/cache/` |  cache files and temp data   |  
| Flatpak Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/` | configuration files for various systems    |  
| Flatpak Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/` |  data structures and files need by some systems      |  
| Flatpak RetroDECK Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/` | `retrodeck.cfg`, `godot` and `changelog.xml` files    |  


## RetroDECK installed as User Application

If you have installed RetroDECK from flathub as a User Application.

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Flatpak Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | This is mapped as the `/app` inside the flatpak.  |  
| Graphics Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` |  Contains some graphical assets used by ES-DE and the `splash.svg` RetroDECK startup image  |  
| Extra Splashes Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` |  Contains extra RetroDECK startup images (splashes)     |  
| ES-DE Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/` | Top Level ES-DE Folder |  
| ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| SRM Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/srm/` | Used by Steam Rom Manager |  
| bin Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Mapped to /app/bin inside the flatpak. Contains: wrappers, scripts, retrodeck.sh and more |  
| lib Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | Freedesktop Runtime Libraries |  
| libexec Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | Various script functions like post_update.sh |  
| retrodeck Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | `retrodeck.cfg`  `net.retrodeck.retrodeck.mime.xml` `retrodeck-mimetype.xml` |  
| binding_icons Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` |  Steam: Radial Icons  |  
| steam_grid Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` |   Steam: Grid Art |  
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

If you have installed RetroDECK from flathub as a System Application.

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Flatpak Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` |  This is mapped as the `/app` inside the flatpak.     |  
| Graphics Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` |  Contains some graphical assets used by ES-DE and the `splash.svg` RetroDECK startup image  |  
| Extra Splashes Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` |  Contains extra RetroDECK startup images (splashes)    |  
| ES-DE Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/` | Top Level ES-DE Folder |  
| ES-DE Linux Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| SRM Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/srm/` | Used by Steam Rom Manager |  
| bin Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Mapped to /app/bin inside the flatpak. Contains: wrappers, scripts, retrodeck.sh and more |  
| lib Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | Freedesktop Runtime Libraries |  
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
