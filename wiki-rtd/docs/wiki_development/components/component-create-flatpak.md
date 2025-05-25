# Creating Component: Flatpak

This a part of the How-to: Create Components Guide

We are going to use GZDOOM as an example and remember that each Flatpak is different from another. 

## Step 1: Clone the repo from Flathub

1. Go to: `retrodeck/components/`.
2. Create a folder in `retrodeck/components/<component_name>` that matches the name of the component you want to add.
3. Go to: [Github:Flathub](https://github.com/flathub/) find the repo you want to clone.
4. Open a terminal window from the component folder.
5. Clone the repo with clone `https://github.com/flathub/<Application>`
6. You will now a repo folder under `retrodeck/components/`.

**Example:**

Make the folder:

`retrodeck/components/gzdoom`

Open a terminal window in 

`retrodeck/components/`.

Type:

```
git clone https://github.com/flathub/org.zdoom.GZDoom.git
```
You will now have two folders:

- `retrodeck/components/gzdoom`
- `retrodeck/components/org.zdoom.GZDoom`

## Step 2: Clone the repo from Flathub










----

## FIX THIS

Example:

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
