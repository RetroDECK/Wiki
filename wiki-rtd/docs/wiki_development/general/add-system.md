# Add a new system to RetroDECK

This is a WIP document to show how the Ruffle emulator was added RetroDeck. From initial testing of the emulator, to integrating Ruffle into Flatpack build process and then how to integrate Ruffle into RetroDeck Configuration system for saving game data, resetting/moving config etc.

## Overview

Article assumes that the defaults path for RetroDECK are

That you have looked at [the build local](build-locally.md) document as this continues from that introduction.

## Preparation

How well do you know the emulator you are looking to add to RetroDECK. 

 * Can it run fullscreen
 * Does it save config files
 * Does it need a default config file
 * What libraries and assets does it need.
 * Does it need bios files
 * Controller support
 * Command line arguments for redirecting configs or saves etc

## Tasks Involved

### Clone RetroDeck

- Fork and clone the main [RetroDeck project.](https://github.com/XargonWan/RetroDECK/fork)
- Adding an emulator would be classed as a **new feature** so create a branch based of the label feat, ie: `feat/new_emulator_name`
- An example for **ruffle** can be seen [here](https://github.com/monkeyx-net/RetroDECK_UK/tree/feat/ruffle)
- Initial testing can be done via the [debug mode](/wiki_development/general/debug-mode/#retrodeck-in-debug-mode)
- You will be able to manually run via emulator and test functionality
- To get the emulator added to the manifest an example of ruffle is shown below as simple example manifest

### Editing the manifest file 

```bash linenums="1"
# Ruffle - START

  - name: ruffle
    buildsystem: simple
    build-commands:
      - chmod +x "${FLATPAK_DEST}/share/ruffle/ruffle"
      - ln -s ${FLATPAK_DEST}/share/ruffle/ruffle ${FLATPAK_DEST}/bin/ruffle
    sources:
      - type: archive
        url: https://github.com/ruffle-rs/ruffle/releases/download/nightly-2024-07-02/ruffle-nightly-2024_07_02-linux-x86_64.tar.gz
        sha256: a410ce8956723a0043d1744ef9b519debc978faa2b5868953acc548e44586d15

# Ruffle - END
```

 - Please note lines 1 and 15 as remarks/labels having these help with logging and fund the emulator within the file.
 - Line 3 is a label
 - Lines 4 indicates a simple build type, the simple build type is just executing the given `build-commands`, ie downloading and copying files rather than compiling and building the project. The preference is to compile and build emulators to  support the Flatpak process in producing increased compatibly and customisation. Ruffle is a rust project and under constant development. It is hoped to make this a compiled project in the future. 
 - A simple project is also a good starting point to Flatpak builds.
 - Lines 5 to 9 shows the build process kinked to the downloaded ruffle file.
 - Lines 11-13 are defining the sources:
   - type: `archive`, this means that the archive is download and extracted without any explicit manifest action, `file` type source instead would just download the file without extracting it.
   - url: obviously the url to download
   - sha256: the sha256sum of the file, this is mandatory

> **NOTE:** In some rare caes we might don't know the sha (or even the url) in advance, for example when an emulator is having only one release on GitHub that is being kept updated without a release history.
[This guide](wiki-rtd/docs/wiki_development/general/automate-emulator-with-placeholders.md) is explaining how to use the placeholders instead of urls or sha in case the this data cannot be forseen.
Fort his purpose we have implemented an automation to get that data from the repository itself to being used only as a final resource as we prefer to control the version of each module for proper troubleshooting and version control.

### Build the RetroDECK Flatpak

If you have added the necessary files to the manifest

Move you new yml code to just after key dependencies in the manifest. So that you do not have to wait until near the end of the build to check your manifest actions.

Not even ES-DE should be needed to test the additional emulator. In fact it will not show up in ES-DE. See [here for more.](#add-emulatorsystem-to-es-de)

Build using  [self hosted runner](build-locally/#build-locally-installed-github-runner) is the recommended method. Can also build via a [bash script](build-locally/#build-locally-via-bash-script)

If you run via self hosted it easier to track the build and any issues/errors are logged. 
Other than human error with the code the most frequent issue is with sha256 issues due to issue with download or a version change. So there sha256 no longer matches.

If the build completes without errors it should produce an artifact that you can download and test


## Backup your key data and configs

Make a copy of `~/.var/app/net.retrodeck.retrodeck/` folder and name it `old.net.retrodeck.retrodeck`
Make a full back up or partial backups of the retrodeck folder normally under `~/retrodeck` or sdcard/other drive.
On retrodeck folder backups:

Generally, very few things would target the roms folder, but the other folders could be targeted for various scripts. Our recommendation would be to back up the full ~/retrodeck folder, but as a tester you can decide how much you want to risk.

## Install and Test the built Flatpak

Remove all the installed versions of RetroDECK, to be sure uninstall both in the system and userland:

`flatpak uninstall --user net.retrodeck.retrodeck` and press (y) yes to remove RetroDECK. If you have more then one version installed for some reason choose to remove all versions.

`flatpak uninstall --system net.retrodeck.retrodeck` and press (y) yes to remove RetroDECK. If you have more then one version installed for some reason choose to remove all versions.

Download and unzip the artifact to a folder of your choice and then run this command in the same folder and the unarchived file.

`flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.Flatpak`

On first run it will ask you to upgrade

If it then asks to upgrade the cooker as well. Then say no


## Add emulator/system to ES-DE

Fork and clone the RetroDECK ES-DE [Repo](https://github.com/XargonWan/RetroDECK-ES-DE/fork)
