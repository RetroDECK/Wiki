# Ponzu - AppImage Loader: General Guide

<img src="../../../wiki_images/logos/ponzu-logo.png" width="100">

Ponzu is an AppImage Loader that can be used to search for user-provided AppImages and add them to RetroDECK.

In the future, Ponzu might support other systems not shipped by default in RetroDECK, such as proprietary emulators. We hope to get custom licenses for them so they can be installed via Ponzu as an option if we can't build them via RetroDECK directly (nothing yet).

**Warning: Factory Reset will remove everything Installed by Ponzu**

If you do a Factory Reset of RetroDECK, you will need to repeat the Ponzu process.

## Where to Put the AppImages

Ponzu looks for the AppImages in the `retrodeck/ponzu/` folder (lowercase).

## What Components can be used in Ponzu?

| Component | Supported Files Names |
|----------|-----------------|
| Yuzu `*`     | `Yuzu<X>.AppImage`, `yuzu*.AppImage` |
| Citra `*`   | `Citra<X>.AppImage`, `citra*.AppImage` |

Where `<X>` means any combination of characters.

`*` This is an temporary as-is none supported solution and will stop working in the end, check the statement on this page.

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

Since the removal of Citra and Yuzu, we have made it clear that there will be no new configurations, bug fixes, improvements, or support for these emulators. Future updates of RetroDECK will break the current temporary compatibility, and this is to be seen as a temporary solution.

We have also updated our social rules to reflect that any discussion about these emulators will result in a warning first and then a ban on where to find those AppImages.

The old guides are still available in the Archive 📂 section, but they are not updated (except for rare format changes that need to be done on all of the wiki).
