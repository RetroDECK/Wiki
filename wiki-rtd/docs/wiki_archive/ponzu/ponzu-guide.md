# Ponzu - AppImage Loader: General Guide (Archive)

<img src="../../../wiki_icons/retrodeck/icon-ponzu.svg" width="100">

Ponzu was an AppImage Loader that can be used to search for user-provided AppImages and add them to RetroDECK.

It was removed as part of the update 0.10.0b.

**Warning: Factory Reset will remove everything Installed by Ponzu**

If you do a Factory Reset of RetroDECK, you will need to repeat the Ponzu process.

## Folder structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Ponzu Folder | `retrodeck/ponzu/`   | Temporary folder, manually created |

## Where to Put the AppImages

Ponzu looks for the AppImages in the `retrodeck/ponzu/` folder (lowercase).

## What Components can be used in Ponzu?

| Component | Supported Files Names |
|----------|-----------------|
| Yuzu `*`     | `Yuzu<X>.AppImage`, `yuzu<X>.AppImage` |
| Citra `*`   | `Citra<X>.AppImage`, `citra<X>.AppImage` |

Where `<X>` means any combination of characters.

`*` This is an temporary as-is none supported solution and will stop working in the end, check the statement on the bottom of this page.

## How to Use Ponzu

1. Create the `retrodeck/ponzu/` folder.
2. Copy the AppImages into the folder (they will be deleted during the process).
3. Open RetroDECK and wait.
4. When RetroDECK starts and the ES-DE Frontend is loaded, go to `ES-DE Configurations` -> `Other Settings` -> `Alternative Emulators` to set the new defaults for the components you have installed.
 
## How-to: Uninstall Components installed by Ponzu

1. Open Configurator.
2. Navigate to RetroDECK Tools.
3. Run Ponzu - Remove Ponzu.
4. This removes the emulators.


**This will not be deleted:** Userdata under retrodeck/: Saves, ROMs, etc.

## Does RetroDECK officially support Yuzu and Citra?

No, RetroDECK does not officially support Yuzu and Citra, and we provide zero support for them. The only official emulators we support are the ones we ship.

Since the removal of Citra and Yuzu, we have made it clear that there will be no new configurations, bug fixes, improvements, or support for these emulators. 

Future updates of RetroDECK will break the current temporary compatibility, and this is to be seen as a temporary solution.

We have also updated our social rules to reflect that any discussion about these emulators will result in a warning first and then a ban on where to find those AppImages.

The old guides are still available in the Archive 📂 section, as is Ponzu, but they are not updated (except for rare format changes that need to be done on all of the wiki).
