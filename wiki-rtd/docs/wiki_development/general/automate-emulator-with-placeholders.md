# WIP

# Automate emulator updates with placeholders
This guide is explaining how to use the placeholders in the situation where the emulator release cannot be forseen, for example if an emulator is having only one release on GitHub that is being kept updated without a release history.
In this case we might don't know the final filename nor the sha256.

Fort his purpose we have implemented an automation to get that data from the repository itself.

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