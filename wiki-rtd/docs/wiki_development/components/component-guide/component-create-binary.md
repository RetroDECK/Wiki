# Creating Component: Binary Testing

<img src="../../../../wiki_images/logos/appimage-logo.svg" width="100">

This a part of the How-to: Create Components Guide

We are going to use Tsugaru as an example and remember that each binary is different from another. 

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

---

## Step 0: Make a testing directory 

1. Have a local copy of RetroDECK Cooker installed.
2. Create a components directory for example: `~/retrodeck_dev/components/`

---

## Step 1: Download the Binary from Source

1. Download the file from Github/Website or where every you find it.
2. Put it into `retrodeck_dev/components/`.
3. Create a directory in `retrodeck_dev/components/<component_name>` that matches the name of the component you want to add.

**Example:**

```
wget "https://github.com/captainys/TOWNSEMU/releases/download/v20251206/ubuntu_binary_latest.zip"
```

## Step 2: Set Permissions & Extract Files

1. Place the archive in the following directory: `retrodeck_dev/components/ubuntu_binary_latest.zip`
2. Create the target directory: `retrodeck_dev/components/tsugaru/`
3. Extract the archive into the target directory.
4. Ensure the binary has executable permissions:  `chmod +x <binary_name> `

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

## Step 4: Creating Component: Ingredient Files

You now will need to move on to the next step:

**Read more here:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)

