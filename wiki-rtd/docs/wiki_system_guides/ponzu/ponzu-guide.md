# Guide: Ponzu - Legacy AppImage Loader

<img src="../../../wiki_images/logos/ponzu-logo.png" width="100">

Ponzu can be used temporarily to search for user-provided Citra and Yuzu AppImages and make them available as emulators inside RetroDECK.

**Note:** This will not work in the longterm.

## Where to Put the AppImages

Ponzu looks for the AppImages in the `retrodeck/ponzu/` folder (lowercase).

### Accepted Filenames & Versions

- Yuzu*.AppImage
- yuzu*.AppImage
- Citra*.AppImage
- citra*.Appimage

Where `*` means any combination of characters.

## How to: Use Ponzu

1. Create the retrodeck/ponzu/ folder.
2. Copy the AppImages into the folder (they will be deleted during the process).
3. Open RetroDECK and wait.
4. When RetroDECK starts and the ES-DE Frontend is loaded, go to `Other Settings` -> `Alternative Emulators` to set the new defaults.
5. Check the Archive 📂 section on the wiki for the old guides.  

## How to Uninstall the Emulators

1. Open Configurator.
2. Navigate to RetroDECK Tools.
3. Run Ponzu - Remove Ponzu.
4. This removes the emulators.

Your saves and games will not be deleted, so if you decide to re-install them, everything will be as you left it, except for the configurations which will be reset to default.

**Warning: A Full Reset will remove the Emulators**

If you do a Full Reset of RetroDECK, you will need to repeat the Ponzu process.

## Should this be seen as official support for the removed emulators?

No, we provide zero support. The only official emulators we support for those systems are the Citra-core in RetroArch (as long as it is shipped as part of RetroArch).

Since the announcement of Citra's and Yuzu's removal, we made it clear that we will not provide any new configurations, bug fixes, improvements, or any kind of support for these removed emulators. There is a substantial risk that future updates of RetroDECK will break the current temporary compatibility. This is to be seen as a temporary as-is solution.

We also updated our social rules to reflect that any discussion about these emulators will come with a warning first and then a ban on where to find AppImages.
