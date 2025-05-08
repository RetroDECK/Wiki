# Add a new system to RetroDECK (WIP)

With this article we try to showcase how to add a new system to RetroDECK. We will use the Ruffle emulator as an example for this process and go through:

- Initial testing of the emulator.
- Integrating Ruffle into Flatpack build process.
- How to integrate Ruffle into `RetroDeck Framework` and `RetroDECK Configurator` (for saving game data, resetting/moving config etc).

## Overview and prerequisites

This article assumes that the RetroDECK uses it's default standard paths.

It also assumes that that you have looked at [Build Locally](build-locally.md) article as this continues from that introduction.

## Do you know the system you are trying to add?

How well do you know the system you are looking to add to RetroDECK?

Take a look at the following question and try to answer them

### General Questions

- Can it run fullscreen?
- Does it need bios / firmware files?
- What type of input does it need?
- Does it have a separate menu you open in game to access the emulator / engines settings or do you access them via minimizing fullscreen?
- Does it support having it's folders / files symlinked?

### Controllers

- How is controller support? Is it SDL or something else?
- How does it handle Steam Input? (Add the system to Steam and try launching it via Steam)

### Hotkeys and Keybinds

- Does it support hotkeys/keybinds for emulator functions like saving/loading/quiting and more?
- If it has hotkey support - does it have hotkeys are the hardbound or they can be rebound by the user?
- If they are hardbound keys - can they be changed during the buildprocess with changing the code with a light edit in the emulator?
- If they are bindable - does it support keyboard combo inputs (Example: CTRL + A)?

### Configs and CLI

- Does it need a default config files and how many?
- How does it save config files after you edit the default settings?
- Does the configs support redirecting of save folders or other directories?
- Does it have command line arguments for redirecting configs, folders, saves or more?

### Dependencies

- What libraries and assets does it need?


## Tasks Involved

### Clone RetroDeck

