# Components Testing Guide


## Testing Procedure

1. Launch a shell inside the RetroDECK Flatpak:

   `flatpak run --command=bash net.retrodeck.retrodeck --debug`

2. Navigate to the component's `bin` directory:

   `cd /app/retrodeck/components/<component_name>/bin/`

   For example:

   `cd /app/retrodeck/components/uzdoom/bin/`

3. Launch the application binary:

   `./<binary>`

4. Test the application and document the results in detail.

## Check Dependencies, File Access, and Document the Results

During testing, determine whether the application requires additional libraries, dependencies, configuration files, or data files. Verify which files and directories the application accesses or creates, both inside and outside the Flatpak environment.

Document the results clearly, including the paths and purpose of important files and directories. Record any differences or access issues between the standard Flatpak installation from Flathub and the RetroDECK Flatpak environment.

This information will be used later when creating the component's **Ingredient** and **Recipe** files.

### Application and Functionality

- **Functionality:** Fully functional, partially functional, and non-functional features or components.
- **Application behavior:** Successful startup, startup crashes, crashes during normal operation, errors, warnings, and unexpected behavior.
- **Environment differences:** Differences in behavior, file access, or dependencies between the standard Flathub Flatpak and the RetroDECK Flatpak.

### Dependencies and Runtime Requirements

- **Dependencies:** Required shared libraries, runtime dependencies, data files, or configuration files.
- **Missing dependencies:** Libraries, runtime components, data files, or other resources that are unavailable.
- **Runtime files:** Files required for the application to function correctly.
- **File attributes:** Permissions or other file attributes relevant to the component.

### Files and Directory Structure

- **Directory structure:** Complete structure of the application files.
- **License files:** Location and filenames of all license files.
- **Configuration:** Configuration files and their locations.

#### Flatpak / Appimage Source

- **`bin/`:** Application binaries and supporting executables.
- **`lib/`:** Shared libraries and other library files.
- **`share/`:** Application data, icons, desktop files, documentation, and other resources.
- **Additional files and directories:** Anything located outside `bin/`, `lib/` and `share/`.

### File and Directory Access

- **File and directory access:** Files and directories created, modified, read, or accessed by the application.
- **User directories:** Check locations such as `~/Documents`, `~/.local`, `~/.config`, `~/`, and other application-specific locations.
- **Flatpak sandbox access:** Determine whether the application can access required locations correctly inside both Flatpak environments.
- **Access differences:** Record any differences or access issues between the standard Flathub Flatpak and the RetroDECK Flatpak.

---

## Create the Component: Ingredient and Recipe Files

Once testing is complete, continue to the next stage.

**Read more:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)

---