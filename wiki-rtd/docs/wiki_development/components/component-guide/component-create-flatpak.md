# Creating Component: Flatpak on Flathub

<img src="../../../../wiki_images/logos/flatpak-logo.svg" width="75" alt="Flatpak logo">

This a part of the How-to: Create Components Guide

We are going to use uzdoom as an example and remember that each Flatpak is different from another. 

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

There are two ways to test a flathub package if it can be integrated into RetroDECK.


---

## Use the Installed Flathub Flatpak (Recommended)

Install the application as a **user Flatpak** and access its installed files directly.

### Step 1: Install the Flatpak

Install the application from Flathub using its Flatpak application ID as a user not systemwide:

`flatpak install -u -y flathub <Application>`

For example, to install UZDoom:

`flatpak install -u -y flathub org.zdoom.uzdoom`


### Step 2: Locate the Installed Files

User-installed Flatpaks are stored under:

`~/.local/share/flatpak/app/`

Navigate to the application's active files directory:

`~/.local/share/flatpak/app/<FlatpakID>/current/active/files/`

For example, UZDoom uses:

`~/.local/share/flatpak/app/org.zdoom.uzdoom/current/active/files/`

You can navigate there directly:

`cd ~/.local/share/flatpak/app/org.zdoom.uzdoom/current/active/files/`

### Step 3: Locate the Application Files

The `files/` directory contains the files installed by the Flatpak.

A typical structure is:

```
    files/
    ├── bin/
    ├── lib/
    └── share/
```

---

## Alternative: Build from Flathub

This method is cloning or building the Flathub repository.

### Step 1: Clone the Flathub Repository

Before starting, ensure that **RetroDECK Cooker** is installed locally.

1. Create the components directory:

   `mkdir -p ~/retrodeck_dev/components`

2. Navigate to the components directory:

   `cd ~/retrodeck_dev/components`

3. Create a directory for the component you want to add:

   `mkdir <component_name>`

4. Clone the corresponding repository from [Flathub](https://github.com/flathub/):

   `git clone https://github.com/flathub/<Application>.git`

5. The cloned repository will be created in the components directory.

### Example

Create the component directory:

`mkdir -p ~/retrodeck_dev/components/uzdoom`

Navigate to the components directory:

`cd ~/retrodeck_dev/components`

Clone the UZDoom Flatpak repository:

`git clone https://github.com/flathub/org.zdoom.uzdoom.git`

The directory structure will now contain:

```
    retrodev_dev/components/
    ├── uzdoom/
    └── org.zdoom.uzdoom/
```

---

### Step 2: Extract or Build the Flatpak

Flatpak repository structures vary between applications.

A typical Flatpak build directory contains:

```
    <Application>-build-dir/
    ├── export/
    ├── files/
    │   ├── bin/      # Application binaries
    │   ├── lib/
    │   └── share/
    └── var/
```

Use one of the following methods depending on whether a prebuilt artifact is available.

#### Step 2a: Use a Prebuilt Artifact

If the Flatpak provides a prebuilt compressed artifact, extract it into the component directory.

Example:

```
    retrodev_dev/components/
    └── uzdoom-artifact/
```

The extracted artifact should contain the Flatpak's `files/`, `lib/`, `share/`, and related directories.

#### Step 2b: Build with `flatpak-builder`

If no prebuilt artifact is available, build the Flatpak using `flatpak-builder`.

1. Navigate to the cloned repository.

2. Initialize the Git submodules:

   `git submodule init`

3. Update the Git submodules:

   `git submodule update`

4. Build the Flatpak:

   `flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=<Application>-repo "<Application>-build-dir" "<Application>.yaml"`

5. Remove debug files from the build directory:

   `rm -rf <Application>-build-dir/files/lib/debug`

**Note:** The location of debug files may differ between Flatpaks.

### Example: UZDoom

Navigate to the cloned UZDoom repository: `cd ~/retrodeck_dev/components/org.zdoom.uzdoom`

Initialize and update the submodules:

```
git submodule init
git submodule update
```

Build the Flatpak: `flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=uzdoom-repo "uzdoom-build-dir" "org.zdoom.uzdoom.yaml"`

Remove the debug files: `rm -rf uzdoom-build-dir/files/lib/debug`

---

## Test the Flatpak

During this stage, identify and document the files required by the application:

- **Binary**
- **Dependencies**
- **Libraries**
- **Other important files**

### Create the Component Directory

Create a directory for the component under the RetroDECK Flatpak's component directory.

For example, for UZDoom:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/uzdoom`

In general:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/<component_name>`

### Copy the Application Files

Copy the complete application file structure into the component directory.

```
    files/
    ├── bin/
    ├── lib/
    ├── lib/
    └── <other>/
```

Copy the structure into:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/<component_name>/`

For example:

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/uzdoom/`

The resulting structure should resemble:

```
    components/
    └── uzdoom/
        ├── bin/
        ├── lib/
        └── share/
```

### Testing Procedure

1. Launch a shell inside the RetroDECK Flatpak:

   `flatpak run --command=bash net.retrodeck.retrodeck --debug`

2. Navigate to the component's `bin` directory:

   `cd /app/retrodeck/components/<component_name>/bin/`

   For example:

   `cd /app/retrodeck/components/uzdoom/bin/`

3. Launch the application binary:

   `./<binary>`

4. Test the application and document the results in detail.

### Check Dependencies, File Access, and Document the Results

During testing, determine whether the application requires additional libraries, dependencies, configuration files, or data files. Verify which files and directories the application accesses or creates, both inside and outside the Flatpak environment.

Document the results clearly, including the paths and purpose of important files and directories. Record any differences or access issues between the standard Flatpak installation from Flathub and the RetroDECK Flatpak environment.

This information will be used later when creating the component's **Ingredient** and **Recipe** files.

#### Application and Functionality

- **Functionality:** Fully functional, partially functional, and non-functional features or components.
- **Application behavior:** Successful startup, startup crashes, crashes during normal operation, errors, warnings, and unexpected behavior.
- **Environment differences:** Differences in behavior, file access, or dependencies between the standard Flathub Flatpak and the RetroDECK Flatpak.

#### Dependencies and Runtime Requirements

- **Dependencies:** Required shared libraries, runtime dependencies, data files, or configuration files.
- **Missing dependencies:** Libraries, runtime components, data files, or other resources that are unavailable.
- **Runtime files:** Files required for the application to function correctly.
- **File attributes:** Permissions or other file attributes relevant to the component.

#### Files and Directory Structure

- **Directory structure:** Complete structure of the application files.
- **`bin/`:** Application binaries and supporting executables.
- **`lib/`:** Shared libraries and other library files.
- **`share/`:** Application data, icons, desktop files, documentation, and other resources.
- **Additional files and directories:** Anything located outside `bin/`, `lib/`, and `share/`.
- **License files:** Location and filenames of all license files.
- **Configuration:** Configuration files and their locations.

#### File and Directory Access

- **File and directory access:** Files and directories created, modified, read, or accessed by the application.
- **User directories:** Check locations such as `~/Documents`, `~/.local`, `~/.config`, `~/`, and other application-specific locations.
- **Flatpak sandbox access:** Determine whether the application can access required locations correctly inside both Flatpak environments.
- **Access differences:** Record any differences or access issues between the standard Flathub Flatpak and the RetroDECK Flatpak.

---

## Create the Component: Ingredient and Recipe Files

Once testing is complete, continue to the next stage.

**Read more:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)

---
