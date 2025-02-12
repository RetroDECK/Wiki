# RetroDECK's Folder Structure

Here is the entire RetroDECK folder structure.

## Main Folders

| Type    | Folder                 |          Comment     |          
|  :---:  | :---:                  |             :---:     |
| Userdata Folder  |`retrodeck/` |   Contains userdata. Has a dynamic location, chosen by the user.         |         
| User Var Folder |`~/.var/app/net.retrodeck.retrodeck/`         | Exposes configuration, cache, and system data from the Flatpak environment.   |
| Flatpak Folder | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` | Contains the sandboxed flatpak environment and should not be touched. |

## Userdata Folder - retrodeck/

| Type    | Folder                 |          Comment     |          
|  :---:  | :---:                  |             :---:     |
| Sync Folder  |`retrodeck/.sync` |   Hidden folder for the Steam Sync feature contains sync .sh files       |         
| BIOS Folder | `retrodeck/bios`        | BIOS folder, follows the RetroArch BIOS structure |
| Borders Folder | `retrodeck/borders`  | Artfiles for RetroArch borders. |
| ES-DE Folder | `retrodeck/ES-DE`  | Contains userdata files from ES-DE |
| Logs Folder | `retrodeck/logs`  | Contains RetroDECK logfiles |
| Mods Folder | `retrodeck/mods`  | Contains various mods folders for all supported systems  |
| PortMaster Folder | `retrodeck/PortMaster`  | Contains PortMaster downloaded games data|
| ROMs Folder | `retrodeck/roms`  | Contains various ROMs folders for all supported systems |
| Saves Folder | `retrodeck/saves`  | Contains various save folders for all supported systems |
| Screenshots Folder | `retrodeck/saves`  | Contains various screenshots folders for all supported systems |
| Shaders Folder | `retrodeck/shaders`  | Contains various shader folders for all supported systems |
| States Folder | `retrodeck/states`  | Contains various state (save state) folders for all supported systems |
| Texture Packs Folder | `retrodeck/texture_packs`  | Contains various Texture Packs folders for all supported systems |
