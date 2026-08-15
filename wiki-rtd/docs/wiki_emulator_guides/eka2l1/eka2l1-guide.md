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
| `.symbian` | Symbian application or package format. |
| `.ngage` | N-Gage game package format. |
| `.zip` | ZIP archive. |


---

## Does EKA2LA require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes. EKA2L1 requires several device-specific firmware files and system-drive directories. The required files vary by device.

Typical requirements include:

- `SYM.ROM`
- Device system-drive directories.
- `BOOT-<ID>.dmp` and `ROOT-<ID>.dmp` for some devices.


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

# EKA2L1: Device ID List

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

## Using a Custom Device for Symbian

If you want to use a device profile that is not included in the predefined
ES-DE launch commands, select **EKA2L1 [Custom device] (Standalone)**.

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

---