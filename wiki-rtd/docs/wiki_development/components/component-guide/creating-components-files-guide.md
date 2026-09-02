# Creating Component: Component Files Guide

<img src="../../../../wiki_icons/retrodeck/icon-assembler.svg" width="75" alt="">

## Prerequisites: A tested component

**Note:**

This assumes you have already tested a component from the Testing Guide.

---

## Create the Recipe: component_recipe.json

Start by creating a basic `component_recipe.json` using the **RetroDECK Alchemist** and **Library Hunter**.

The recipe defines how the component is assembled by the **RetroDECK Assembler** and **RetroDECK Alchemist** into a working component artifact that can be integrated into RetroDECK.

**Read more here:** 

- [Guide: RetroDECK Alchemist & component_recipe.json](../alchemist-guide.md)

---

## Create the Ingredients

The **Ingredients** are the files *consumed* by the **RetroDECK Framework** to configure, launch and manage the component.

Use existing components as references when creating the component files. Find a component with a similar application structure or requirements and use it as a starting point..

---

### Create the launcher: component_launcher.sh 

Create the component launcher and configure how RetroDECK starts the application.

**Read more here:** 

- [component_launcher.sh](../component-files/component-ingredient-launcher.md)

---

### Create the manifest: component_manifest.json

Create the component manifest and define the component's metadata and required configuration.

**Read more here:** 

- [component_manifest.json](../component-files/component-ingredient-manifest.md)

---

### Create the logic and functions: component_functions.sh

Create the component functions and add any application-specific functionality.

**Read more here:** 

- [component_functions.sh](../component-files/component-ingredient-functions.md)


---

## Optimize the Configuration

Perform a first optimization pass after the component is functional.

### Controls

Test the application's controls with **Steam Input**, where possible. Adjust the configuration to provide an appropriate default control scheme.

### Paths

Verify that all required paths are configured correctly.

Check whether paths are handled through:

- Configuration files.
- Command-line arguments.
- Environment variables.
- Symbolic links.
- XDG paths.
- Other application-specific mechanisms.

### Performance

Test and optimize the application's performance.

Use **Steam Deck hardware** as the default performance target for RetroDECK and ensure that the component performs appropriately.

---

## Make the Final Artifact

Once all optimizations, configuration files and component files are complete, configure the `component_recipe.json` so that the **RetroDECK Alchemist** can use it to build the final component artifact with all the files.

The resulting artifact can be prepared for:

### Internal Components

- **RetroDECK Cooker**.
- **RetroDECK Cooker Version repositories**.

### External Components

- **RetroVERSE**.
- **RetroLACE:** No submission is required. Upload the completed artifact to your chosen hosting location.

---

## Good Luck, Chef!

Once the artifact has been successfully built, uploaded or submitted as required and passed **RetroDECK Team** quality control and approval, the component is ready for use.

It will be available in a future **RetroVERSE** or **RetroDECK** build, or directly from your chosen hosting location and loaded through **RetroLACE**.

Thanks for reading!


---


