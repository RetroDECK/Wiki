# Yuzu - General Guide (Legacy)

<img src="../../../wiki_images/logos//yuzu-logo.svg" width="150">

**Note:** 

Yuzu was a Switch emulator and was removed as part of the `0.8.0b` update.

It can still be temporarily installed via:

[Ponzu](../../wiki_configurator/ponzu.md)

## Where to put the games?

Switch games should be put into the `retrodeck/roms/switch/` directory.

## What file formats are supported?

```
.xci
.nsp
.nca
.nso
.nro
```

## Does Yuzu require BIOS or Firmware?

Yes, `prod.keys` `title.keys` and `.nca` files.

### Where to put the firmware files?

Needs the key files `prod.keys`, `title.keys` and the firmware files in the following directories:

**Keys:** `~/retrodeck/bios/switch/keys`

**Firmware:** `~/retrodeck/bios/switch/registered`

The directory tree should look like this example:

```
~/retrodeck/bios/switch
├── keys
│   ├── prod.keys
│   └── title.keys
└── registered
    └── XXX amount of .nca files goes here
```

## How do I install DLC and Updates?

**Requirements:** Patch or DLC files <br>

**NOTE:** On the Steam Deck this could be easier to do in `Desktop Mode`.

1. Extract any patch or dlc files from compressed `.zip` or any other format to the true files.
2. Open Yuzu from inside `RetroDECK Configurator` by pressing `Open Emulator` - `Yuzu`.
3. Press `File` - `Install Files to NAND`
4. Find a DLC or Patch file from the file browser and press `Open`
5. This will install the DLC or Patch file into the games NAND folder inside of Yuzu.
6. Repeat step 2 to 3 for every file you need to install.
7. Quit Yuzu
8. Start RetroDECK and select the game you want to play.

## How do I add shader caches?

**Requirements:** Shader cache files <br>

**NOTE:** On the Steam Deck this could be easier to do in `Desktop Mode`.

1. Extract any shader cache files from compressed `.zip` or any other format to folders.
2. Open Yuzu from inside `RetroDECK Configurator` by pressing `Open Emulator` - `Yuzu`.
3. Right click on the game you want to add mods into.
4. Click on `Open Transferable Pipeline Cache`.
5. Paste the files inside that directory.
6. Start RetroDECK and select the game.

