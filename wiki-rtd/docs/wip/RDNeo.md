Overview
Creating a new RetroDECK component is a variable process that is going to be different on a per-component basis, but there are some similarities in the process depending on the original source for the component being integrated. The final result will always be the same structure regardless of where the original component comes from.

Original Source Priorities
Some components may have multiple sources to choose from in the RetroDECK adaptation process, and some formats are easier to convert than others.

The current priority guidance is:

AppImage > Flatpak > Precompiled Binary > Build from Source

Creating a New Component
The general component repo can be found at https://github.com/RetroDECK/components

Each component will have several standardized files included in the component sub-folder.

component_launcher.sh - A file that acts as a wrapper for launching the component inside the RetroDECK flatpak, assigning environmental variables as needed for the component to work.

functions.sh - A file that contains all the component-specific file name variables (such as the components config file) as well as any component-specific functions (such as automatically installing firmware).

prepare_component.sh - A file containing all the required actions for preparing the component for use in the RetroDECK environment, such as reset actions.

manifest.json - A general purpose informational file containing menu, preset and informational data.

More detail on these files can be found at https://cryptpad.fr/pad/#/2/pad/view/euykmjJ2tdv2NZss50ef8itRlzd8bzqNqndmqf5FDEQ/

Additionally there is a recipe.sh file containing the automation commands to transform the component from its original source form into a RetroDECK-compatible structure.

Creating a Component from an AppImage
The basic process for converting an AppImage into a RetroDECK-compatible component is:
1) Download the AppImage from the original developer.
2) Extract the AppImage into a basic folder structure.
3) (optional) Remove any duplicate libraries that may be included in the AppImage which also exist in the RetroDECK flatpak runtime.
4) Move the required data out of the AppImage structure into the RetroDECK target directory.
5) Copy the RetroDECK component-specific files (listed above) into the RetroDECK target directory.
6) Compress the RetroDECK target directory into the final artifact that will be used in the RetroDECK core flatpak.
7) Cleanup temp files.

Typically, an AppImage will extract into this standard structure:

squashfs-root
    - AppRun (a script, binary or symlink)
    - usr
        - bin
        - lib
        - share

There may also be other included information that will need to be checked on a per-component basis to decide if it is required for use in the RetroDECK environment.

As an example, here are the commands that are used in the Cemu component creation process, with added comments explaining each step:

Step 1) Download the AppImage from the original source

wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"

Step 2) Extract the AppImage into its basic folder structure

chmod +x "Cemu-2.6-x86_64.AppImage"

$(realpath "Cemu-2.6-x86_64.AppImage") --appimage-extract

Step 3) Create RetroDECK target directory and move required data into it

mkdir -p cemu

mv squashfs-root/apprun-hooks cemu/
mv squashfs-root/usr/* cemu/

# This component appears to run fine with only this library included, so removing all others to save on space
find cemu/lib/ -not -name 'libGLU.so.1' -delete

Step 5) Copy the RetroDECK component-specific files into the RetroDECK target directory

cp component_launcher.sh manifest.json functions.sh prepare_component.sh cemu/
chmod +x cemu/component_launcher.sh

Step 6) Compress the RetroDECK target directory into the final artifact

tar -czf "cemu-artifact.tar.gz" "cemu"

Step 7) Cleanup temp files

rm -rf squashfs-root

rm -rf cemu


Creating a Component from a Flatpak
The basic process for converting an Flatpak into a RetroDECK-compatible component is:
1) Clone the Flatpak repo from its original source, or download a premade RetroDECK artifact.
2) Either extract the premade artifact or build the Flatpak files from the cloned repo.
3) Copy the required data into the RetroDECK target directory
4) (optional) Add any required libraries needed to the shared_libs component runtime sandbox, if the Flatpak is compiled in a non-freedesktop runtime originally.
5) Copy the RetroDECK component-specific files (listed above) into the RetroDECK target directory
6) Compress the RetroDECK target directory into the final artifact that will be used in the RetroDECK core flatpak.
7) Cleanup temp files

Typically, a Flatpak will extract into this standard structure:

<cloned repo directory>
    <flatpak-build-dir>
        - files
            - bin
            - lib
            - share

There may also be other included information that will need to be checked on a per-component basis to decide if it is required for use in the RetroDECK environment.

As an example, here are the commands that are used in the GZDOOM component creation process, with added comments explaining each step:

1) Clone original developer Flatpak repo.

mkdir gzdoom

git clone https://github.com/flathub/org.zdoom.GZDoom.git

cd org.zdoom.GZDoom

2) Build the Flatpak files

git submodule init

git submodule update

flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=gzdoom-repo "gzdoom-build-dir" "org.zdoom.GZDoom.yaml"

rm -rf gzdoom-build-dir/files/lib/debug

3) Copy the required data into the RetroDECK target directory

cd ..

mv org.zdoom.GZDoom/gzdoom-build-dir/files/bin gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/include gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/lib gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/share gzdoom/

Step 5) Copy the RetroDECK component-specific files into the RetroDECK target directory

cp component_launcher.sh manifest.json functions.sh prepare_component.sh gzdoom/

chmod +x gzdoom/component_launcher.sh

Step 6) Compress the RetroDECK target directory into the final artifact

tar -czf "gzdoom-artifact.tar.gz" "gzdoom"

Step 7) Cleanup temp files

rm -rf gzdoom
rm -rf org.zdoom.GZDoom
