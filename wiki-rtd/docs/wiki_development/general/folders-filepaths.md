# RetroDECK: Flatpak Folder Structure

<img src="../../../wiki_icons/pixelitos/folder-red-games.png" width="75">

RetroDECK is a Flatpak a sandboxed bundle of different applications and configurations. 

## RetroDECK Flatpak: User Accessible Folders 

| **Folder Name**     | **Folder Path**                 |          **Comment**     | 
|  :---:  | :---:                  |             :---:     |
| retrodeck/ (userdata) Folder |`<Dynamic Path>/retrodeck/` |  **Read more here:** [RetroDECK: Userdata Folder Structure](../../wiki_management/retrodeck-folders/retrodeck-folders.md)    |  
| /.var/app/net.retrodeck.retrodeck Folder |`~/.var/app/net.retrodeck.retrodeck` |  Exposes configuration, cache, and system data from the Flatpak environment.   |  
| cache Folder |`~/.var/app/net.retrodeck.retrodeck/cache/` |  cache files and temp data  for components |  
| config Folder |`~/.var/app/net.retrodeck.retrodeck/config/` | copied configuration files for components    |  
| data Folder |`~/.var/app/net.retrodeck.retrodeck/data/` |  data structures for components      |  
| config Folder |`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/` | `retrodeck.cfg`   |  



---

## RetroDECK Flatpak: Folder Structure 

- **Folder Name:** Name of the folder
- **Path Local**: If RetroDECK is installed as a local application.
- **Path System**: If RetroDECK is installed as a system application.
- ****Comment**: Comments and notes.

---

### flatpak/app/net.retrodeck.retrodeck/ - Top Level

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| RetroDECK's Flatpak Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | This is mapped as the `/app` inside the flatpak. `manifest.json` is also located here  |
| bin Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Symlinked binaries, other binaries, `retrodeck.sh`  |
| lib Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/lib/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Freedesktop Runtime Libraries |  
| libexec Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/libexec/` | Various script functions  `post_update.sh` |  
| retrodeck Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/` | RetroDECK Structure sub-folders and `version` file |  
| share Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/` | Shared resources  | 
| tools Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/tools/` | `configurator.sh` `retrodeck_function_wrapper.sh`  | 


---

### retrodeck/

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| binding_icons Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/binding_icons/` |  Steam: Radial Icons  |  
| components Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` | Components sub-folders |
| config Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/`| Exposed Component Configs sub-folders |  
| graphics Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/` | Contains some graphical assets used by ES-DE and the `splash.svg` RetroDECK startup image  |  
| steam_grid Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/steam_grid/` |  Grid art for Steam | 


---

#### retrodeck/graphics/


| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| Extra Splashes Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/` |  Contains extra RetroDECK startup images (splashes)     |  

---

#### retrodeck/components/

Each component is in it's own sub-folder that contains it's libraries, binary and other related files.

They have been grouped by type in the lists.

##### Emulators

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
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

##### Engines

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| gzdoom Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/gzdoom/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/gzdoom/` |  gzdoom  |  
| solarus Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/solarus/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/solarus/` |  solarus  |  

##### Ports

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| portX Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/` |  portx  |  

**No ports are added yet**


##### Systems

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| es-de Main Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/` |  ES-DE  |  
| es-de Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/retrodeck/components/es-de/share/es-de/resources/systems/linux/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/share/es-de/resources/systems/linux/`  | `es_find_rules.xml` `es_systems.xml` |  
| portmaster Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/portmaster/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/portmaster` |  portmaster  |  
| steam-rom-manager Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/steam-rom-manager/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/steam-rom-manager/` |  steam-rom-manager (SRM)  |  

##### Other 

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     | 
|  :---:  | :---:                  |             :---:     | :---:  | 
| shared-libs Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/shared-libs/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/shared-libs/` |  Shared Libraries  |  

---

#### retrodeck/config/

Each components important default configs are stored here and extra files like:

- Wrappers
- Graphical assets like borders
- Other things related to a component. 

The structure mostly reflects the `retrodeck/components/` folder.

Many of these are later copied over to `~/.var/app/net.retrodeck.retrodeck/config/` to be user editable from within RetroDECK by the end-user via it's corresponding component.

