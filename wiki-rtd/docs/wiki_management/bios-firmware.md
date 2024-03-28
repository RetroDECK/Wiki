# How to: Manage BIOS and Firmware

<img src="../../wiki_icons/pixelitos/cpu.png" width="50">

A BIOS or firmware is like the brain of a computer or electronic device. It helps the device start up and makes sure all its parts work together smoothly. In emulation, having the correct BIOS/firmware is important because it allows the software to pretend to be the real device and work properly.

That's why some emulators require BIOS and Firmware files to work correctly or at all.

Generally the bios files should be put in `~/retrodeck/bios` but there could be exceptions to this.

##  RetroArch (Libretro)

Some cores may need some BIOS files to work or run correctly.
[Official Libretro BIOS Guide](https://docs.libretro.com/guides/bios/)

## Ryujinx / Yuzu (Legacy)

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

## XEMU (Xbox)

These files must be placed with the correct name in the given folders:

```
~/retrodeck/bios/mcpx_1.0.bin'
~/retrodeck/bios/Complex.bin'
~/retrodeck/saves/xbox-eeprom.bin'
[OPTIONAL] ~/retrodeck/bios/xbox_hdd.qcow2'
```

The hard disk is optional as RetroDECK already provides a pre-built 8G Xbox HDD empty image with a dummy dashboard.

## MelonDS (Standalone)

MelonDS needs the following files:

```
~/retrodeck/bios/bios9.bin
~/retrodeck/bios/bios7.bin
~/retrodeck/bios/firmware.bin
```

## PCSX2 (PS2)

There a multitude of PS2 bios for a complete list with the hashes check <br>

[Gametechwiki](https://emulation.gametechwiki.com/index.php/File_hashes#Known_BIOS_Hashes)

The PS2 bios could be named in the following ways
<br>
By bios version: `ps2-0200a-20040614.bin`
<br>
By system name:`SCPH-70012.bin`

Put the bios inside the bios folder: `~/retrodeck/bios/SCPH-70012.bin`

Here is a list of common used bios with  `bios versions/system names/hashes`.

```
ps2-0200a-20040614 - SCPH-70001/SCPH-70011/SCPH-70012 - d333558cc14561c1fdc334c75d5f37b7 -PS2 US BIOS
ps2-0200e-20040614 - SCPH-70002/SCPH-70003/SCPH-70004/SCPH-70008 - dc752f160044f2ed5fc1f4964db2a095 - PS2 EU BIOS
ps2-0200j-20040614 - SCPH-70000 - 0eee5d1c779aa50e94edd168b4ebf42e - PS2 JP BIOS
```

## RPCS3 (PS3)

- Download the [latest PlayStation 3 firmware](https://www.playstation.com/en-us/support/hardware/ps3/system-software/).
- `Tools` -> `RetroDECK Configurator` -> `Change settings` -> `RPCS3` -> `File` -> `Install Firmware`.

For more information on how to load the games check the [official quickstart guide](https://rpcs3.net/quickstart).

## NeoGeo

- `neogeo.zip`

Should go into the `~/retrodeck/roms/neogeo/` folder and the `~/retrodeck/bios` folder. Depending on what emulator you use, the emulator looks for the BIOS in different directories. So the safest way it to just copy the BIOS and put it into both places.
