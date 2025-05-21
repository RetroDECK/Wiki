# About Creating Components

Overview
Creating a new RetroDECK component is a variable process that is going to be different on a per-component basis, but there are some similarities in the process depending on the original source for the component being integrated. The final result will always be the same structure regardless of where the original component comes from.

Original Source Priorities
Some components may have multiple sources to choose from in the RetroDECK adaptation process, and some formats are easier to convert than others.

The current priority guidance is:

AppImage > Flatpak > Precompiled Binary > Build from Source

Creating a New Component
The general component repo can be found at https://github.com/RetroDECK/components



Each component will have several standardized files included in the component sub-folder.

**Read more here:** [about-component-recipe-files.md](about-component-recipe-files.md)



The **Component Recipe File** purpose is to tell the RetroDECK build automation system what needs to happen to take the components base source (AppImage, Flatpak, Binary, etc...) and turn it into a RetroDECK Component.

The recipe file is **NOT** included in the final component package. 


Additionally there is a recipe.sh file containing the automation commands to transform the component from its original source form into a RetroDECK-compatible structure.

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

# This component appears to run fine with only this library included, so removing all others to save on space
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


Creating a Component from a Flatpak

Typically, a Flatpak will extract into this standard structure:

<cloned repo directory>
    <flatpak-build-dir>
        - files
            - bin
            - lib
            - share

There may also be other included information that will need to be checked on a per-component basis to decide if it is required for use in the RetroDECK environment.

As an example, here are the commands that are used in the GZDOOM component creation process, with added comments explaining each step:

The basic process for converting an Flatpak into a RetroDECK-compatible component is:

1) Clone the Flatpak repo from its original source, or download a premade RetroDECK artifact.

mkdir gzdoom

git clone https://github.com/flathub/org.zdoom.GZDoom.git

cd org.zdoom.GZDoom

2) Either extract the premade artifact or build the Flatpak files from the cloned repo.

git submodule init

git submodule update

flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=gzdoom-repo "gzdoom-build-dir" "org.zdoom.GZDoom.yaml"

rm -rf gzdoom-build-dir/files/lib/debug

3) Copy the required data into the RetroDECK target directory

cd ..

mv org.zdoom.GZDoom/gzdoom-build-dir/files/bin gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/include gzdoom/
mv org.zdoom.GZDoom/gzdoom- build-dir/files/lib gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/share gzdoom/

4) (optional) Add any required libraries needed to the shared_libs component runtime sandbox, if the Flatpak is compiled in a non-freedesktop runtime originally.

5) Copy the RetroDECK component-specific files (listed above) into the RetroDECK target directory

cp component_launcher.sh manifest.json functions.sh prepare_component.sh gzdoom/

chmod +x gzdoom/component_launcher.sh

6) Compress the RetroDECK target directory into the final artifact that will be used in the RetroDECK core flatpak.

tar -czf "gzdoom-artifact.tar.gz" "gzdoom"


Step 7) Cleanup temp files

rm -rf gzdoom
rm -rf org.zdoom.GZDoom