They have been grouped by type in the lists.



##### Emulators

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     |
|  :---:  | :---:                  |             :---:     | :---:  |
| cemu Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/cemu/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/cemu/` |  cemu  |
| dolphin Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/dolphin/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/dolphin/` |  dolphin  |
| duckstation Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/duckstation/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/duckstation/` |  duckstation (Legacy)  |
| mame Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/mame/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/mame/` |  mame  |
| melonds Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/melonds/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/melonds/` |  melonds  |
| pancakes Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/pancakes/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/pancakes/` |  pancakes  |
| pcsx2 Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/pcsx2/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/pcsx2/` |  pcsx2  |
| ppsspp Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/ppsspp/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/ppsspp/` |  ppsspp  |
| primehack Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/primehack/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/primehack/` |  primehack  |
| retroarch Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retroarch/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retroarch/` |  retroarch, borders, core-overrides |
| rpcs3 Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/rpcs3/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/rpcs3/` |  primehack  |
| ruffle Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/ruffle/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/ruffle/` |  ruffle  |
| ryujinx Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/ryujinx/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/ryujinx/` |  ryujinx (archived config file, binary removed from RetroDECK)  |
| vita3k Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/vita3k/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/vita3k/` |  vita3k  |
| xemu Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/xemu/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/xemu/` |  xemu  |
| yuzu Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/xemu/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/xemu/` |  yuzu (archived config file, binary removed from RetroDECK) |

##### Engines

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     |
|  :---:  | :---:                  |             :---:     | :---:  |
| gzdoom Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/gzdoom/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/gzdoom/` |  gzdoom wrapper |
| solarus Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/solarus/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/solarus/` |  solarus  |
| pico-8 Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/pico-8/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/pico-8/` |  pico-8 wrapper  |

##### Ports

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     |
|  :---:  | :---:                  |             :---:     | :---:  |
| portX Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/` |  portx  |

**No ports are added yet**


##### Systems

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     |
|  :---:  | :---:                  |             :---:     | :---:  |
| es-de Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/es-de/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/es-de/` |  ES-DE  |
| portmaster Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/portmaster/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/portmaster` |  portmaster  |
| steam-rom-manager Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/steam-rom-manager/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/steam-rom-manager/` |  steam-rom-manager (SRM)  |

##### retrodeck/config/retrodeck

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     |
|  :---:  | :---:                  |             :---:     | :---:  |
| retrodeck Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/` |  RetroDECK's config folder `retrodeck.cfg`  `net.retrodeck.retrodeck.mime.xml` `retrodeck-mimetype.xml` |
| controller configs Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/controller_configs/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/controller_configs/` |  Steam Input Templates   |
| reference lists Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/reference_lists/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/reference_lists/` |  Various lists `bios.json` `features.json`   |
| helper files Folder Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/helper_files/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/helper_files/` |  Various lists `bios.json` `features.json`   |
| presets Folder Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/presets/` |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/config/retrodeck/presets/` |  Various preset.cfg files  |

### share/

| **Folder Name**    | **Path Local**           | **Path System**           |          **Comment**     |
|  :---:  | :---:                  |             :---:     | :---:  |
| metainfo Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/metainfo/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/metainfo/`  |  `net.retrodeck.retrodeck.metainfo.xml`  | 
| mime Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/mime/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/mime/`  |  `net.retrodeck.retrodeck.mime.xml`  | 
| icons Folder | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/icons/hicolor/scalable/apps/` | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/icons/hicolor/scalable/apps/`  |  Icons svg | 

## Steam: Folder Structure

**Note:** 

We only list the folders used by RetroDECK.

| **Folder Name**    | **Folder Path**                  | **Comment**     | 
|  :---:  | :---:                  | :---:     |
| Steam Default Templates Folder |`~/.steam/steam/controller_base/templates/` |        RetroDECK injects Steam Input Templates here                   |  
| Application Templates Folder |`~/.steam/steam/steamapps/common/Steam Controller Configs/<AppID>/config/retrodeck/` | Temporary changes are stored here if the user makes them|
| Steam Binding Icons Folder |`~/.steam/steam/tenfoot/resource/images/library/controller/binding_icons/` |               RetroDECK injects Steam Input Templates here                        |  
