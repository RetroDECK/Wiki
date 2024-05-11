# Ryujinx - General Guide

<img src="../../../wiki_images/logos/ryujinx-logo.svg" width="150">

### Ryujinx Links:

[Ryujinx Configuraton Guide](https://github.com/Ryujinx/Ryujinx/wiki/Ryujinx-Setup-&-Configuration-Guide)

[Ryujinx Wiki](https://github.com/Ryujinx/Ryujinx/wiki)

[Ryujinx Github](https://github.com/Ryujinx/Ryujinx)

[Ryujinx Webpage](https://ryujinx.org/)


## Where to put the games?
Switch games should be put into the `retrodeck/roms/switch/` directory.<br>
The games can come in many different formats: `XCI` `NSP` `NCA` `NSO` `NRO`.

## How-to Open the Ryujinx interface?

`RetroDECK Configurator` ->  `Open Emulator` -> `Ryujinx`

## Does Ryujinx require BIOS or Firmware?

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

It also have installation requirements

### How-to: Install the firmware

Ryujinx also requires the firmware to be installed via `RetroDECK Configurator` ->  `Open Emulator` -> `Ryujinx` ->  `Tools` -> `Install Firmware` -> `Install from XCI or ZIP`

Read more on: [Ryujinx Configuraton Guide](https://github.com/Ryujinx/Ryujinx/wiki/Ryujinx-Setup-&-Configuration-Guide)

### Notice: Do not mix and match versions firmware and keys

The installed firmware must have have the same version at your keys and .nca files, you can't mix and match as that can lead to crashes and black screens!

You need to make sure that the keys and firmware are from the same version.

Generally do not install the firmware from games. Instead provide your own firmware and keys from your own device.

## Add game patches

From within Ryujinx `Right Click` on a game and select `Manage Title Updates` and then navigate to the update files you would like to install and press `Save`.

Read more on: [Ryujinx Configuraton Guide](https://github.com/Ryujinx/Ryujinx/wiki/Ryujinx-Setup-&-Configuration-Guide)


## Add DLC

From within Ryujinx `Right Click` on a game and select `Manage DLC` and then navigate to the update files you would like to install and press `Save`.

Read more on: [Ryujinx Configuraton Guide](https://github.com/Ryujinx/Ryujinx/wiki/Ryujinx-Setup-&-Configuration-Guide)


## Open Menu - Hotkey

Ryujinx has a very little capabilities for hotkeys currently. The key to Open the Ryujinx Menu is `F4` and you can access it on the radial menus on the Steam Deck or External Controllers.
