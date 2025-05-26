# Creating Component: Flatpak

<img src="../../../wiki_images/logos/flatpak-logo.svg" width="100">

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

## Step 2: Extract or build the repo

The structure is different in each Flatpak.

Typically, a Flatpak will extract into this standard structure:

```
<cloned repo directory>
    <flatpak-build-dir>
        - export
        - var
        - files
            - bin (contains the binary)
            - lib
            - share

```

### Compressed Artifact

If the flatpak has a premade compressed artifact you can just extract that to the structure under:

- `retrodeck/components/<artifact>`

**Example:**

- `retrodeck/components/gzdoom-artifact`

### Build with flatpak-builder

If there is no artifact you will need to build the it with: `flatpak-builder` into a new folder: `<Application>-build-dir`


```
git submodule init

git submodule update

flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=<Application>-repo "<Application>-build-dir" "<Application>.yaml" ## Input the <Application> sources

rm -rf <Application>-build-dir/files/lib/debug ## Remove debug files, the location could be diffrent
```

**Example:**

Go to: `retrodeck/components/org.zdoom.GZDoom`

Run the following:

```
git submodule init

git submodule update

flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=gzdoom-repo "gzdoom-build-dir" "org.zdoom.GZDoom.yaml"

rm -rf gzdoom-build-dir/files/lib/debug

```

## Step 3: Copy into retrodeck/components/<component_name>

Identify the:

- Binary
- Libraries
- Other important files

Move needed files into `retrodeck/components/<component_name>`

From either the prebuilt flatpak OR artifact.

**Example:**

From: `retrodeck/components/`

```
mv org.zdoom.GZDoom/gzdoom-build-dir/files/bin gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/include gzdoom/
mv org.zdoom.GZDoom/gzdoom- build-dir/files/lib gzdoom/
mv org.zdoom.GZDoom/gzdoom-build-dir/files/share gzdoom/
```

All the important files are now located in `retrodeck/components/gzdoom`

### Step 5: (Optional) Add to libraries shared_libs

Add any required libraries needed to the `shared_libs` component runtime sandbox, if the Flatpak is compiled in a non-freedesktop runtime originally.

`UPDATE THIS ON HOW`



### Step 6: Create the INGREDIENT files

Add the INGREDIENT files to: `retrodeck/components/<component_name>`

```
components/<component_name>/component_launcher.sh 
components/<component_name>/component_manifest.json
components/<component_name>/component_functions.sh
components/<component_name>/component_prepare.sh
```

Make sure that `component_launcher.sh` is executable: 

```
chmod +x component_launcher.sh`
```

**Example:**

```
components/gzdoom/component_launcher.sh 
components/gzdoom/component_manifest.json
components/gzdoom/component_functions.sh
components/gzdoom/component_prepare.sh
```

```
chmod +x gzdoom/component_launcher.sh
```

### Step 6: Compress the artifact

Compress the RetroDECK: `retrodeck/components/<component_name>` folder into tar.gz. 

Name it: `<component_name>-artifact.tar.gz`

Command:

```
tar -czf "<component_name>-artifact.tar.gz" "<component_name>"
```

**Example:**

```
tar -czf "gzdoom-artifact.tar.gz" "gzdoom"
```
