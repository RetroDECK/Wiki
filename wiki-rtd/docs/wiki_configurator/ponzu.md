# Guide: Ponzu (Legacy AppImage Loader)

<img src="../../../wiki_images/logos/ponzu-logo.png" width="150">

Ponzu is an temporary as-is function that is searching for user provided Citra and Yuzu AppImages and make them available as emulators inside RetroDECK.

### Q: Should this be seen as official support for the removed emulators?

No we provide zero support, the the only official emulators we support for those systems are Ryujinx and Citra-core in RetroArch (as long as it is shipped as part of RetroArch).

Since the first day of our announcement on both Citra's and Yuzu's removal, we made it extremely clear that we will not provide any new: configurations, bug fixes, improvements, or any kind of support at all, for the these removed emulators. There is also a very substantial risk that future updates of RetroDECK will break the current temporary compatibility, this to be seen as a temporary as-is solution.

At the same moment we also updated our social rules to reflect that any type of discussion about these emulators will come with a warning first and then a ban.

The only recommended use case of Ponzu is the intended function as safe way to migrate to Ryujinx or the Citra-core (finish up, save and move).

We urge everyone to stop using these emulators.

## Where to put the AppImages

Ponzu is looking for the AppImages in the `retrodeck/ponzu/` directory (lowercase).

### Accepted filenames & versions

- Yuzu*.AppImage
- yuzu*.AppImage
- Citra*.AppImage
- citra*.Appimage

Where `*` means that there can be a combination of any character.

## How to:

Note you need to COPY the appimages as RetroDECK will consume them for the necessary files.

- Create the `retrodeck/ponzu/` folder
- COPY the AppImages in there
- Open RetroDECK and wait.
- When RetroDECK is loaded you can point towards the AppImages (if they still work)

## How to uninstall the emulators

- Open Configurator
- Navigate to RetroDECK Tools
- Run Ponzu - Remove Ponzu
- This removes the Emulators.

Your saves and games will not be deleted, so if you decide to re-install them everything will be as you left, except for the configurations that they will reset as RetroDECK legacy defaults.

## Note on Full Reset

If you do a Full Reset of RetroDECK you will need to do the Ponzu process again.
