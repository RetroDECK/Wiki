# ES-DE Development Guide

<img src="../../../wiki_images/logos/es-de-logo.png" width="75" alt="Es De logo">

In ES-DE all applications no matter what it is referred to as an **Emulator**.

In RetroDECK we use the neutral name of **Component**.

---

### ES-DE General Links

<img src="../../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

[ES-DE: Userguide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md)

[ES-DE: FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)

[ES-DE: Theme List](https://gitlab.com/es-de/themes/themes-list)

[ES-DE: Translations](https://gitlab.com/es-de/emulationstation-de/-/blob/master/TRANSLATIONS.md)

[ES-DE: Changelog](https://gitlab.com/es-de/emulationstation-de/-/blob/master/CHANGELOG.md) 

---

### ES-DE Development Links

<img src="../../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

[ES-DE: Gitlab](https://gitlab.com/es-de/emulationstation-de)

[ES-DE: Roadmap](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ROADMAP.md)

[ES-DE: Issues](https://gitlab.com/es-de/emulationstation-de/-/issues)

[ES-DE: Development Userguide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE-DEV.md)

[ES-DE: Development Install](https://gitlab.com/es-de/emulationstation-de/-/blob/master/INSTALL-DEV.md)


---

## RetroDECK Repository: RetroDECK/ES-DE

[RetroDECK/ES-DE](https://github.com/RetroDECK/ES-DE)

RetroDECK Maintains a very light fork of ES-DE with some customizations: 

- Adds and changes some main menu entries (Example: RetroDECK Configurator, ES-DE Configurations).
- Changes the default folder creation to match RetroDECKs structure.

The ES-DE Team is resposible for new features added into ES-DE, but the RetroDECK Team collaberates with them when needed.

---

## Where Are the ES-DE System XML Files in RetroDECK?

**Installed Locations**

| Installation | Location |
| :--- | :--- |
| **Flatpak - Local Install** | `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/retrodeck/components/es-de/share/es-de/resources/systems/linux/` |
| **Flatpak - System Install** | `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/share/es-de/resources/systems/linux/` |
| **User Symlink** | `~/.var/app/net.retrodeck.retrodeck/config/ES-DE/systems/` |


---

## RetroDECK: Injecting ES-DE XML Files via component_manifest.json

RetroDECK uses the `es_de_config` section of `component_manifest.json` to provide ES-DE with system definitions and emulator detection rules.

Instead of modifying ES-DE's built-in XML files directly, a component can declare the required configuration in its manifest. During the RetroDECK boot process, these definitions are processed and injected into the corresponding ES-DE configuration files.

For example, a component providing Cemu need to define both:

**`es_find_rules`** 

Tells ES-DE how to detect and locate the Cemu emulator.

**`es_systems`** 

Defines the **Emulator** (ES-DE terms), supported extension formats, launch command, platform and theme.

One difference between the RetroDECK configuration and ES-DE's native XML configuration is how file extensions are handled. The `extension` attribute only needs to contain **lowercase extensions**: RetroDECK automatically generates both lowercase and uppercase variants when passing the configuration to ES-DE.

**Example Cemu's `component_manifest.json`**

```
"es_de_config": {
  "es_find_rules": {
    "emulators": [
      {
        "name": "CEMU",
        "description": "Nintendo Wii U emulator Cemu",
        "rules": [
          {
            "type": "staticpath",
            "entries": [
              "%COMPONENT_PATH%/component_launcher.sh"
            ]
          }
        ]
      }
    ]
  },
  "es_systems": [
    {
      "name": "wiiu",
      "fullname": "Nintendo Wii U",
      "path": "%ROMPATH%/wiiu",
      "extension": ".elf .rpx .tmd .wua .wud .wuhb .wux",
      "commands": [
        {
          "label": "Cemu (Standalone)",
          "command": "%EMULATOR_CEMU% -g %ROM%",
          "priority": 10
        }
      ],
      "platform": "wiiu",
      "theme": "wiiu"
    }
  ]
}
```

### `retrodeck_manifest_cache.json`

The cache contains the processed manifest data used by RetroDECK during boot. All configuration injected during the RetroDECK boot process-including ES-DE rules, systems and their associated arguments-is also stored in `retrodeck_manifest_cache.json`.

The cache is located at:

`~/.var/app/net.retrodeck.retrodeck/cache/retrodeck/retrodeck_manifest_cache.json`


---

## es_find_rules.xml

The `es_find_rules.xml` file is used by ES-DE (EmulationStation Desktop Edition) to help it **find emulators** on your system.

---

### What does it do?

It defines **rules** that tell ES-DE where to look for:

- **Emulators** (like RetroArch, DOSBox, etc.)
- **Cores** (used by emulators like RetroArch)

| Rule Type     | What it does                                                                 |
|---------------|------------------------------------------------------------------------------|
| `systempath`  | Looks in your system's PATH (like typing a command in terminal)             |
| `staticpath`  | Looks in specific folders you define (absolute paths)                       |
| `corepath`    | Looks for emulator cores (used by RetroArch)                                |

---

### Examples of Entries: es_find_rules.xml

**PrimeHack**

```
  <emulator name="PRIMEHACK">
        <!-- PrimeHack, fork of Nintendo GameCube and Wii emulator Dolphin -->
        <rule type="systempath">
            <entry>primehack</entry>
            <entry>io.github.shiiion.primehack</entry>
        </rule>
        <rule type="staticpath">
            <entry>/var/lib/flatpak/exports/bin/io.github.shiiion.primehack</entry>
            <entry>~/.local/share/flatpak/exports/bin/io.github.shiiion.primehack</entry>
        </rule>
    </emulator>
```

---

**RetroArch**

```
    <core name="RETROARCH">
        <rule type="corepath">
            <entry>/app/share/libretro/cores</entry> <!-- RetroDECK -->
            <!-- Non-portable AppImage and compiled from source -->
            <entry>~/.config/retroarch/cores</entry>
            <!-- Portable AppImage -->
            <entry>~/Applications/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <entry>~/.local/share/applications/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <entry>~/.local/bin/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <entry>~/bin/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <!-- Flatpak package -->
            <entry>~/.var/app/org.libretro.RetroArch/config/retroarch/cores</entry>
            <!-- Snap package -->
            <entry>~/snap/retroarch/current/.config/retroarch/cores</entry>
            <!-- Ubuntu and Linux Mint repository -->
            <entry>/usr/lib/x86_64-linux-gnu/libretro</entry>
            <!-- Fedora repository -->
            <entry>/usr/lib64/libretro</entry>
            <!-- Manjaro repository -->
            <entry>/usr/lib/libretro</entry>
        </rule>
    </core>
```

---

## es_systems.xml

[`es_systems.xml` Documentation](https://gitlab.com/es-de/emulationstation-de/-/blob/master/INSTALL-DEV.md#es_systemsxml)

`es_systems.xml` is an ES-DE configuration file that defines how supported game systems are identified and handled.

---

### What does it include?

Each game system entry in the file defines:

- **System name** (short name)
- **Full name** (display name)
- **ROM path** (where your games are stored)
- **File extensions** (which game file types are allowed)
- **Launch command** (how to start the game)
- **Platform** (used for scraping game data)
- **Theme** (visual style)

---

### Wildcards are supported for binaries

**Example supported:**

```
<command>~/Applications/xemu*.AppImage %ROM%</command>
<command>~/Applications/xemu*.App* %ROM%</command>
```
**Example not supported:**

```
<command>~/App*/xemu*.AppImage %ROM%</command>
```

---

### Variable Reference Table

| Variable           | Description |
|--------------------|-------------|
| `%ROMPATH%`        | Path to your ROM folder, set in `es_settings.xml`. |
| `%ROM%`            | Full path to the selected ROM, with special characters escaped. |
| `%ROMRAW%`         | Same as `%ROM%`, but without escaping. Use this if your emulator is picky about paths. |
| `%ROMRAWWIN%`      | Like `%ROMRAW%`, but uses backslashes (`\`) instead of slashes (`/`). Not available on Windows. |
| `%BASENAME%`       | Just the name of the ROM file, without folder or extension. Example: `/games/sonic.rom` → `sonic`. |
| `%FILENAME%`       | Full name of the ROM file, including extension. Example: `/games/sonic.rom` → `sonic.rom`. |
| `%STARTDIR%`       | Sets the starting folder when launching the emulator. Useful for emulators like MAME. |
| `%INJECT%`         | Injects extra launch arguments from a text file. Can be combined with other variables like `%ROM%`. |
| `%EMUPATH%`        | Path to the emulator binary. Used to check if the emulator exists. |
| `%EMUDIR%`         | Folder where the emulator is located. General-purpose version of `%EMUPATH%`. |
| `%GAMEDIR%`        | Folder where the ROM is located. |
| `%GAMEDIRRAW%`     | Same as `%GAMEDIR%`, but without escaping characters. |
| `%ESPATH%`         | Path to the ES-DE application. Useful for portable setups. |
| `%EMULATOR_`       | Uses `es_find_rules.xml` to find the emulator. Recommended method. |
| `%CORE_`           | Uses `es_find_rules.xml` to find the emulator core. Recommended method. |
| `%PRECOMMAND_`     | Finds a pre-launch command (e.g., Wine). Should go before `%EMULATOR_`. |
| `%RUNINBACKGROUND%`| Keeps ES-DE running while the game is playing. Prevents screensavers and other interruptions. |
| `%HIDEWINDOW%`     | (Windows only) Hides the command window when launching a game. |
| `%ESCAPESPECIALS%` | (Windows only) Escapes special characters like `&()^=;` in `%ROM%`. |
| `%ENABLESHORTCUTS%`| (Unix/macOS only) Enables launching `.desktop` or `.app` shortcuts. Requires `%ROM%`. |

---

### Examples of Entries: es_systems.xml

**Sega Mark III**

```
    <system>
        <name>mark3</name>
        <fullname>Sega Mark III</fullname>
        <path>%ROMPATH%/mark3</path>
        <extension>.68k .68K .bin .BIN .bms .BMS .chd .CHD .col .COL .cue .CUE .gen .GEN .gg .GG .iso .ISO .m3u .M3U .md .MD .mdx .MDX .rom .ROM .sg .SG .sgd .SGD .smd .SMD .sms .SMS .7z .7Z .zip .ZIP</extension>
        <command label="Genesis Plus GX">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/genesis_plus_gx_libretro.so %ROM%</command>
        <command label="Genesis Plus GX Wide">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/genesis_plus_gx_wide_libretro.so %ROM%</command>
        <command label="SMS Plus GX">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/smsplus_libretro.so %ROM%</command>
        <platform>mastersystem</platform>
        <theme>mark3</theme>
    </system>
```

---

## `<platform>` to Scraper Mapping  

**Overview**

ES-DE uses the `<platform>` value in each system definition to determine which platform identifiers are supplied to its scrapers.

A system may specify one or more platform identifiers:

```
ES-DE system definition
        │
        ▼
<platform>pc, pcwindows</platform>
        │
        ▼
ES-DE platform identifiers
        │
        ├── pc
        └── pcwindows
        │
        ▼
Scraper-specific mapping
        │
        ├── ScreenScraper → systemeid
        └── GamesDB       → platform ID

```

The **comma-separated values** are ES-DE platform identifiers.

### Platform to ID List

| System | ES-DE Platform | ScreenScraper ID | GamesDB ID |
|---|---|---:|---:|
| 3DO Interactive Multiplayer | `3do` | 29 | 25 |
| Acorn Archimedes | `archimedes` | 84 | 4944 |
| Acorn Electron | `electron` | 85 | 4954 |
| Amstrad CPC | `amstradcpc` | 65 | 4914 |
| Android | `android` | 63 | 4916 |
| Apple II | `apple2` | 86 | 4942 |
| Apple IIGS | `apple2gs` | 217 | - |
| Apple Macintosh | `macintosh` | 146 | 37 |
| Arcade | `arcade` | 75 | 23 |
| Arcadia 2001 | `arcadia` | 94 | 4963 |
| Arduboy | `arduboy` | 263 | - |
| Atari 2600 | `atari2600` | 26 | 22 |
| Atari 5200 | `atari5200` | 40 | 26 |
| Atari 7800 | `atari7800` | 41 | 27 |
| Atari 800 | `atari800` | 43 | 4943 |
| Atari Jaguar | `atarijaguar` | 27 | 28 |
| Atari Jaguar CD | `atarijaguarcd` | 171 | 29 |
| Atari Lynx | `atarilynx` | 28 | 4924 |
| Atari ST | `atarist` | 42 | 4937 |
| Atari XE | `atarixe` | 43 | 30 |
| Atomiswave | `atomiswave` | 53 | 23 |
| Bally Astrocade | `astrocde` | 44 | 4968 |
| Bandai SuFami Turbo | `sufami` | 108 | 6 |
| Bandai WonderSwan | `wonderswan` | 45 | 4925 |
| Bandai WonderSwan Color | `wonderswancolor` | 46 | 4926 |
| BBC Micro | `bbcmicro` | 37 | 5013 |
| Bit Corporation Gamate | `gamate` | 266 | 5004 |
| Casio PV-1000 | `pv1000` | 74 | 4964 |
| ColecoVision | `colecovision` | 48 | 31 |
| Commodore 64 | `c64` | 66 | 40 |
| Commodore Amiga | `amiga` | 64 | 4911 |
| Commodore Amiga CD32 | `amigacd32` | 130 | 4947 |
| Commodore CDTV | `cdtv` | 129 | - |
| Commodore Plus/4 | `plus4` | 99 | 5007 |
| Commodore VIC-20 | `vic20` | 73 | 4945 |
| Creatronic Mega Duck | `megaduck` | 90 | 4948 |
| Daphne | `daphne` | 49 | 23 |
| DOS / PC | `dos` | 135 | 1 |
| Dragon 32 | `dragon32` | 91 | 4952 |
| EasyRPG | `easyrpg` | 231 | - |
| Epoch Super Cassette Vision | `scv` | 67 | - |
| Fairchild Channel F | `channelf` | 80 | - |
| FM-7 | `fm7` | 97 | 4978 |
| FM Towns | `fmtowns` | 253 | 4932 |
| Future Pinball | `fpinball` | 199 | - |
| Game Boy | `gb` | 9 | 4 |
| Game Boy Advance | `gba` | 12 | 5 |
| Game Boy Color | `gbc` | 10 | 41 |
| Game Master | `gmaster` | 103 | - |
| Game.com | `gamecom` | 121 | 4940 |
| Game & Watch | `gameandwatch` | 52 | 4950 |
| Genesis | `genesis` | 1 | 18 |
| Google Android | `android` | 63 | 4916 |
| Intellivision | `intellivision` | 115 | 32 |
| J2ME | `j2me` | 302 | 5018 |
| LCD Games | `lcdgames` | 75 | 4951 |
| LowRes NX | `lowresnx` | 244 | - |
| Lutro | `lutro` | 206 | - |
| Microsoft Windows | `pcwindows` | 138 | 1 |
| Microsoft Windows 3.x | `windows3x` | 136 | 1 |
| Microsoft Xbox | `xbox` | 32 | 14 |
| Microsoft Xbox 360 | `xbox360` | 33 | 15 |
| Microsoft Xbox One | `xboxone` | 34 | - |
| MSX | `msx` | 113 | 4929 |
| MSX2 | `msx2` | 116 | 4929 |
| MSX Turbo R | `msxturbor` | 118 | 4929 |
| Mega Duck | `megaduck` | 90 | 4948 |
| Neo Geo | `neogeo` | 142 | 24 |
| Neo Geo CD | `neogeocd` | 70 | 4956 |
| Neo Geo Pocket | `ngp` | 25 | 4922 |
| Neo Geo Pocket Color | `ngpc` | 82 | 4923 |
| NEC PC Engine | `pcengine` | 31 | 34 |
| NEC PC Engine CD | `pcenginecd` | 114 | 4955 |
| NEC PC-FX | `pcfx` | 72 | 4930 |
| NEC PC-8800 | `pc88` | 221 | 4933 |
| NEC PC-9800 | `pc98` | 208 | 4934 |
| NEC SuperGrafx | `supergrafx` | 105 | 34 |
| Nintendo 3DS | `n3ds` | 17 | 4912 |
| Nintendo 64 | `n64` | 14 | 3 |
| Nintendo DS | `nds` | 15 | 8 |
| Nintendo Entertainment System | `nes` | 3 | 7 |
| Nintendo Famicom | `famicom` | 3 | 7 |
| Nintendo Famicom Disk System | `fds` | 106 | 4936 |
| Nintendo Game Boy | `gb` | 9 | 4 |
| Nintendo Game Boy Advance | `gba` | 12 | 5 |
| Nintendo Game Boy Color | `gbc` | 10 | 41 |
| Nintendo GameCube | `gc` | 13 | 2 |
| Nintendo Game & Watch | `gameandwatch` | 52 | 4950 |
| Nintendo Pokémon Mini | `pokemini` | 211 | 4957 |
| Nintendo Satellaview | `satellaview` | 107 | 6 |
| Nintendo Super Game Boy | `sgb` | 127 | 4 |
| Nintendo Switch | `switch` | 225 | 4971 |
| Nintendo Virtual Boy | `virtualboy` | 11 | 4918 |
| Nintendo Wii | `wii` | 16 | 9 |
| Nintendo Wii U | `wiiu` | 18 | 38 |
| Nokia N-Gage | `ngage` | 30 | 4938 |
| Odyssey² / Videopac | `odyssey2` | 104 | 4927 |
| OpenBOR | `openbor` | 214 | - |
| Oric | `oric` | 131 | 4986 |
| Palm OS | `palm` | 219 | - |
| PC | `pc` | 135 | 1 |
| PC-88 | `pc88` | 221 | 4933 |
| PC-98 | `pc98` | 208 | 4934 |
| PICO-8 | `pico8` | 234 | - |
| Philips CD-i | `cdimono1` | 133 | 4917 |
| PlayStation | `psx` | 57 | 10 |
| PlayStation 2 | `ps2` | 58 | 11 |
| PlayStation 3 | `ps3` | 59 | 12 |
| PlayStation 4 | `ps4` | 60 | 4919 |
| PlayStation Portable | `psp` | 61 | 13 |
| PlayStation Vita | `psvita` | 62 | 39 |
| SAM Coupé | `samcoupe` | 213 | 4979 |
| ScummVM | `scummvm` | 123 | 1 |
| Sega 32X | `sega32x` | 19 | 33 |
| Sega CD | `segacd` | 20 | 21 |
| Sega Dreamcast | `dreamcast` | 23 | 16 |
| Sega Game Gear | `gamegear` | 21 | 20 |
| Sega Genesis | `genesis` | 1 | 18 |
| Sega Master System | `mastersystem` | 2 | 35 |
| Sega Mega Drive | `megadrive` | 1 | 36 |
| Sega NAOMI | `naomi` | 56 | 23 |
| Sega Pico | `segapico` | 250 | 4958 |
| Sega Saturn | `saturn` | 22 | 17 |
| Sega SG-1000 | `sg-1000` | 109 | 4949 |
| Sharp X1 | `x1` | 220 | 4977 |
| Sharp X68000 | `x68000` | 79 | 4931 |
| Sinclair ZX Spectrum | `zxspectrum` | 76 | 4913 |
| Sinclair ZX81 | `zx81` | 77 | 5010 |
| Solarus | `solarus` | 223 | - |
| Spectravideo | `spectravideo` | 218 | - |
| SNES | `snes` | 4 | 6 |
| SNES MSU-1 | `snes-msu1` | 210 | - |
| Super Nintendo | `snes` | 4 | 6 |
| Supervision | `supervision` | 207 | 4959 |
| Tandy Color Computer | `coco` | 144 | 4941 |
| Tandy TRS-80 | `trs-80` | 144 | 4941 |
| Texas Instruments TI-99 | `ti99` | 205 | 4953 |
| Thomson MO/TO | `moto` | 141 | - |
| TIC-80 | `tic80` | 222 | - |
| Tiger Game.com | `gamecom` | 121 | 4940 |
| Uzebox | `uzebox` | 216 | - |
| Valve Steam | `steam` | 138 | 1 |
| Vectrex | `vectrex` | 102 | 4939 |
| Vircon32 | `vircon32` | 272 | - |
| Visual Pinball | `vpinball` | 198 | - |
| VTech CreatiVision | `crvision` | 241 | 5005 |
| VTech V.Smile | `vsmile` | 120 | 4988 |
| Watara Supervision | `supervision` | 207 | 4959 |
| WASM-4 | `wasm4` | 262 | - |
| Windows 3.x | `windows3x` | 136 | 1 |
| WonderSwan | `wonderswan` | 45 | 4925 |
| WonderSwan Color | `wonderswancolor` | 46 | 4926 |
| Xbox | `xbox` | 32 | 14 |
| Xbox 360 | `xbox360` | 33 | 15 |
| Xbox One | `xboxone` | 34 | - |
| Z-machine | `zmachine` | 215 | - |
| ZX Spectrum | `zxspectrum` | 76 | 4913 |
| ZX81 | `zx81` | 77 | 5010 |

---

### When the Platform Is Not Known

When adding a new component to RetroDECK that is not yet recognized by **ScreenScraper** or **TheGamesDB**, there may be no dedicated platform identifier available.

In these cases, use a broader, compatible platform in `component_manifest.json`.

**For example:**

- `pc`
- `pcwindows`
- `arcade`

Using a broader platform increases the chance that games will already have metadata available from ScreenScraper or TheGamesDB, or that metadata can be added to an existing platform in the future. 

This allows RetroDECK to make use of existing metadata platforms while still supporting components that do not have their own dedicated platform identifier.

**Examples of components that do not have a dedicated ES-DE platform:**

- **Quake 3** - `"platform": "pc, pcwindows"`
- **Doom 3** - `"platform": "pc, pcwindows"`
- **Mudlet** - `"platform": "pc, pcwindows, dos, zmachine, c64, amiga"` - Mudlet can use a broader platform scope because the games supported by it can ran across multiple modern and retro computer platforms.

---


