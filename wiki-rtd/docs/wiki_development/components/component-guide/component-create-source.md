# Creating Component: Build from Source

<img src="../../../../wiki_images/logos/open-source-logo.svg" width="75">

This a part of the How-to: Create Components Guide

We are going to use SDL2TRS as an example and remember that each build  is different from another. 

**Tip:** 

To avoid modifying your primary system, consider using a remote server, virtual machine (VM), or a containerized solution such as Distrobox.

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

---

## Step 0: Make a testing folder 

1. Have a local copy of RetroDECK Cooker installed.
2. Create a components directory for example: `~/retrodeck_dev/components/`

---

## Step 1: Clone / Download the Source

1. Go to: `~/retrodeck_dev/components/`.
2. Create a folder in `~/retrodeck_dev/components/<component_name>` that matches the name of the component you want to add.
3. Open a terminal window from the component folder.
4. Clone the repo or download the source files.
5. You will now a repo folder under `~/retrodeck_dev/components/<source>`.

---

## Step 2: Create a Build Environment and Build

1. Review the project’s official unique documentation for detailed build instructions and prerequisites.
2. Configure your development environment according to the documented requirements.
3. Build the binary for the target platform: **Linux x86_64**.

---

### Example: Building SDL2TRS

[SDL2TRS: Building](https://gitlab.com/jengun/sdltrs/-/blob/sdl2/BUILDING.md)

Setup a Debian- or Ubuntu-based build environment and run:

`sudo apt install libsdl2-dev libreadline-dev`

**Build with CMake (Recommended)**

```
mkdir -p build
cd build
cmake ..
cmake --build .
```

The resulting SDL2TRS binary will be created in the `build/` directory.

---

## Step 3: Testing

During this step, identify and document the following:

- **Binary**
- **Dependencies**
- **Libraries**
- **Other important files**

### Testing Procedure

1. Launch the binary from the RetroDECK Flatpak shell: `flatpak run --command=bash net.retrodeck.retrodeck --debug`
2. Launch the application normally within your host OS environment (outside RetroDECK).
3. Document the results in detail.

**While testing, record:**

- Fully functional features
- Partially functional features
- Non-functional components
- Errors, warnings, crashes, or unexpected behavior

Issue resolution will be handled later during the **Alchemist and Hunter** step.

**Example Considerations**

- Are all expected features functioning correctly?
- Does the application create directories or files in user locations (`~/Documents`, `~/.local`, `~/.config`, `~/`, or other paths)?
- Does the application report any missing libraries or dependencies, both outside and inside the Flatpak environment?
- Does it crash at startup or during normal operation, both outside and inside the Flatpak environment?


---

## Step 4: Creating Component: Ingredient & Recipe Files 

You now will need to move on to the next step:

**Read more here:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)


