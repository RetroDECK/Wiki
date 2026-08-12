# Flycast - General Guide

<img src="../../../wiki_images/logos/Flycast-logo.png" width="100" alt="Flycast logo">

Flycast is a emulator for SEGA Dreamcast, Sammy Corporation Atomiswave, Sega NAOMI, Sega NAOMI II and Sega NAOMI GD-ROM.


---

### Flycast Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Flycast - Github | [Link](https://github.com/flyinghead/flycast) |
| Flycast - Website | [Link](https://flycast.org/) |


---


## Where to put the games?

Games should be put under:

| System | ROM directory | Comments |
|---|---|---|
| Dreamcast | `retrodeck/roms/dreamcast/` |  |
| Atomiswave | `retrodeck/roms/atomiswave/` | |
| NAOMI | `retrodeck/roms/naomi/` | |
| NAOMI 2 | `retrodeck/roms/naomi2/` | |
| NAOMI GD | `retrodeck/roms/naomigd/` | |

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| `.cdi` | DiscJuggler disc image |
| `.chd` | Compressed Hunks of Data **(Recommended)** |
| `.cue` | Cue sheet describing a disc image |
| `.dat` | Data file containing game or system information |
| `.elf` | Executable and Linkable Format executable |
| `.gdi` | GD-ROM disc image  |
| `.iso` | Standard ISO disc image |
| `.lst` | List file used to define or reference game files |
| `.m3u` | Playlist file used for multi-disc games |
| `.7z` | 7-Zip compressed archive |
| `.zip` | ZIP compressed archive |

---

## Does Flycast require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes 

| System | BIOS File | Description |
|---|---|---|---|
| Dreamcast | `dc_boot.bin` | Dreamcast BIOS |
| NAOMI | `naomi.zip` | NAOMI BIOS | 
| NAOMI | `naomi_boot.bin` | NAOMI boot BIOS | 
| NAOMI 2 | `naomi2.zip` | NAOMI 2 BIOS | 
| Atomiswave | `awbios.zip` | Atomiswave BIOS | 

Some NAOMI games require additional BIOS files:

| BIOS File | Game/System |
|---|---|---|
| `hod2bios.zip` | The House of the Dead 2 | 
| `f355dlx.zip` | Ferrari F355 Challenge Deluxe | 
| `f355bios.zip` | Ferrari F355 Challenge Twin/Deluxe | 
| `airlbios.zip` | Airline Pilots Deluxe | 



### Where to put the Flycast BIOS?

Directly into the folder

`retrodeck/bios/`

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type          | Directory                                         | Comment                                                   |
|:-------------:|:--------------------------------------------------|:----------------------------------------------------------|
| BIOS          | `retrodeck/bios/`                                 |                                                          |
| Boxart        | `retrodeck/storage/Flycast/boxart/`               |                                                          |
| Cheats        | `retrodeck/cheats/Flycast/cheats/`                |                                                          |
| ROMs          | `retrodeck/roms/dreamcast/` `retrodeck/roms/atomiswave/` `retrodeck/roms/naomi/` `retrodeck/roms/naomi2/` `retrodeck/roms/naomigd/` |                                                          |
| Saves         | `retrodeck/saves/dreamcast/Flycast/saves/`        |                                                          |
| Saves VMU     | `retrodeck/saves/dreamcast/Flycast/VMU/`          |                                                          |
| States        | `retrodeck/states/dreamcast/Flycast/`             |                                                          |
| Texture Dump  | `retrodeck/storage/Flycast/TextureDump/`          |                                                          |
| Textures      | `retrodeck/texture_packs/Flycast/Textures/`       |                                                          |




---

## How-to: Add Texture Packs

The `retrodeck/texture_packs/Flycast/Textures/` directory corresponds to Flycast's `/Flycast/data/Textures` directory.

Custom textures are enabled by default in RetroDECK.

### Enable Custom Textures

If custom textures have been disabled:

1. Open **RetroDECK Configurator**.
2. Select **Open Component** → **Emulator** → **Flycast**.
3. Open **Settings** → **Video**.
4. Set **Load Custom Textures** to **On**.
5. Set **Preload Custom Textures** to **On**.

### Add Textures

**Note:** Texture packs may be designed for a specific game version or region. Make sure the texture pack matches your game.

**Note:** `TITLEID` is unique to each game. Check a reliable online resource to find the correct ID.

1. Extract the texture pack from its `.zip` or other compressed archive.
2. Open `retrodeck/texture_packs/Flycast/Textures/`.
3. Move the extracted texture folder into the `Textures` directory. The folders are often named by `TITLEID`.
4. Rename the folder so that it matches the game's `TITLEID` **exactly** and remove additional suffixes such as `_LQ`, `_MQ`, or `_HQ` folder name if there are any.

The resulting directory should follow this structure:

```
retrodeck/
└── texture_packs/
    └── Flycast/
        └── Textures/
            └── TITLEID/
                └── <texture files>
```

---


