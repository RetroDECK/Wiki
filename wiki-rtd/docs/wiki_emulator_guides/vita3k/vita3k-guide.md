# Vita3K - General Guide

<img src="../../../wiki_images/logos/vita3k-logo.png" width="75">

Vita3K is an experimental open-source Sony PlayStation Vita emulator.

---

### Vita3K Links:
[Vita3K Quickstart Guide](https://vita3k.org/quickstart.html)

[Vita3K Game Compatibility and ID List](https://vita3k.org/compatibility.html?lang=en)

[Vita3K Homebrew Compatibility and ID List](https://vita3k.org/compatibility-homebrew.html)

[Vita3K Wiki](https://github.com/Vita3K/Vita3K/wiki)

[Vita3K Github](https://github.com/Vita3K/Vita3K)

[Vita3K Webpage](https://vita3k.org/)

---

## Where to put the games?

Vita3K games should be put into the `retrodeck/roms/psvita/` directory.

## What file formats are supported?

| File Format | Description |
|-------------|-------------|
| .psvita        | PSVita file |

## Does Vita3K require BIOS or Firmware?

Yes, it requires two firmwares. 

It also requires licence and keys files play games.

### Firmware files

- The Firmware: `PSVUPDAT.PUP`
- The Firmware Font Package: `PSP2UPDAT.PUP`

The firmware and font firmware can be downloaded and installed from the RetroDECK Configurator.

You can also install them manually:

- [Sony PSVita Firmware](https://www.playstation.com/en-us/support/hardware/psvita/system-software/)
- [Sony PSVita Firmware Font Package](https://dus01.psp2.update.playstation.net/update/psp2/image/2022_0209/sd_59dcf059d3328fb67be7e51f8aa33418/PSP2UPDAT.PUP?dest=usand)

Open Vita3K from the Configurator and press `File - Install Firmware` to install the downloaded firmware.

### Licence Files and Keys

Licence files `.bin` `.rif` or licence keys called a `zRif` are required for many games.

They need to be installed by pressing `File - Install Licence` then either `Select work.bin / rif` for the files or `Enter zRif` to input the key.

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| ROMs Folder |`retrodeck/roms/psvita/` |                               |  
| Saves Folder |`retrodeck/saves/psvita/vita3k/` |                               |                             |  
| Config Folder |`~/.var/app/net.retrodeck.retrodeck/config/Vita3K/`         | `config.yml` |
| Data Folder |`~/.var/app/net.retrodeck.retrodeck/data/Vita3K/`         | |

## How-to: Get games to show up inside RetroDECK

**Example:** <br>

In this guide will have an example fake game we want to add: `OutWipe 4820`.

### Step 1: Install the Game

1. Open the Vita3K emulator via Configurator
2. Press `File` and either: `Install .pkg` or `Install .zip, .vpk` (depending on what game file you have).
3. The game is now installed, if so wished, the package file can be deleted, only the `.psvita` file is needed at this point.

**Example:**

`OutWipe 4820` is a `.pkg` file so we chose the `Install .pkg` option and navigate to where we have the file on the system to install it.



#### Step 1b: Add Licences

During installation the Vita3K could call for a Licence File or Key

Either add the `.bin` or `.rif` files or input the `zRif` key in the prompt.

#### Step 1c: Install any DLCs or patches

Install the patches and DLC the same way as the game by repeating Step 1 to 1b for the filetype the patch/DLC is in `pkg`, `zip`, `vpk`.

### Step 2: How-to: Get the Title ID

<img src="../vita3k-titleid.png" width="800">

1. Open the Vita3K emulator via Configurator
2. The third column contains the `Title ID` of the game you just installed (this is unique to every game).

Another method is to check the: [Vita3K Game Compatibility and ID List](https://vita3k.org/compatibility.html?lang=en).

**Example:**

`OutWipe 4820` Title ID is `PCSF00007`

### Step 3: Create the .psvita file

1. Create a new empty `.psvita` file in `retrodeck/roms/psvita/` 
2. Name it according to your game: `GameNameHere.psvita` (in our example the file will be called `OutWipe 4820.psvita`). 
3. The end result should look like: `retrodeck/roms/psvita/OutWipe 4820.psvita`.

### Step 4: Open the pstvita file and add the Title ID

<img src="../psvita-kate.png" width="800">


1. Open up the empty `GameNameHere.psvita` file with the text editor.
2. Type in the `Title ID`the the first row. Make sure you don't add any spaces or line-breaks and the file should just contain the `Title ID`.

**Example:**

Open up the empty`OutWipe 4820.psvita` file with the text editor and just type in the `Title ID` in the first row of the file and save, in this example you enter `PCSF00007`.


### Step 5: Quit and Launch RetroDECK

1. Close Vita3k, RetroDECK Configurator and RetroDECK.
2. Open RetroDECK again.
3. The game should now be added to the ES-DE frontend and be able to be played. 
