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


**Keys:** `~/retrodeck/bios/switch/keys`

**Firmware:** `~/retrodeck/bios/switch/registered`

The directory tree should look like this example:

```
~/retrodeck/bios/switch
├── keys
│   ├── prod.keys
│   └── title.keys
└── registered
    ├── 02259fd41066eddbc64e0fdd217d9d2f.nca
    ├── 02582a2cd46cc226ce72c8a52504cd97.nca
    ├── 02b1dd519a6df4de1b11871851d328a1.nca
    ├── other 217 files...
    └── fd0d23003ea5602c24ac4e41101c16fd.nca
```
