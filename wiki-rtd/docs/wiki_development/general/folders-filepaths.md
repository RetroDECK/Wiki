# What are the various folders and filepaths in RetroDECK?

RetroDECK is a Flatpak a sandboxed bundle of different applications and configurations. One part of the files are none writable while others are.

## User Accessible Folders 

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| RetroDECK Folder |`retrodeck/` |   Dynamic path, Contains userdata: `roms`, `bios` etc...    |  
| Flatpak Folder |`~/.var/app/net.retrodeck.retrodeck` |  contains: `cache` `config` and `data`     |  
| Flatpak Cache Folder |`~/.var/app/net.retrodeck.retrodeck/cache/` |  cache files and temp data   |  
| Flatpak Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/` | configuration files for various systems    |  
| Flatpak Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/` |  data structures and files need by some systems      |  
| Flatpak RetroDECK Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/retrodeck/` | `retrodeck.cfg`, `godot` and `changelog.xml` files    |  


## RetroDECK installed as User Application

If you have installed RetroDECK from flathub as a user application.

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Flatpak Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | This is mapped as the `/app` inside the flatpak.  |  
| ES-DE Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/` | Top Level ES-DE Folder |  
| ES-DE Unix Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/unix/` | `es_find_rules.xml`  `es_systems.xml`  |  
| ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| SRM Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/srm/` | SRM Folder |  
| BIN Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Mapped to /app/bin inside the flatpak. Contains: wrappers, scripts, retrodeck.sh and more |  


## RetroDECK installed as System Application

If you have installed RetroDECK from flathub as a system application.

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Flatpak Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` |  This is mapped as the `/app` inside the flatpak.     |  
| ES-DE Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/` | Top Level ES-DE Folder |  
| ES-DE Unix Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/unix/` | `es_find_rules.xml`  `es_systems.xml`  |  
| ES-DE Linux Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| SRM Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/srm/` | SRM Folder |  
| BIN Folder |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/bin/` | Mapped to /app/bin inside the flatpak. Contains: wrappers, scripts, retrodeck.sh and more |  
