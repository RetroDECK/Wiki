# Creating Component: Flatpak Testing

<img src="../../../../wiki_images/logos/flatpak-logo.svg" width="75">

This a part of the How-to: Create Components Guide

We are going to use uzdoom as an example and remember that each Flatpak is different from another. 

**Note:**

This assumes you have read [Creating Component: Guide](creating-components-guide.md).

---

## Step 0: Make a testing folder 

1. Have a local copy of RetroDECK Cooker installed.
2. Create a components folder under retrodeck/ userdata folder.
3. **Result:** `retrodeck/components/`

---

## Step 1: Clone the repo from Flathub

1. Go to: `retrodeck/components/`.
2. Create a folder in `retrodeck/components/<component_name>` that matches the name of the component you want to add.
3. Go to: [Github:Flathub](https://github.com/flathub/).
4. Open a terminal window from the component folder.
5. Clone the repo with clone `https://github.com/flathub/<Application>`
6. You will now a repo folder under `retrodeck/components/<Cloned Repo>`.

**Example:**

Make the folder:

`retrodeck/components/uzdoom`

Open a terminal window in 

`retrodeck/components/`.

Type:

```
git clone https://github.com/flathub/org.zdoom.uzdoom.git
```

You will now have two folders:

- `retrodeck/components/uzdoom`
- `retrodeck/components/org.zdoom.uzdoom`

---

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

---

### Step 2a: Compressed Artifact

If the flatpak has a premade compressed artifact you can just extract that to the structure under:

- `retrodeck/components/<artifact>`

**Example:**

- `retrodeck/components/uzdoom-artifact`

---

### Step 2b: Build with flatpak-builder

If there is no artifact you will need to build the it with: `flatpak-builder` into a new folder: `<Application>-build-dir`


```
git submodule init

git submodule update

flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=<Application>-repo "<Application>-build-dir" "<Application>.yaml" ## Input the <Application> sources

rm -rf <Application>-build-dir/files/lib/debug ## Remove debug files, the location could be diffrent
```

**Example:**

Go to: `retrodeck/components/org.zdoom.uzdoom`

Run the following:

```
git submodule init

git submodule update

flatpak-builder --user --force-clean --install-deps-from=flathub --install-deps-from=flathub-beta --repo=uzdoom-repo "uzdoom-build-dir" "org.zdoom.uzdoom.yaml"

rm -rf uzdoom-build-dir/files/lib/debug

```

---

## Step 3: Testing

During this step, identify and document the following components:

- **Binary**
- **Libraries**
- **Other important files**

To begin testing, try launching the binary from RetroDECK's Flatpak shell:

`flatpak run --command=bash net.retrodeck.retrodeck --debug`

While testing, make detailed notes on what works, what partially works, and what does not work at all. 

Fixing these issues will be addressed later during the **Alchemist and Hunter step**. 

**Example Considerations** 

Does the application report missing libraries? 

Does it crash at startup or during use? 

Are all expected features functioning correctly?

---

## Step 4: Creating Component: Ingredient & Recipe Files 

You now will need to move on to the next step:

**Read more here:** [Creating Component: Ingredient Files Guide](creating-components-ingredients-guide.md)

