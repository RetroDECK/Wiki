# Creating Component: Build from Source

<img src="../../../../wiki_images/logos/open-source-logo.svg" width="75" alt="Open Source logo">

This a part of the How-to: Create Components Guide

We are going to use SDL2TRS as an example and remember that each build  is different from another. 

**Tip:** 

To avoid modifying your primary system, consider using a remote server, virtual machine (VM), or a containerized solution such as Distrobox.

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

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



---

## Step 4: Creating Component: Ingredient & Recipe Files 

You now will need to move on to the next step:

**Read more here:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)


