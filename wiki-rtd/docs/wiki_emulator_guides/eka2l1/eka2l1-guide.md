# Guide: EKA2L1

<img src="../../../wiki_images/logos/eka2l1-logo.png" width="150" alt="EKA2L1 logo">

EKA2L1 is an emulator for Nokia/Symbian smartphones and the Nokia N-Gage. 

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### ⚠️ Bleeding-Edge Component ⚠️ 

**Warning:** This component is under rapid development and may be unstable.

- Performance may vary across hardware configurations.
- Some standard features available in other components may not yet be supported.
- Controllers or other input devices may require manual configuration.
- Compatibility may vary across the supported game library.
- Functionality, performance, and compatibility may change as development progresses.

---

### EKA2L1 Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| EKA2L1 GitHub | [Link](https://github.com/EKA2L1/EKA2L1) |
| EKA2L1 Website | [Link](https://eka2l1.github.io/) |
| EKA2L1 Quickstart | [Link](https://eka2l1.github.io/quickstart/) |
| EKA2L1 Docs | [Link](https://eka2l1.github.io/docs/) |
| EKA2L1 Wiki | [Link](https://eka2l1.miraheze.org/wiki/Main_Page) |

---

## Where to put the games

- Symbian games should be put under the `retrodeck/roms/apple2gs/` directory.
- Nokia N-Gage games should be put under the `retrodeck/roms/ngage/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| Format | Description |
|---|---|
| `.sis` | Symbian installation package for installing applications on Symbian devices. |
| `.sisx` | Symbian installation package using the extended SISX format. |
| `.symbian` | Symbian launcher format. |
| `.ngage` | N-Gage game launcher format. |
| `.zip` | ZIP archive. |


---

## Does EKA2LA require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes. EKA2L1 requires several device-specific firmware files and system-drive directories. The required files vary by device.

Typical requirements include:

- `SYM.ROM`
- Device system-drive directories.
- `BOOT-<ID>.dmp` and `ROOT-<ID>.dmp` for some devices.

The `SYM.ROM` also needs to be installed via EKA2L1-


### Where should I put the BIOS?

- You put the `SYS.ROM`, `BOOT-<ID>.dmp` and `ROOT-<ID>.dmp` files into `retrodeck/bios/EKA2L1/<device_ID>`
- You put drive directories into `retrodeck/storage/EKA2L1/z/<device_ID>/<files>`    


```
retrodeck/
├── bios/
│   └── EKA2L1/
│       └── <device_ID>/
│           ├── SYM.ROM
│           ├── BOOT-<ID>.dmp
│           └── ROOT-<ID>.dmp
└── storage/
    └── EKA2L1/
        └── <drive_letter>/
            └── <device_ID>/
                └── <files>
```

### Example: Nokia N-Gage QD

The Nokia N-Gage QD has the device ID `RH-29`.

| File or Directory | Description |
|---|---|
| `SYM.ROM` | Nokia N-Gage Symbian ROM image. |
| `BOOT-101FB2B1.dmp` | Nokia N-Gage BOOT ROM dump. |
| `ROOT-101FB2B1.dmp` | Nokia N-Gage ROOT ROM dump. |
| `drives/<drive_letter>/RH-29/<system_files>` | Nokia N-Gage system drive. |

```
retrodeck/
├── bios/
│   └── EKA2L1/
│       └── RH-29/
│           ├── SYM.ROM
│           ├── BOOT-101FB2B1.dmp
│           └── ROOT-101FB2B1.dmp
└── storage/
    └── EKA2L1/
        └── <drive_letter>/
            └── RH-29/
                └── <system_files>
```

### Installing Device `SYM.ROM` in EKA2L1

1. Open **RetroDECK Configurator**.
2. Select **Components → EKA2L1**.
3. Select **File → Install → Device → Browse**.
4. Navigate to: `retrodeck/bios/EKA2L1/<device_ID>/`
5. Select the required **`SYM.ROM`** file and select **Install**.

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/apple2gs/`                             |               |
| BIOS   | `retrodeck/bios/EKA2L1/<device_ID>`                             |             |
| Drives   | `retrodeck/storage/EKA2L1`                             |           |
| Drives: Devices  | `retrodeck/storage/EKA2L1/z/<device_ID>/<files>`                             |         |
| j2me  | `retrodeck/storage/EKA2L1/j2me`                             |           |


---

## Device ID List

This page lists device IDs available for use with EKA2L1.

**Note:** This is not a full complete list of all Symbian OS devices in existance. 

| Device name | Device ID | Notes |
|---|---|---|
| Nokia 5320 XpressMusic | `RM-409` |  N-Gage 2.0-capable device. |
| Nokia 5530 XpressMusic | `RM-504` | |
| Nokia 5800 XpressMusic | `RM-356` | |
| Nokia 6630 | `RM-1` | |
| Nokia 6650 Fold - AT&T | `RM-324` | |
| Nokia 6730 Classic | `RM-566` | |
| Nokia E50 | `RM-170` | |
| Nokia N-Gage | `NEM-4` | Original N-Gage retail device. |
| Nokia N-Gage QD Dev | `RH-4` | Developer version of the N-Gage QD. |
| Nokia N-Gage QD Retail | `RH-29` | **Recommended** Retail version of the N-Gage QD. |
| Nokia N70 | `RM-84` | **Recommended**  N-Gage 2.0-capable device.|
| Nokia N85 | `RM-333` | |
| Nokia N95 | `RM-320` | N-Gage 2.0-capable device. |
| Nokia N97 | `RM-507` |  **Recommended** N-Gage 2.0-capable device. |
| Samsung i450 | `SGH-i450` | |
| Siemens SX1 | `Appl SW 12.2_15` | |

The **recommended** device profiles have preconfigured launch commands in
ES-DE, making them the easiest options to use.

- **EKA2L1 [Nokia N-Gage] (Standalone)**
- **EKA2L1 [Nokia N70] (Standalone)**
- **EKA2L1 [Nokia N97] (Standalone)**

---

## ROM Directory and Device Selection

The available device options in ES-DE depend on the ROM directory being used:

- **`retrodeck/roms/ngage/`**: **EKA2L1 [Nokia N-Gage] (Standalone)** and its
  variants are the only available launch options.
- **`retrodeck/roms/symbian/`**: All supported device profiles are available including the Nokia N-Gage.

---


## How-to: Run Nokia N-Gage Games in RetroDECK 

You will need to have installed the BIOS and drive.

There are two ways to launch the games. 

### GameID List

These are the known GameID's that are used by EKA2L1

| Game | GameID | ZIP filename |
| --- | --- | --- |
| Ashen | `Ashen` | `Ashen.zip` |
| Asphalt Urban GT | `Asphalt` | `Asphalt.zip` |
| Asphalt: Urban GT 2 | `Asphalt 2` | `Asphalt 2.zip` |
| Atari Masterpieces Vol. I | `Atari MP Vol I` | `Atari MP Vol I.zip` |
| Atari Masterpieces Vol. II | `Atari MP Vol II` | `Atari MP Vol II.zip` |
| Barakel: The Fallen Angel | `Barakel` | `Barakel.zip` |
| Bomberman | `Bomberman` | `Bomberman.zip` |
| Call of Duty | `CallofDuty` | `CallofDuty.zip` |
| Catan | `Catan` | `Catan.zip` |
| Civilization | `Civilization` | `Civilization.zip` |
| Colin McRae Rally 2005 | `colin mcrae rally 2005` | `colin mcrae rally 2005.zip` |
| Crash Nitro Kart | `CrashNitroKart` | `CrashNitroKart.zip` |
| FIFA Football 2004 | `FIFA 2004` | `FIFA 2004.zip` |
| FIFA Football 2005 | `FIFA 2005` | `FIFA 2005.zip` |
| Flo-Boarding | `Nokia Game` | `Nokia Game.zip` |
| Glimmerati | `Glimmerati` | `Glimmerati.zip` |
| High Seize | `High Seize` | `High Seize.zip` |
| Marcel Desailly Pro Soccer | `MarcelDesaillyProSoccer` | `MarcelDesaillyProSoccer.zip` |
| Metal Gear Solid Mobile | `Metal Gear Solid Mobile` | `Metal Gear Solid Mobile.zip` |
| Mile High Pinball | `Mile High` | `Mile High.zip` |
| MLB Slam! | `MLB Slam!` | `MLB Slam!.zip` |
| MotoGP | `MotoGP` | `MotoGP.zip` |
| NCAA Football 2004 | `NCAA®` | `NCAA®.zip` |
| N-Gage Freestyle | `FreeStyle` | `FreeStyle.zip` |
| ONE | `ONE` | `ONE.zip` |
| Operation Shadow | `Operation Shadow` | `Operation Shadow.zip` |
| Pandemonium! | `Pandemonium` | `Pandemonium.zip` |
| Pathway to Glory | `Pathway to Glory` | `Pathway to Glory.zip` |
| Pathway to Glory: Ikusa Islands | `Ikusa Islands` | `Ikusa Islands.zip` |
| Payload | `Payload` | `Payload.zip` |
| Pocket Kingdom: Own the World | `PKingdom` | `PKingdom.zip` |
| Pool Friction | `PFriction` | `PFriction.zip` |
| Puyo Pop | `Puyo Pop` | `Puyo Pop.zip` |
| Puzzle Bobble VS | `PuzzleBobbleVS` | `PuzzleBobbleVS.zip` |
| Rayman 3 | `Rayman 3` | `Rayman 3.zip` |
| Red Faction | `RedFaction` | `RedFaction.zip` |
| Requiem of Hell | `Requiem of Hell` | `Requiem of Hell.zip` |
| Rifts: Promise of Power | `RIFTS` | `RIFTS.zip` |
| Romance of the Three Kingdoms: Hero Occurrence | `SanGo` | `SanGo.zip` |
| Sega Rally Championship | `SegaRally` | `SegaRally.zip` |
| Snakes | `Snakes` | `Snakes.zip` |
| SonicN | `SonicN` | `SonicN.zip` |
| Space Impact Evolution X | `Space Impact Evolution X` | `Space Impact Evolution X.zip` |
| Spider-Man 2 | `SM 2` | `SM 2.zip` |
| SSX Out of Bounds | `SSX` | `SSX.zip` |
| Super Monkey Ball | `supermonkeyball` | `supermonkeyball.zip` |
| System Rush | `System Rush` | `System Rush.zip` |
| TechWars | `TechWars` | `TechWars.zip` |
| The Elder Scrolls Travels: Shadowkey | `Elder Scrolls` | `Elder Scrolls.zip` |
| The King of Fighters Extreme | `KOF EXTREME` | `KOF EXTREME.zip` |
| The Roots: Gates of Chaos | `The Roots` | `The Roots.zip` |
| The Sims Bustin' Out | `The Sims Bustin' Out` | `The Sims Bustin' Out.zip` |
| Tiger Woods PGA Tour 2004 | `TW 2004` | `TW 2004.zip` |
| Tom Clancy's Ghost Recon: Jungle Storm | `GhostRecon` | `GhostRecon.zip` |
| Tom Clancy's Splinter Cell: Chaos Theory | `SplinterCell` | `SplinterCell.zip` |
| Tom Clancy's Splinter Cell: Team Stealth Action | `Splinter Cell` | `Splinter Cell.zip` |
| Tomb Raider | `Tomb Raider` | `Tomb Raider.zip` |
| Tony Hawk's Pro Skater | `Tony Hawk's Pro Skater` | `Tony Hawk's Pro Skater.zip` |
| Virtua Tennis | `virtuatennis` | `virtuatennis.zip` |
| Warhammer 40,000: Glory in Death | `WH40K` | `WH40K.zip` |
| Worms World Party | `WWP` | `WWP.zip` |
| WWE Aftershock | `WWE` | `WWE.zip` |
| X-Men Legends | `XMen™` | `XMen™.zip` |
| X-Men Legends II: Rise of Apocalypse | `XMLII` | `XMLII.zip` |
| Xanadu Next | `XanaduNEXT` | `XanaduNEXT.zip` |

### Mounted games (recommended)

Mounted games are launched using **EKA2L1 [Mounted] (Standalone)**.

A mounted game must be packaged as a `.zip` archive with a `system/` directory at the root of the archive.

The `.zip` filename must exactly match the **GameID** recognized by EKA2L1.

**Example**

For the game `N-Gage Freestyle` with the GameID `FreeStyle`, the mounted game should be named: `FreeStyle.zip`

### Installed games

Installed games are launched using **EKA2L1 [Installed] (Standalone)**.

The game must first be installed through EKA2L1. Once installed, RetroDECK uses a `.ngage` file to launch the installed game.

The `.ngage` filename must exactly match the **installed GameID** recognized by EKA2L1.

#### Installing a game

1. Open **RetroDECK Configurator**.
2. Select **Components → EKA2L1**.
3. Select **File → Install → Package**.
4. Select the game package you want to install.
5. Complete the installation in EKA2L1.

#### Creating the `.ngage` launcher

After installing the game:

1. Open the `retrodeck/roms/ngage/` directory.
2. Create a new `.ngage` file using the exact **GameID** recognized by EKA2L1.
3. Place the `.ngage` file in `retrodeck/roms/ngage/`.

**Example**

If **N-Gage Freestyle** is installed and EKA2L1 recognizes its GameID as `FreeStyle`, create:

```
retrodeck/roms/ngage/FreeStyle.ngage
```

---

## How-to: Run Symbian Games in RetroDECK 

You will need to have installed the BIOS and drive for the device you want to use.

Games are launched with the following ES-DE launch profiles:

- **EKA2L1 [Nokia N-Gage] (Standalone)**
- **EKA2L1 [Nokia N70] (Standalone)**
- **EKA2L1 [Nokia N97] (Standalone)**
- **EKA2L1 [Custom device] (Standalone)**

### Using a Custom Device for Symbian

If you want to use a device profile that is not included in the predefined
ES-DE launch profiles, select **EKA2L1 [Custom device] (Standalone)**.

To use a custom device, create a `.device` file in:

`retrodeck/roms/symbian/`

The filename must match the device ID, followed by the `.device` extension:

`<device_ID>.device`

For example, to use the **Samsung i450** (`SGH-i450`), create the following
file:

`retrodeck/roms/symbian/SGH-i450.device`

The **EKA2L1 [Custom device] (Standalone)** option will automatically detect
the device ID from the filename and use the corresponding device profile.

The final directory structure should look like this:

```
retrodeck/
└── roms/
    └── symbian/
        └── SGH-i450.device
```
