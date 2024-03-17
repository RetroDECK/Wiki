# Guide: Ponzu (Legacy AppImage Loader)

<img src="../../../wiki_images/logos/ponzu.png" width="150">

Ponzu is an temporary as-is function that is searching for user provided Citra and Yuzu AppImages and make them available as emulators inside RetroDECK.

### Should this be seen as official support for the removed emulators?

No, the only official and supported defaults are Ryujinx and Citra-core in RetroArch.

RetroDECK will not provide any new: configs, bugfixes, improvements or support towards the AppImages. There is also a risk that future updates can break the compatibility with the AppImages (because they are no longer maintained and dead), this is a as-is solution.

We strongly recommenced everyone to just use Ponzu as a way to safely migrate to Ryujinx or the Citra-core (save and move).

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
