# PCSX2 - General Guide

<img src="../../../wiki_images/logos/pcsx2-logo.png" width="180">

### PCSX2 Links:

[PCSX2 Documentation](https://pcsx2.net/docs/)

[PCSX2 Website](https://pcsx2.net/)

[PCSX2 Github](https://github.com/PCSX2/pcsx2)

[PCSX2 Compability List](https://pcsx2.net/compat/)

## Where to put the games

Playstation 2 games should be put under the `retrodeck/roms/ps2/` directory.

PCSX2 supports the following formats: `ISO` `BIN with CUE files` `CHD`


## Does PCSX2 require BIOS or Firmware?

Yes, they need to be put directly into the `retrodeck/roms/bios/` without any subfolder.


## How to enable/disable Multitap?

Multitap is a way to have up to 8 players on the Playstation 2, by hooking 4 players in each controller port.
Most games do not support this feature and some might not even work with it enabled.
RetroDECK has this disabled by default.

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `Controllers` -> `Controller Multitap`
3. Enable/disable Multitap by clicking the checkbox for either Port 1, Port 2 or both.
4. Several new controllers called 1A to 1D and 2A to 2D will be enabled to map.

## Configure language

### PCSX2 Interface

Normally it should follow your system locale if supported by PCSX2

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `Interface` -> `Interface`
3. Under `Preferences` you can change the language from the drop-down menu.
4. Close `PCSX2`.

### For the BIOS / Games

1. Open the Configurator and open `PCSX2`.
2. Go to `Settings` -> `BIOS`
3. Under `Options and Patches` uncheck `Fast Boot` and close the menu.
4. Go to `System` -> `Start BIOS` to open the BIOS.
5. Within the BIOS navigate to `System Configuration` -> `Language` and change the language.
6. Close the BIOS go back to `Settings` -> `BIOS` -> `Options and Patches` and check `Fast Boot` checkbox again.
7. Close `PCSX2`.
