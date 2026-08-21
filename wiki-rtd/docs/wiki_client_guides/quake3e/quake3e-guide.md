# Guide: Quake3e

<img src="../../../wiki_images/logos/quake3e-logo.svg" width="150" alt="Quake3e logo">

Quake3e is the open source source port / game engine / client for ID Softwares Quake 3 with mod support.

---

### Quake3e Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| Quake3e - Github | [Link](https://github.com/ec-/Quake3e) |

---

## Where to put the games?

Quake 3 games should be put under the `retrodeck/roms/quake3/` directory.

---

## What file formats does Quake3e support?

| File Type | What is it? | Comments |
| :--- | :---: | :---: |
| .quake 3 | RetroDECK Quake 3 launcher file |  |

---

## Does Quake3e require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No, Quake3e does not require any BIOS or firmware files. 

However, you do need copies of the official **Quake III Arena** game data files and place them in  `retrodeck/roms/quake3/baseq3`. 

| pk3 File | Path | MD5 | Comments |
|------|------|-----|----------|
| Quake III Arena - pak0.pk3 | `retrodeck/roms/quake3/baseq3` | `1197ca3df1e65f3c380f8abc10ca43bf` |  |
| Quake III Arena - pak1.pk3 | `retrodeck/roms/quake3/baseq3` | `48911719d91be25adb957f2d325db4a0` |  |
| Quake III Arena - pak2.pk3 | `retrodeck/roms/quake3/baseq3` | `d550ce896130c47166ca44b53f8a670a` |  |
| Quake III Arena - pak3.pk3 | `retrodeck/roms/quake3/baseq3` | `968dfd0f30dad67056115c8e92344ddc` |  |
| Quake III Arena - pak4.pk3 | `retrodeck/roms/quake3/baseq3` | `24bb1f4fcabd95f6e320c0e2f62f19ca` |  |
| Quake III Arena - pak5.pk3 | `retrodeck/roms/quake3/baseq3` | `734dcd06d2cbc7a16432ff6697f1c5ba` |  |
| Quake III Arena - pak6.pk3 | `retrodeck/roms/quake3/baseq3` | `873888a73055c023f6c38b8ca3f2ce05` |  |
| Quake III Arena - pak7.pk3 | `retrodeck/roms/quake3/baseq3` | `8fd38c53ed814b64f6ab03b5290965e4` |  |
| Quake III Arena - pak8.pk3 | `retrodeck/roms/quake3/baseq3` | `d8b96d429ca4a9c289071cb7e77e14d2` |  |

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| Type   | Directory                                         | Comment                     |
|:------:|:-------------------------------------------------|:----------------------------|
| ROMs   | `retrodeck/roms/quake3/`                            |                             |
| baseq3   | `retrodeck/roms/quake3/baseq3`                            |                             |

---

## Where to buy official Quake III Arena

| Game / Bundle | Steam Link | GOG Link |
|---|---|---|
| **Quake III Arena + Team Arena** | [Steam](https://store.steampowered.com/app/2200/Quake_III_Arena/) | [GOG](https://www.gog.com/en/game/quake_iii_arena) |

### I have bought the game how do I get my files?

Find the installation location by:

**Steam**

- Right-click **Quake III Arena** in your Steam library.
- Select **Manage → Browse Local Files**.

Your installation should contain a `baseq3/` directory similar to:

```
~/.local/share/Steam/steamapps/common/Quake 3 Arena/
└── baseq3/
    ├── pak0.pk3
    ├── pak1.pk3
    ├── pak2.pk3
    ├── pak3.pk3
    ├── pak4.pk3
    ├── pak5.pk3
    ├── pak6.pk3
    ├── pak7.pk3
    └── pak8.pk3
```

**GOG**

```
~/GOG Games/Quake III Arena/
└── baseq3/
    ├── pak0.pk3
    ├── pak1.pk3
    ├── pak2.pk3
    ├── pak3.pk3
    ├── pak4.pk3
    ├── pak5.pk3
    ├── pak6.pk3
    ├── pak7.pk3
    └── pak8.pk3
```

---

## Note: System Settings Are Per Game / Mod

All settings in Quake3e are stored separately for the base game and for each mod.

Any changes you make to settings such as display resolution, graphics options, keyboard controls, or mouse controls for Quake III Arena may need to be configured separately for each mod you install.

---


## How-to: Play Quake 3 in RetroDECK?

Make sure all the game files are at their proper location **Read Above**.

### Quake 3

1. Navigate to `retrodeck/roms/quake3/`.
2. Create an empty file named `Quake 3.quake3`.
3. Launch **Quake 3** from RetroDECK.
4. 
---


## How-to: Play Quake 3Mods in RetroDECK

Quake3e supports many types of mods

**The following installation steps apply to all mods:**

1. Download the mod from its respective source.
2. Extract the mod archive to `retrodeck/roms/quake3/<MOD_NAME>/`.
3. Ensure the mod files are located directly in `retrodeck/roms/quake3/<MOD_NAME>/` and are not nested inside additional subdirectories.

---

### Loading mods from the Mods Menu

<img src="../quake3e-mods-menu.png" width="600" alt="">

Some mods must be loaded manually from the Quake 3Mods menu:

1. Select `Mods`.
2. Select the desired mod.
3. Select `Load`.

---

### Make Mods show up in ES-DE as Standalone Game Entries

**Example:** **Challenge ProMode Arena (CPMA)**

1. Rename the mod directory so it uses the `.quake3` extension.
2. For **Challenge ProMode Arena**, rename `cpma` to `cpma.quake3`.
3. The final path should be `retrodeck/roms/quake3/cpma.quake3`.
4. In ES-DE, highlight **cpma**.
5. Open the **Main Menu** and select **Edit This Games Metadata**.
6. Set the **Name** field to `Challenge ProMode Arena`.
7. Save the changes and launch **Challenge ProMode Arena** from RetroDECK.

**Note:** 

This method is **not guaranteed to work** with every mod. 

If the mod does not launch, remove the .quake3 extension and try loading the mod from the **Mods** menu in Quake 3.

---

## Troubleshooting

| Topic | Issue | Solution |
|---|---|---|
| |  |  |


---

