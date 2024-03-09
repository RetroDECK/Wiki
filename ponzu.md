# Guide: Ponzu

<img src="../../../wiki_images/logos/ponzu.png" width="150">

Ponzu is a RetroDECK Framework function that is searching for Citra and Yuzu AppImages and integrates them into the RetroDECK framework, the result is that if a user provides their own AppImages, these will be available as emulators inside RetroDECK.

## Where to put the AppImages
Ponzu is looking for the AppImages in the `retrodeck/ponzu/` directory (lowercase).

### Accepted filenames
- Yuzu*.AppImage
- yuzu*.AppImage
- Citra*.AppImage
- citra*.Appimage
Where `*` means that there can be a combination of any character.

### Does Ponzu require eny BIOS file?
Not itself, but please check the dedicated emulators pages: Citra and Yuzu in the Archive.

## Accepted version
Ponzu was tested only with the latest versions of both the emulators.

## How to:
- Quit RetroDECK
- Put the dsired AppImages into `retrodeck/ponzu/`
- Open RetroDECK and wait
When RetroDECK will be started you will see the new Citra and Yuzu entries in the Configurator, such as Open Emulator and Reset Emulator. After this the emulators will be working like before, with the difference that now they are no more the default emulators.

## How to make them defaults?
WIP

## How to uninstall the emulators
- Open Configurator
- Navigate to RetroDECK Tools
- Run Ponzu - Remove Citra or Ponzu - Remove Yuzu
Your saves and games will not be deleted, so if you decide to re-install them everything will be as you left, except for the configurations that they will reset as RetroDECK defaults.