# Components Testing Guide

## Testing Procedure

Launch a shell inside the RetroDECK Flatpak: `flatpak run --command=bash net.retrodeck.retrodeck --debug`

Navigate to the component's `bin` directory: 

`cd /app/retrodeck/components/<component_name>/bin/`

For example:

`cd /app/retrodeck/components/uzdoom/bin/`

Launch the application binary: `./<binary>` and test the application and document the results in detail.

---

## Check Dependencies, File Access, and Document the Results

During testing, determine whether the application requires additional libraries, dependencies, configuration files, or data files. Verify which files and directories the application accesses or creates, both inside and outside the Flatpak environment.

Document the results clearly, including the paths and purpose of important files and directories. Record any differences or access issues between the standard Flatpak installation from Flathub and the RetroDECK Flatpak environment.

This information will be used later when creating the component's **Ingredient** and **Recipe** files.

The goal is to identify: **Environment differences:** 

Differences in behavior, file access, dependencies, or other runtime requirements between the standard installation and running of the application and the RetroDECK Flatpak environment.

*Think about these topics:*

### Application and Functionality

- **Functionality:** Fully functional, partially functional, and non-functional features or components.
- **Application behavior:** Successful startup, startup crashes, crashes during normal operation, errors, warnings and unexpected behavior.

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
- **XDG paths:** Determine whether the application respects the XDG Base Directory specification when creating or accessing user files. Check whether it correctly uses paths such as `$XDG_CONFIG_HOME`, `$XDG_DATA_HOME`, `$XDG_CACHE_HOME`.  Instead of writing directly to locations such as `~/.config`, `~/.local`, or `~/`. Document any paths that are used and whether their behavior differs between the standard application installation and the RetroDECK Flatpak environment.


---

## Creating Component: Component Files Guide

Once testing is complete, continue to the next stage.

**Read more:** [Creating Component: Component Files Guide](creating-components-files-guide.md)

---