# Creating Component: Binary Testing

<img src="../../../../wiki_images/logos/appimage-logo.svg" width="100" alt="Appimage logo">

This a part of the How-to: Create Components Guide

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

## Downloading Binaries



---

## Building from Source

### Prerequisite: Check the Internet!

Before building from source, check whether a prebuilt binary is already available online. In many cases, the application may already be distributed in a usable format, allowing you to avoid compiling it yourself.

Look for existing builds such as:

- **Flatpak**
- **AppImage**
- **Standalone binaries**

Always verify that the source is trustworthy and that the build corresponds to the genuine application and an appropriate version. Prefer official project releases and reputable build systems where possible.

Do not assume that an unofficial build is safe simply because it is available online. Verify the source, project ownership, version, and build provenance before using it.

---

### Building Is Different for Every Application

Every project can use different build systems, compilation methods, dependencies and build requirements.

Always follow the build instructions provided by the project and identify the dependencies required to produce the binary.

---

### Example: Building SDL2TRS

See the official [SDL2TRS build instructions](https://gitlab.com/jengun/sdltrs/-/blob/sdl2/BUILDING.md).

Set up a Debian- or Ubuntu-based build environment and install the required dependencies:

`sudo apt install libsdl2-dev libreadline-dev`

#### Build with CMake (Recommended)

`mkdir -p build`

`cd build`

`cmake ..`

`cmake --build .`

The resulting SDL2TRS binary will be created in the `build/` directory.

---

