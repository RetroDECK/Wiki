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
 * Command line arguments for redirecting configs or saves etc.

## Tasks Involved

### Clone RetroDeck

Fork and clone the main [RetroDeck project.](https://github.com/XargonWan/RetroDECK/fork)

Adding an emulator would be classed as a new feature so create a branch based of the label feat

ie feat/new_emulator_name

An example for ruffle can be seen [here.](https://github.com/monkeyx-net/RetroDECK_UK/tree/feat/ruffle)

Initial testing can be done via the [debug mode](/wiki_development/general/debug-mode/#retrodeck-in-debug-mode)

You will be able to manually run via emulator and test functionality.

To get the emulator added to the manifest an example of ruffle is shown below as simple example manifest.

### Editing the manifest file 

```bash linenums="1"
# Ruffle - START

  - name: ruffle
    buildsystem: simple
    build-commands:
      - mkdir -p "${FLATPAK_DEST}/share/ruffle"
      - tar -zxvf *.tar.gz -C "${FLATPAK_DEST}/share/ruffle"
      - chmod +x "${FLATPAK_DEST}/share/ruffle/ruffle"
      - ln -s ${FLATPAK_DEST}/share/ruffle/ruffle ${FLATPAK_DEST}/bin/ruffle
    sources:
      - type: file
        url: RUFFLEURLPLACEHOLDER
        sha256: RUFFLESHAPLACEHOLDER

# Ruffle - END
```

 * Please note lines 1 and 15 as remarks/labels having these help with logging and fund the emulator within the file.
 * Line 3 is a label
 * Lines 4 indicates a simple build type ie downloading and copying files rather than compiling and building the project.  The preference is to compile and build emulators to  support the Flatpak process in producing increased compatibly and customisation. Ruffle is a rust project and under constant development. It is hoped to make this a compiled  project in the future. 
 * A simple project is also a good starting point to flatpak builds.
 * Lines5 to 9 shows the build process kinked to the downloaded ruffle file.
 * Line 10 sources has some place holders url: and sha256: See below

### Add/Change Placeholders

The placeholders are referenced in the file automation_tools/automation_task_list.cfg

``` bash linenums="1"
# The proper format for this file is
# ACTION^PLACEHOLDERTEXT^URL^REPO(Optional)
# hash^DOOMSHAPLACEHOLDER^https://buildbot.libretro.com/assets/cores/DOOM/Doom%20%28Shareware%29.zip
hash^DUCKSTATIONSHAPLACEHOLDER^https://github.com/stenzek/duckstation/releases/download/preview/DuckStation-x64.AppImage
hash^SAMEDUCKSHAPLACEHOLDER^https://buildbot.libretro.com/nightly/linux/x86_64/latest/sameduck_libretro.so.zip
hash^PPSSPPBIOSHASHPLACEHOLDER^https://github.com/hrydgard/ppsspp/archive/refs/heads/master.zip
hash^MSXBIOSHASHPLACEHOLDER^http://bluemsx.msxblue.com/rel_download/blueMSXv282full.zip
hash^XEMUHDDHASHPLACEHOLDER^https://github.com/mborgerson/xemu-hdd-image/releases/latest/download/xbox_hdd.qcow2.zip
hash^VITA3KSHAPLACEHOLDER^https://github.com/Vita3K/Vita3K/releases/download/continuous/ubuntu-latest.zip
hash^RANIGHTLYCORESPLACEHOLDER^https://buildbot.libretro.com/nightly/linux/x86_64/RetroArch_cores.7z
url^RUFFLEURLPLACEHOLDER^"https://github.com/ruffle-rs/ruffle/releases/download/$(git ls-remote --tags https://github.com/ruffle-rs/ruffle.git | tail -n 1 | cut -f2 | sed 's|refs/tags/||')/ruffle-$(git ls-remote https://github.com/ruffle-rs/ruffle.git | tail -n 1 | cut -f2 | sed -E 's|refs/tags/||; s/-/_/2; s/-/_/2')-linux-x86_64.tar.gz"
hash^RUFFLESHAPLACEHOLDER^"https://github.com/ruffle-rs/ruffle/releases/download/$(git ls-remote --tags https://github.com/ruffle-rs/ruffle.git | tail -n 1 | cut -f2 | sed 's|refs/tags/||')/ruffle-$(git ls-remote https://github.com/ruffle-rs/ruffle.git | tail -n 1 | cut -f2 | sed -E 's|refs/tags/||; s/-/_/2; s/-/_/2')-linux-x86_64.tar.gz"
hash^RETRODECKMAMEPLACEHOLDER^"https://github.com/XargonWan/RetroDECK-MAME/releases/download/$(curl -s https://api.github.com/repos/XargonWan/RetroDECK-MAME/releases/latest | grep -oP '"tag_name": "\K(.*?)(?=")')/RetroDECK-MAME-Artifact.tar.gz"
url^RETRODECKMAMEURLPLACEHOLDER^"https://github.com/XargonWan/RetroDECK-MAME/releases/download/$(curl -s https://api.github.com/repos/XargonWan/RetroDECK-MAME/releases/latest | grep -oP '"tag_name": "\K(.*?)(?=")')/RetroDECK-MAME-Artifact.tar.gz"
latestcommit^UNIVERSALDYNAMICINPUTCOMMITPLACEHOLDER^https://github.com/Venomalia/UniversalDynamicInput^main
outside_file^VERSIONPLACEHOLDER^${GITHUB_WORKSPACE}/buildid
branch^THISBRANCH
repo^RDREPO
```

The example above shows the relevant Ruffle entries at lines line 11 and 12.

 * Line 11 creates the URL based on date/time.
 * Line 12 created a sha256 hash. The Flatpak build gave a sha error build without passing a sha256 hash.

The automation_tools/automation_task_list.cfg is processed by the automation_tools/pre_build_automation.sh script and replaces the placeholders with the calculated values.

You can edit and run the developer_toolbox/build_retrodeck_locally.sh below to check how it changes the manifest file. By using the file below and comment all .sh scripts apart from line 13. It restores the default manifest file after the test run.

```bash linenums="1"
#!/bin/bash

# WARNING: run this script from the project root folder, not from here!!

git submodule update --init --recursive

export GITHUB_WORKSPACE="."
cp net.retrodeck.retrodeck.appdata.xml net.retrodeck.retrodeck.appdata.xml.bak
cp net.retrodeck.retrodeck.yml net.retrodeck.retrodeck.yml.bak

#automation_tools/install_dependencies.sh
#automation_tools/cooker_build_id.sh
automation_tools/pre_build_automation.sh
#automation_tools/cooker_flatpak_portal_add.sh
#automation_tools/appdata_management.sh
#automation_tools/flatpak_build_download_only.sh
#automation_tools/flatpak_build_only.sh
#automation_tools/flatpak_build_bundle.sh

rm -f net.retrodeck.retrodeck.appdata.xml 
rm -f net.retrodeck.retrodeck.yml
cp net.retrodeck.retrodeck.appdata.xml.bak net.retrodeck.retrodeck.appdata.xml
cp net.retrodeck.retrodeck.yml.bak net.retrodeck.retrodeck.yml
```

### Build the RetroDECK flatpak

If you have added the necessary files to the manifest

Move you new yml code to just after key dependencies in the manifest. So that you do not have to wait until near the end of the build to check your manifest actions.

Not even ES-DE should be needed to test the additional emulator. In fact it will not show up in ES-DE. See [here for more.](#add-emulatorsystem-to-es-de)

Build using  [self hosted runner](build-locally/#build-locally-installed-github-runner) is the recommended method. Can also build via a [bash script](build-locally/#build-locally-via-bash-script)

If you run via self hosted it easier to track the build and any issues/errors are logged. 
Other than human error with the code the most frequent issue is with sha256 issues due to issue with download or a version change. So there sha256 no longer matches.

If the build completes without errors it should produce an artifact that you can download and test


## Backup your key data and configs

Make a copy of ~/.var/app/net.retrodeck.retrodeck/ folder and name it old.net.retrodeck.retrodeck
Make a full back up or partial backups of the retrodeck folder normally under ~/retrodeck or sdcard/other drive.
On retrodeck folder backups:

Generally, very few things would target the roms folder, but the other folders could be targeted for various scripts. Our recommendation would be to back up the full ~/retrodeck folder, but as a tester you can decide how much you want to risk.

## Install and Test the built flatpak

Remove current version of RetroDECK

`flatpak uninstall net.retrodeck.retrodeck` and press (y) yes to remove RetroDECK. If you have more then one version installed for some reason choose to remove all versions.

Download and unzip the artifact to a folder of your choice and then run this command in the same folder and the unarchived file.

`flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak`

On first run it will ask you to upgrade

If it then asks to upgrade the cooker as well. Then say no


## Add emulator/system to ES-DE

Fork and clone the RetroDECK ES-DE [Repo](https://github.com/XargonWan/RetroDECK-ES-DE/fork)
