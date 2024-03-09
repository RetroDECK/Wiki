# Guide: Ponzu (Legacy AppImage Loader)

<img src="../../../wiki_images/logos/ponzu.png" width="150">

Ponzu is an as-is function that is searching for user provided (Defunct) Citra and Yuzu AppImages and make them available emulators inside if possible RetroDECK.

Yuzu and Citra was included in RetroDECK until update 0.8.0b where they where removed.

### Should this be seen as alternative official support for the removed emulators?

No, this is a tool to point towards those versions from RetroDECK and some parts to be used from within RetroDECK and the ES-DE Frontend.

RetroDECK will not provide any new: configs, bugfixes, improvements and support towards this function or the AppImages. If future updates breaks the AppImages it will not be fixed, this is a as-is solution.

## Where to put the AppImages

Ponzu is looking for the AppImages in the `retrodeck/ponzu/` directory (lowercase).

### Accepted filenames & versions

- Yuzu*.AppImage
- yuzu*.AppImage
- Citra*.AppImage
- citra*.Appimage
Where `*` means that there can be a combination of any character.

Only the last versions will work.

## How to:

- Create the `retrodeck/ponzu/` folder
- Put the AppImages in there
- Open RetroDECK and wait.
- When RetroDECK is loaded you can point towards the AppImages (if they still work)

## How to uninstall the emulators

- Open Configurator
- Navigate to RetroDECK Tools
- Run Ponzu - Remove Ponzu
- This removes the AppImages

Your saves and games will not be deleted, so if you decide to re-install them everything will be as you left, except for the configurations that they will reset as RetroDECK defaults.