- Fork and clone the main project [RetroDeck Github](https://github.com/XargonWan/RetroDECK/fork)
- Adding an emulator would be classed as a **new feature** so create a branch based of the label feat, ie: `feat/new_emulator_name`
- An example for **ruffle** can be seen [Github: Feat Ruffle](https://github.com/monkeyx-net/RetroDECK_UK/tree/feat/ruffle)
- Initial testing can be done via the [Debug Mode](debug-mode.md)
- You will be able to manually run via emulator and test functionality
- To get the emulator added to the manifest an example of ruffle is shown below as simple example manifest

### Editing the manifest file 

```bash linenums="1"
 # Ruffle - START

  - name: ruffle
    buildsystem: simple
    build-commands:
      - mkdir -p "${FLATPAK_DEST}/share/ruffle"
      - mv -f ruffle "${FLATPAK_DEST}/share/ruffle/"
      - chmod +x "${FLATPAK_DEST}/share/ruffle/ruffle"
    sources:
      - type: archive
        url: https://github.com/ruffle-rs/ruffle/releases/download/nightly-2024-07-02/ruffle-nightly-2024_07_02-linux-x86_64.tar.gz
        sha256: a410ce8956723a0043d1744ef9b519debc978faa2b5868953acc548e44586d15

  # Ruffle - END
```

 - Please note lines 1 and 14 as remarks/labels having these help with logging and fund the emulator within the file.
 - Line 3 is a label
 - Lines 4 indicates a simple build type, the simple build type is just executing the given `build-commands`, ie downloading and copying files rather than compiling and building the project. The preference is to compile and build emulators to  support the Flatpak process in producing increased compatibly and customisation. Ruffle is a rust project and under constant development. It is hoped to make this a compiled project in the future. 
 - A simple project is also a good starting point to Flatpak builds.
 - Lines 5 to 8 shows the build process kinked to the downloaded ruffle file.
 - Lines 10-12 are defining the sources:
   - type: `archive`, this means that the archive is download and extracted without any explicit manifest action, `file` type source instead would just download the file without extracting it.
   - url: obviously the url to download
   - sha256: the sha256sum of the file, this is mandatory

> **NOTE:** In some rare cases we might don't know the sha (or even the url) in advance, for example when an emulator is having only one release on GitHub that is being kept updated without a release history.
[Guide: Automate emulator updates with placeholders](automate-emulator-with-placeholders.md) is explaining how to use the placeholders instead of urls or sha in case the this data cannot be foreseen.
Fort his purpose we have implemented an automation to get that data from the repository itself to being used only as a final resource as we prefer to control the version of each module for proper troubleshooting and version control.

### Build the RetroDECK Flatpak

If you have added the necessary files to the manifest

Move you new yml code to just after key dependencies in the manifest. So that you do not have to wait until near the end of the build to check your manifest actions.

Not even ES-DE should be needed to test the additional emulator. In fact it will not show up in ES-DE. See [here for more.](#add-emulatorsystem-to-es-de)

Build using [Build Locally](build-locally.md) with a `self hosted runner` is the recommended method, but you can also build via a `bash script`.

If you run via self hosted it easier to track the build and any issues/errors are logged. 
Other than human error with the code the most frequent issue is with sha256 issues due to issue with download or a version change. So there sha256 no longer matches.

If the build completes without errors it should produce an artifact that you can download and test

### Backup your key data and configs

Make a copy of `~/.var/app/net.retrodeck.retrodeck/` folder and name it `old.net.retrodeck.retrodeck`
Make a full back up or partial backups of the retrodeck folder normally under `~/retrodeck` or sdcard/other drive.
On retrodeck folder backups:

Generally, very few things would target the roms folder, but the other folders could be targeted for various scripts. Our recommendation would be to back up the full ~/retrodeck folder, but as a tester you can decide how much you want to risk.

### Install and Test the built Flatpak

Remove all the installed versions of RetroDECK, to be sure uninstall both in the system and userland:

`flatpak uninstall --user net.retrodeck.retrodeck` and press (y) yes to remove RetroDECK. If you have more then one version installed for some reason choose to remove all versions.

`flatpak uninstall --system net.retrodeck.retrodeck` and press (y) yes to remove RetroDECK. If you have more then one version installed for some reason choose to remove all versions.

Download and unzip the artifact to a folder of your choice and then run this command in the same folder and the unarchived file.

`flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.Flatpak`

On first run it will ask you to upgrade

If it then asks to upgrade the cooker as well. Then say no.

### Add emulator/system to ES-DE

In order for your new system to show in ES-DE it need to be added to ES-DE, which has been forked by the project.

Fork and clone the RetroDECK ES-DE [Github: ES-DE Fork](https://github.com/XargonWan/RetroDECK-ES-DE/fork)

Once cloned cd into your cloned directory and create a new branch and then 

```bash
cd retrodeck-main/resources/systems/linux
```

There are two files in that folder and the relevant ruffle sections are shown below. There is a good chance that the emulator or system you are adding is already there and just needs to have the remarks removed. If not you can use this as an example of what needs adding.

`es_system.xml`
```xml
<system>
       <name>flash</name>
       <fullname>Adobe Flash</fullname>
       <path>%ROMPATH%/flash</path>
       <extension>.swf .SWF</extension>
       <command label="Ruffle (Standalone)">%EMULATOR_RUFFLE% %ROM%</command>
       <!-- <command label="Lightspark (Standalone)">%EMULATOR_LIGHTSPARK% &ndash;&ndash;fullscreen %ROM%</command> -->
       <platform>flash</platform>
       <theme>flash</theme>
</system>
```

In the rules file I added an entry for the ruffle-wrapper.sh and added the <!-- RetroDECK --> remark to make it easier to compare for differences when merges are made from ES-De source project. A wrapper script was required as ruffle has most options set from cli switches. The wrapper script is documented below.

`es_find_rules.xml`
```xml
<emulator name="RUFFLE">
       <!-- Adobe Flash player Ruffle -->
       <rule type="systempath">
           <entry>ruffle</entry>
       </rule>
       <rule type="staticpath">
           <entry>/app/bin/ruffle-wrapper.sh</entry>   <!-- RetroDECK -->
           <entry>~/Applications/ruffle/ruffle</entry>
           <entry>~/.local/share/applications/ruffle/ruffle</entry>
           <entry>~/.local/bin/ruffle/ruffle</entry>
           <entry>~/bin/ruffle/ruffle</entry>
       </rule>
</emulator>
```

### Emu-configs

Ruffle wrapper script sources the /app/libexec/global.sh to reference the $saves_folder variable. it also allows the use if check_desktop_mode function so that a different graphics preference can be set for Steam Deck in game mode.


```bash
#!/bin/bash

source /app/libexec/global.sh

#Check if Steam Deck in Desktop Mode
if [[ $(check_desktop_mode) == "true" ]]; then
    /app/share/ruffle/ruffle --graphics vulkan --config /var/data/ruffle --save-directory $saves_folder/ruffle --fullscreen "$@"
else
    /app/share/ruffle/ruffle --graphics gl --config /var/data/ruffle --save-directory $saves_folder/ruffle --fullscreen "$@"
fi
```
Other important variables referenced in the global.sh are:-

```bash
RETRODECKHOMEDIR  is $rdhome (aka retrodeck folder)
RETRODECKSAVESDIR is $saves_folder (aka retrodeck/saves)
RETRODECKROMSDIR  is $roms_dir (aka retrodeck/roms)
```

These are used by the configurator tool to move key folders and reset them. More on that tool soon.

