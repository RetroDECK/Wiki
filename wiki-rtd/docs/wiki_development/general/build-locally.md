# Development Build Locally Notes

This is WIP to help build RetroDECK locally. 

It is based on notes taken while adding the Ruffle(Flash Emulator) to the RetroDECK project. 

## Overview

RetroDECK is a big project in terms of scope and build size! It creates a 1.4GB flatpak file and the build folder is about 23GB.
It takes about 3 hours to build on an 8 core PC.

It would also be worth running RetroDECK in [debug mode](https://retrodeck.readthedocs.io/en/latest/wiki_development/general/debug-mode/) to get familiar with how /apps folder and other read only areas of the flatpak.

<img src="../../../wiki_images/graphics/development/retrodeck-overview.png" width="500">


## Build Process

### Download/Clone RetroDeck

Clone the repository. The --recursive option is used to ensure the RetroDECK sub modules are download(ie Emulators from other projects). The only element that is not downloaded for changing/editing is the [RetroDECK fork of ES-DE](https://github.com/XargonWan/RetroDECK-ES-DE). That should only be needed if you wish to add a new emulator via ES-DE.

```bash
git clone --recursive https://github.com/XargonWan/RetroDECK
```
If you missed doing a recursive download then can also use the command below. The command is also initiated as part of the build process.

```bash
git submodule update --init --recursive
```

Then use git checkout to select the latest cooker branch.


### Build locally via bash script

```bash
cd RetroDECK
developer_toolbox/build_retrodeck_locally.sh
```

Have a look at what the script does first and look at the corresponding automation_tools/ folder that the script above references for the build

The build will take about 3 hours on a relatively pc/laptop.

The build process creates a flatpak_builder file.


### Build locally installed github runner


Creates an artifact on Guthub and a local file in actions-runners

## FAQ

Crash during local sh build?

- Stay Calm!
- Restart the PC/laptop.
- re run command below it should hopefully continue from the last good build action.

```bash 
developer_toolbox/build_retrodeck_locally.sh
```

Crash during local github runner build?

- Stay Calm!
- Restart the PC/laptop.
- make sure runner started and then re run the failed Github action