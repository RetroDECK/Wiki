Creating a Component from an AppImage
This is the basic process for converting an AppImage into a RetroDECK-compatible component.

There may also be other included information that will need to be checked on a per-component basis to decide if it is required for use in the RetroDECK environment.

As an example, here are the commands that are used in the Cemu component creation process, with added comments explaining each step:

We are going to use the CEMU AppImage as an Example:


1) Download the AppImage from the original source.

wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"

2) Extract the AppImage into a basic folder structure.

Typically, an AppImage will extract into this standard structure:

squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin
        - lib
        - share

--appimage-extract or use PeaZip https://flathub.org/apps/io.github.peazip.PeaZip 

chmod +x "Cemu-2.6-x86_64.AppImage"

$(realpath "Cemu-2.6-x86_64.AppImage") --appimage-extract


3) Move the required data out of the AppImage structure into the RetroDECK target directory.

Create a cemu directory that will be used by RetroDECK.

mkdir -p cemu

mv squashfs-root/apprun-hooks cemu/
mv squashfs-root/usr/* cemu/

 
This component appears to run fine with only this library included, so removing all others to save on space
find cemu/lib/ -not -name 'libGLU.so.1' -delete

4) (optional) Remove any duplicate libraries that may be included in the AppImage which also exist in the RetroDECK flatpak runtime.

5) Copy the RetroDECK component-specific files (listed above) into the RetroDECK target directory.

cp component_launcher.sh manifest.json functions.sh prepare_component.sh cemu/
chmod +x cemu/component_launcher.sh


6) Compress the RetroDECK target directory into the final tar.gz artifact that will be used in the RetroDECK core flatpak.

tar -czf "cemu-artifact.tar.gz" "cemu"

7) Cleanup temp files.

rm -rf squashfs-root

rm -rf cemu
