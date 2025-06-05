# recipe.sh

The **Component Recipe File**  `recipe.sh` purpose is to tell the RetroDECK build automation system what needs to happen to take the components base source from: **AppImage**, **Flatpak**, **Precompiled Binary** or **Built from Source** and turn it into a RetroDECK Component.

The recipe file is **NOT** included in the final component package. 

## How-to: Create the recipe.sh

All `recipe.sh` files consists at it's most basic level an assemble command and extra commands what the the RetroDECK Assembler what to do:


```
#!/bin/bash

source "automation-tools/assembler.sh"

assemble <assemble_type> "<link to source>"

# Custom Commands
```

### assemble flatpak_id

`assemble flatpak_id "<flatpak_id>"` 

Is used if the source is a flatpak and it will try to build with the source from flathub and is part of the applink for the component. 

**Example: PPSSPP**

[https://flathub.org/apps/org.ppsspp.PPSSPP](https://flathub.org/apps/org.ppsspp.PPSSPP )

`org.ppsspp.PPSSPP` is the and you use it as such:

`assemble flatpak_id "org.ppsspp.PPSSPP"` 


### assemble appimage

`assemble appimage "<link to appimage>"` 

Is used if the source is an appimage and it will try to extract the AppImage from the source via the `--appimage-extract` command.

**Example: RetroArch**

Link to RetroArch download of AppImage: https://buildbot.libretro.com/stable/*/linux/x86_64/RetroArch.7z

`assemble appimage "https://buildbot.libretro.com/stable/*/linux/x86_64/RetroArch.7z"` 

### assemble appimage

`assemble generic "<link to generic binary>"` 

Is used if the source is an generic binary it will try to extract it.

**Example: Xenia**

Link to RetroArch download of AppImage: https://github.com/xenia-canary/xenia-canary-releases/releases/latest/download/xenia_canary_linux.tar.gz

`assemble generic "https://github.com/xenia-canary/xenia-canary-releases/releases/latest/download/xenia_canary_linux.tar.gz""` 

### Custom Commands

Here you put all extra commands you might need for the application to work. It could be extra files to download, creating extra folders or file, something else.


## Examples

**Check More Examples:**

[RetroDECK Components/Cooker](https://github.com/RetroDECK/components/tree/cooker)


### Flatpak: PPSSPP 


```
#!/bin/bash

source "automation-tools/assembler.sh"

assemble flatpak_id "org.ppsspp.PPSSPP"

# Custom Commands

# PPSSPP Assets
mv "$WORK_DIR/share/ppsspp/assets" "$component/artifacts/"

# PPSSPP BIOS
log i "Downloading PPSSPP BIOS..." "$logfile"
wget "https://github.com/hrydgard/ppsspp/archive/refs/heads/master.zip" -O "$WORK_DIR/ppsspp-bios.zip"
unzip -o "$WORK_DIR/ppsspp-bios.zip" -d "$WORK_DIR/ppsspp-bios"
mkdir -p "$component/artifacts/ppsspp-bios/"
cp -rf "$WORK_DIR/ppsspp-bios/ppsspp-master/assets/PPSSPP"/* "$component/artifacts/ppsspp-bios/"

# PPSSPP Cheats
log i "Downloading PPSSPP cheat database..." "$logfile"
mkdir -p "$component/artifacts/cheats"
wget -O "$component/artifacts/cheats/cheat.db" https://github.com/Saramagrean/CWCheat-Database-Plus-/raw/master/cheat.db

finalize

```

### AppImage: RetroArch

```
#!/bin/bash

source "automation-tools/assembler.sh"

assemble appimage "https://buildbot.libretro.com/stable/*/linux/x86_64/RetroArch.7z"

# Custom Commands

# Nightly Cores
# As some comres are not available in the stable version, we need to download the nightly cores
# must be earlier than retroarch-cores as it will overwrite this cores with the stable ones
log i "Downloading RetroArch nightly cores..." "$logfile"
wget "https://buildbot.libretro.com/nightly/linux/x86_64/RetroArch_cores.7z" -O "$WORK_DIR/RetroArch_cores_nightly.7z"
7z x "$WORK_DIR/RetroArch_cores_nightly.7z" -o"$WORK_DIR/cores_nightly"
cp -rf "$WORK_DIR/cores_nightly/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores/"* "$WORK_DIR/cores/"
rm -f "$WORK_DIR/RetroArch_cores_nightly.7z"
rm -rf "$WORK_DIR/cores_nightly"

# Citra Libretro Core
# Citra is removed from the LibretroCores but is still available in Libretro 
log i "Downloading Citra Libretro core..." "$logfile"
wget "https://buildbot.libretro.com/nightly/linux/x86_64/latest/citra_libretro.so.zip" -O "$WORK_DIR/citra_libretro.so.zip"
unzip -o "$WORK_DIR/citra_libretro.so.zip" -d "$WORK_DIR/cores/"
rm -f "$WORK_DIR/citra_libretro.so.zip"

# Sameduck Libretro Core
# Sameduck is removed from the LibretroCores but is still available in Libretro
log i "Downloading Sameduck Libretro core..." "$logfile"
wget "https://buildbot.libretro.com/nightly/linux/x86_64/latest/sameduck_libretro.so.zip" -O "$WORK_DIR/sameduck_libretro.so.zip"
unzip -o "$WORK_DIR/sameduck_libretro.so.zip" -d "$WORK_DIR/cores/"
rm -f "$WORK_DIR/sameduck_libretro.so.zip"

# Retroarch Cores
log i "Downloading RetroArch cores..." "$logfile"
wget "https://buildbot.libretro.com/stable/1.20.0/linux/x86_64/RetroArch_cores.7z" -O $WORK_DIR/RetroArch_cores.7z
7z x $WORK_DIR/RetroArch_cores.7z -o"$WORK_DIR/cores/"
rm -f $WORK_DIR/RetroArch_cores.7z

# RetroArch Cheats
log i "Downloading RetroArch cheats..." "$logfile"
git clone --depth 1 "https://github.com/libretro/libretro-database.git" "$WORK_DIR/libretro-database"
mkdir -p "$WORK_DIR/cht"
cp -rf "$WORK_DIR/libretro-database/cht"/* "$WORK_DIR/cht/"
rm -rf "$WORK_DIR/libretro-database"

# MSX BIOS
log i "Downloading MSX BIOS..." "$logfile"
wget "http://bluemsx.msxblue.com/rel_download/blueMSXv282full.zip" -O "$WORK_DIR/bluemsx.zip"
unzip -o "$WORK_DIR/bluemsx.zip" -d "$WORK_DIR/bluemsx"
mkdir -p "$WORK_DIR/$EXTRAS/MSX"
cp -rf "$WORK_DIR/bluemsx/blueMSXv282full/Machines" "$WORK_DIR/$EXTRAS/MSX/"
cp -rf "$WORK_DIR/bluemsx/blueMSXv282full/Databases" "$WORK_DIR/$EXTRAS/MSX/"
rm -rf "$WORK_DIR/bluemsx/blueMSXv282full"
rm -f "$WORK_DIR/bluemsx.zip"

# Amiga BIOS
log i "Downloading Amiga BIOS..." "$logfile"
wget "https://github.com/rsn8887/capsimg/releases/download/1.1/Capsimg_for_Retroarch.zip" -O "$WORK_DIR/capsimg.zip"
unzip -o "$WORK_DIR/capsimg.zip" -d "$WORK_DIR/capsimg"
mkdir -p "$WORK_DIR/$EXTRAS/Amiga"
cp -r "$WORK_DIR/capsimg/Linux/x86-64/capsimg.so" "$WORK_DIR/$EXTRAS/Amiga/capsimg.so"
rm -rf "$WORK_DIR/capsimg"
rm -f "$WORK_DIR/capsimg.zip"

finalize

```

### Binary / Genric: Xenia

```
#!/bin/bash

source "automation-tools/assembler.sh"

assemble generic "https://github.com/xenia-canary/xenia-canary-releases/releases/latest/download/xenia_canary_linux.tar.gz"

# Custom Commands

finalize
```
