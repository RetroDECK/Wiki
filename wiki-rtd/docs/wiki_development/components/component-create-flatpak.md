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
