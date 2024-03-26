# Ryujinx - General Guide

<img src="../../../wiki_images/logos/ryujinx-logo.svg" width="150">

### Yuzu Links:

[Ryujinx Guide](https://github.com/Ryujinx/Ryujinx/wiki/Ryujinx-Setup-&-Configuration-Guide)

[Ryujinx Wiki](https://github.com/Ryujinx/Ryujinx/wiki)

[Ryujinx Github](https://github.com/Ryujinx/Ryujinx)

[Ryujinx Webpage](https://ryujinx.org/)


## Where to put the games?
Switch games should be put into the `retrodeck/roms/switch/` directory.<br>
The games can come in many different formats: `XCI` `NSP` `NCA` `NSO` `NRO`.

WIP

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
