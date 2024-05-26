# Development Build Locally Notes
This is a WIP document to help build RetroDECK locally. It is based on notes taken while adding the Ruffle(Flash Emulator) to the RetroDECK project. 

## Overview
RetroDECK is a big project in terms of scope and build size! The build process creates a 1.6GB flatpak file and the build folder is about 23GB.
It takes about 3 hours to build on an 8 core PC.

This document was initially based on adding a new function to RetroDECK as part of the build process. The person that wrote this as a hobbyist coder/developer, decided that it was better to cover just building RetroDECK before moving onto to adding/changing RetroDECK.

Adding to and changing the RetroDECK flatpak manifest will be covered in another wiki article.

It would also be worth running RetroDECK in [debug mode](https://retrodeck.readthedocs.io/en/latest/wiki_development/general/debug-mode/) to get familiar with how the /apps folder and other read only and full access areas of the flatpak work on your device. A list of the folders and file paths used by RetroDECK can be found [here.](https://retrodeck.readthedocs.io/en/latest/wiki_development/general/folders-filepaths/)

Note that you can run most applications in the app folder that have been built via flatpak.

<img src="../../../wiki_images/graphics/development/retrodeck-overview.png" width="500">

### Project Resources
In order to save project resources. Please try and use a self-hosted runner to test your build process.

Please do not forget that RetroDECK is a volunteer based open source project. If you would like to support the build environment that is provided as part of the project. Then please consider making a donation to [the RetroDECk project or other projects involved.](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

## Build Process
The build process is intensive and time consuming. About three hours on a machine with 8 cores. 

From time to time to it can appear to lockup up your device especially during the build process.


### Download/Clone RetroDeck
Clone the repository. The --recursive option is used to ensure the RetroDECK sub modules are download(ie Emulators from other projects). The only element that is not downloaded for changing/editing is the [RetroDECK fork of ES-DE](https://github.com/XargonWan/RetroDECK-ES-DE). That should only be needed if you wish to add a new emulator via ES-DE.

```bash
git clone --recursive https://github.com/XargonWan/RetroDECK
```
If you missed doing a recursive download then can also use the command below. The command is also initiated as part of the build process.

```bash
git submodule update --init --recursive
```

Then use ```git checkout cooker-x.x.xx``` to select the latest cooker branch. Tab complete should help select the version to download

You can also create your own branch with

```bash
git checkout -b branchname
```

### Build locally via bash script

Although it possible to build via this method. Option 2 is more reliable and has more options for tracking and restarting the build if required. 

Looking at the local build process is good to look at how the build process works. This helps understand the self-hosted runner option.

```bash
developer_toolbox/build_retrodeck_locally.sh
```
Have a look at what the script does first and look at the corresponding automation_tools/ folder that the script above references for the build

The build will take about 3 hours on an eight core pc/laptop.

Creates this folder when building locally
RetroDECK/.flatpak-builder/

Produces RetroDECK-cooker.flatpak in the RetroDeck folder. 

The flatpak build file can be installed/updated following this [guide.](https://retrodeck.readthedocs.io/en/latest/wiki_development/general/cli-guide/#install-retrodeck-from-cli)

### Build locally installed github runner
This section covers installing and using self-hosted [github runners.](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners) 

#### Github actions and runners
[Github actions](https://docs.github.com/en/actions) allow automated build to be created that are built via a self-hosted or hosted runner. The RetroDECK project uses self-hosted runners that can be installed on a cloud machine or a local machine.  
 
  - Advantages can Monitor, log, debug, cancel and restart. Via github app or a browser. 
  - Greater stability for build process.

The RetroDECK project has created this Github action. You should have a cloned version of this [workflow file.](https://github.com/XargonWan/RetroDECK/blob/main/.github/workflows/cooker-selfhosted.yml) This file is used for cooker builds and manual builds. If you build against a cooker build it should auto build when you push your changes to your own repo


[Link to an actual cooker build.](https://github.com/XargonWan/RetroDECK/actions/runs/8940312603)

[Link to full log off the build.](https://github.com/XargonWan/RetroDECK/actions/runs/8940312603/job/24558182428)

The image below shows that the build is complete and that an artifact file has been created that can be downloaded for testing. The Action also creates a local flatpak build file. 

```bash
actions-runner/_work/RetroDECK/RetroDECK/RetroDECK-cooker.flatpak
```

<img src="../../../wiki_images/graphics/development/github_retrodeck_action.png" width="600">


#### Install self-hosted github runner
[Add a self-hosted runner](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners#adding-a-self-hosted-runner-to-a-repository) to a repository.

#### Setup runner to run as a service(optional)
[Create the self-hosted runner](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service) as a service. 

If using your own branch it can create an issue with the build process. Please refer to the [RetroDECK Manifest section](#retrodeck-flatpak-manifest)

On starting the build process via the runner it will create the following folder in the location you installed the self-hosted runner.

```bash
actions-runner/_work/RetroDECK/RetroDECK/
```

On completing the build you can use the locally produced file or download/share the artifact file produced by the self-hosted runner.

```bash
actions-runner/_work/RetroDECK/RetroDECK/RetroDECK-cooker.flatpak
```

## RetroDECK flatpak manifest
This may get moved to a github issue. 

Need branch that matches origin and remote hence not use Xargon
Check SHA placeholders

When a build is started locally it overwrites to yml as part of build with populated sha value and branch. Somme of the modules pulled in change daily and given the long build time. Then a mismatch can occur. Mismatch also caused by pull in from another repo.

Pulling from remote repo causes issues with SHA values being different and an unmatched branch error as that branch does not exists on Xargon

Show reference to pulling in Xargon version of yml as part of the build.

SHA reference issues if doing this. 

Need SHA pointers not values

Need to update net.retrodeck.retrodeck.yml to point at your own repo.

line 95 ish
   sources:
      - type: git
        url: https://github.com/monkeyx-net/RetroDECK.git

bottom

    sources:
      - type: git
        url: https://github.com/monkeyx-net/RetroDECK.git

```bash 
net.retrodeck.retrodeck.yml
```
The manifest file is what builds the application after downloads all the relevant modules and dependencies.  See the [Flatpak manifest guide here](https://docs.flatpak.org/en/latest/manifests.html) 

## FAQ
### Crash during local sh build?
- Stay Calm!
- Wait 5 to 10 minutes and see if device starts responding again.
- Restart the PC/laptop.
- re run command below it should hopefully continue from the last good build action.

```bash 
developer_toolbox/build_retrodeck_locally.sh
```

### Crash during local github runner build?
- Stay Calm!
- Wait 5 to 10 minutes and see if device starts responding again. 
- Restart the PC/laptop.
- make sure runner started and then re run the failed Github action