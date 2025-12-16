# Vita3K - General Guide

<img src="../../../wiki_images/logos/vita3k-logo.png" width="75">

Vita3K is an experimental open-source Sony PlayStation Vita emulator.

---

### Vita3K Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| Vita3K - Game Compatibility and ID List | [Link](https://vita3k.org/compatibility.html?lang=en) |
| Vita3K - Github | [Link](https://github.com/Vita3K/Vita3K) |
| Vita3K - Homebrew Compatibility and ID List | [Link](https://vita3k.org/compatibility-homebrew.html) |
| Vita3K - Quickstart Guide | [Link](https://vita3k.org/quickstart.html) |
| Vita3K - Webpage | [Link](https://vita3k.org/) |
| Vita3K - Wiki | [Link](https://github.com/Vita3K/Vita3K/wiki) |

---

## Where to put the games?

Vita3K games should be put into the `retrodeck/roms/psvita/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .psvita        | PSVita file |

---

## Does Vita3K require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, it requires firmware. 

It also requires license and keys files play games.

### Firmware files

| File | Description |
|------|-------------|
| `PSVUPDAT.PUP` | Main PSVita system firmware. |
| `PSP2UPDAT.PUP` | Firmware font package required for proper UI rendering. |

**Install Vita3K firmware from RetroDECK Configurator**

1. Open Vita3K `RetroDECK Configurator` - `RetroDECK: Tools` - `Install: Vita3K Firmware`.
2. Press `OK` and this will download the Vita3K Firmware.

**Manual Download**

You can also install them manually:

- [Sony PSVita Firmware](https://www.playstation.com/en-us/support/hardware/psvita/system-software/)
- [Sony PSVita Firmware Font Package](https://dus01.psp2.update.playstation.net/update/psp2/image/2022_0209/sd_59dcf059d3328fb67be7e51f8aa33418/PSP2UPDAT.PUP?dest=usand)

Open Vita3K from the Configurator and press `File - Install Firmware` to install the downloaded firmware.

### Licence Files and Keys

To play many commercial PSVita games, Vita3K requires license files or keys:

| Type | Description | Installation Method |
|------|-------------|-------------------|
| `.bin` / `.rif` | Standard license files for purchased games | `File → Install License → Select work.bin / .rif` |
| `zRif` | License key for some digital games | `File → Install License → Enter zRif` |

**Note:** Make sure the license files or zRif keys match the game you intend to play. Incorrect files will prevent the game from launching.

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/psvita/` |                               |  
| Saves Folder |`retrodeck/saves/psvita/vita3k/` |                               |                             |  
| Texture Packs Folder |`retrodeck/texture_packs/Vita3K/import` |                               |        Vita3K/ux0/textures/import                     |  
| Vita3K App Folder |`retrodeck/storage/Vita3K/ux0/app/` |                               |        Vita3K/ux0/app/                     |  
| Vita3K Lang Folder |`retrodeck/storage/Vita3K/lang` |                               |        Vita3K/lang                     |  
| Vita3K Patch Folder |`retrodeck/storage/Vita3K/patch` |                               |        Vita3K/patch                     |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/Vita3K/`         | `config.yml` |
| Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/Vita3K/`         | |

---

### How-to: Get the Title ID

<img src="../vita3k-titleid.png" width="800">

1. Open the Vita3K emulator via Configurator
2. The third column contains the `Title ID` of the game you just installed (this is unique to every game).

Another method is to check the: [Vita3K Game Compatibility and ID List](https://vita3k.org/compatibility.html?lang=en).

**Example:**

`Tales of Innocence R` Title ID is `PCSG00009`

---

## Getting Games to Show Up in RetroDECK

This guide uses **Tales of Innocence R** as an example.
Before starting, make sure you know how to obtain the game’s **Title ID** above.

### Step 1: Install the Game

Open the **Vita3K** emulator through the RetroDECK Configurator.

Go to **File** and choose the appropriate install option:

- **Install .pkg**
- **Install .zip, .vpk**
   
After installation, you may delete the original package file if desired. Only the installed game files (and later the `.psvita` file) are needed.

**Example:**

*Tales of Innocence R* is a `.pkg` file, so select **Install .pkg** and navigate to its location.

---

#### Step 1a: Add Licences

If Vita3K prompts for a **license file** or **key**, provide one of the following:

- A `.bin` or `.rif` license file  
- A valid **zRif** key entered directly into the prompt

---

#### Step 1b: Install DLCs and Patches

Install DLC and game patches the same way as the base game by repeating **Step 1-1b** using their corresponding file type:

• `.pkg`
• `.zip`
• `.vpk`

### Step 2: Create the .psvita File

1. Create a new **empty** `.psvita` file inside: `retrodeck/roms/psvita/`
2. Name the file after your game title (avoid special characters such as `/ \ () [] < > , .`).  
3. The final path should look like: `retrodeck/roms/psvita/<GameNameHere>.psvita`

**Example:**

`retrodeck/roms/psvita/Tales of Innocence R.psvita`

### Step 3: Add the Game’s Title ID

<img src="../psvita-kate.png" width="800">

1. Open the newly created `.psvita` file in a text editor.
2. In the first line, type the **Title ID only** no spaces, no extra lines.

**Example:**
The file `Tales of Innocence R.psvita` contains:

` PCSG00009` 

### Step 4: Restart RetroDECK

1. Close **Vita3K**, the **RetroDECK Configurator**, and **RetroDECK** itself.
2. Relaunch **RetroDECK**.
3. Your game should now appear in the **ES-DE** frontend and be playable.

---

## Adding Texture Packs

Follow these steps to install custom textures for your games in Vita3K.

This guide uses **Tales of Innocence R** as an example.
Before starting, make sure you know how to obtain the game’s **Title ID** above.

### Step 1: Preparing the Texture Packs Folder

Place your **downloaded texture pack folder**, the one containing the actual texture files into:

`retrodeck/texture_packs/Vita3K/import/`

Ensure the **folder name matches the games TITLE ID**. 

**Directory structure example:**

`retrodeck/texture_packs/Vita3K/import/<TITLE ID>/<TEXTURES>`

**Tales of Innocence R example:**

`retrodeck/texture_packs/Vita3K/import/PCSG00009/<Tales of Innocence R TEXTURES>`

### Step 2: Importing Textures

Open **Vita3K** within the RetroDECK Configurator.

**Global**

1. Go to **Configuration → Settings → GPU → Texture Replacement**.
2. Set **Import Textures** to `Enable`.
3. Select **Save and Exit** to apply the changes.

**Per-Game**

1. Right-click a game inside Vita3K.
2. Choose **Custom Config → Create → GPU → Texture Replacement**.
3. Set **Import Textures** to `Enable`.
4. Select **Save and Exit** to apply the changes.

---

## Configuring Language Settings

### Vita3K GUI Language

1. Open **Vita3K** via the **RetroDECK Configurator**.  
2. Go to **Configuration → Settings → GUI**.
3. Set **GUI Language** to your preferred language.
4. Close **Vita3K**.

### In-Game Language

1. Open **Vita3K** via the **RetroDECK Configurator** and launch the **🧰 Settings** app.
2. Go to **Language → System Language** and select your preferred language.
3. Close **Vita3K**.

---
