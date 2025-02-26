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

## How-to: Get games to show up inside the ES-DE Frontend

**Example:** <br>

In this example we got a game we want to add: `OutWipe 4820`

### Step 1: Install the Game

Open the Vita3K emulator via Configurator and press `File` and either `Install .pkg` or `Install .zip, .vpk` depending on what game file you have.

In our example `OutWipe 4820` is a `.pkg` file so we chose the `Install .pkg` option and navigate to the file to install it.

#### Step 1b: Add Licences

During installation the Vita3K could call for a Licence File or Key

Either add the `.bin` or `.rif` files or input the `zRif` key in the prompt.

#### Step 1c: Install any DLCs or patches

Install the patches and DLC the same way as the game by repeating Step 1 to 1b for the filetype the patch/DLC is in `pkg`, `zip`, `vpk`.

### Step 2: Check the Title ID of the game

<img src="../../../wiki_images/emulators/vita3k/vita3k-titleid.png">

In the Vita3K interface the third colum you can see the Title ID of the game you just installed. 

You can also check [Vita3K Game Compatibility and ID List](https://vita3k.org/compatibility.html?lang=en).

In our example we find out that the Title ID of `OutWipe 4820` is `PCSF00007`

### Step 3: Create the .psvita file

- The `.psvita` file starts as a empty textfile that needs to be created in roms folder `retrodeck/roms/psvita/`
- Name the file `<gamename>.psvita`
- In our example the file will be called `OutWipe 4820.psvita`

The end result should look like:

`retrodeck/roms/psvita/OutWipe 4820.psvita`

### Step 4: Open the pstvita file and add the Title ID

Open up the empty `OutWipe 4820.psvita` file and just type in the `<Title_ID>` in the first row of the file and save, in this example you enter `PCSF00007`.<br>
Make sure you don't add any spaces or linebreaks and the file should just contain the word `PCSF00007`.

### Step 5: The game should now run

The game should now be added to the ES-DE interface from the `retrodeck/roms/psvita/OutWipe 4820.psvita` file you just created and can be played after you reload RetroDECK from the Configurator or re-launch the application.

### Step 6: Cleanup

The game is now installed, so if wished, the package file can be deleted, only the `.psvita` file is needed at this point.
