# Guide: EKA2L1

<img src="../../../wiki_images/logos/eka2l1-logo.png" width="150" alt="Kegs logo">

EKA2L1 is an experimental Symbian OS emulator

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

### KEGS Links

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
- Device system-drive directories
- `BOOT-<ID>.dmp` and `ROOT-<ID>.dmp` for some devices


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
        └── z/
            └── <device_ID>/
                └── <files>
```

### Example: Nokia N-Gage

The Nokia N-Gage has the device ID `RH-29`.

| File or Directory | Description |
|---|---|
| `SYM.ROM` | Nokia N-Gage Symbian ROM image. |
| `BOOT-101FB2B1.dmp` | Nokia N-Gage BOOT ROM dump. |
| `ROOT-101FB2B1.dmp` | Nokia N-Gage ROOT ROM dump. |
| `drives/<drive_letter>/RH-29/` | Nokia N-Gage system drive. |

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
        └── z/
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
