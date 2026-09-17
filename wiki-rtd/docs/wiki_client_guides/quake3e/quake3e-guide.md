# Guide: Quake3e

<img src="../../../wiki_images/logos/quake3e-logo.svg" width="150" alt="Quake3e logo">

**Quake3e** is a modern client and source port of *Quake III Arena*, focused on improved performance, compatibility and mod support.

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

## Does Quake3e require BIOS, Game Data or Firmware files?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

Yes, you do need copies of the official **Quake III Arena** game data files and place them in  `retrodeck/roms/quake3/baseq3`. 

| pk3 File | Path | MD5 | Comments |
|------|------|-----|----------|
| pak0.pk3 | `retrodeck/roms/quake3/baseq3` | `1197ca3df1e65f3c380f8abc10ca43bf` |  |
| pak1.pk3 | `retrodeck/roms/quake3/baseq3` | `48911719d91be25adb957f2d325db4a0` |  |
| pak2.pk3 | `retrodeck/roms/quake3/baseq3` | `d550ce896130c47166ca44b53f8a670a` |  |
| pak3.pk3 | `retrodeck/roms/quake3/baseq3` | `968dfd0f30dad67056115c8e92344ddc` |  |
| pak4.pk3 | `retrodeck/roms/quake3/baseq3` | `24bb1f4fcabd95f6e320c0e2f62f19ca` |  |
| pak5.pk3 | `retrodeck/roms/quake3/baseq3` | `734dcd06d2cbc7a16432ff6697f1c5ba` |  |
| pak6.pk3 | `retrodeck/roms/quake3/baseq3` | `873888a73055c023f6c38b8ca3f2ce05` |  |
| pak7.pk3 | `retrodeck/roms/quake3/baseq3` | `8fd38c53ed814b64f6ab03b5290965e4` |  |
| pak8.pk3 | `retrodeck/roms/quake3/baseq3` | `d8b96d429ca4a9c289071cb7e77e14d2` |  |
| pak8.pk3 | `retrodeck/roms/quake3/baseq3` | `d8b96d429ca4a9c289071cb7e77e14d2` |  |

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

## System Settings Are Per Game / Mod

Ironwail stores settings separately for the base game and each installed mod.

A central configuration is loaded at startup trying to provide compatible controls, but mods may add their own settings or overrides.

As a result, settings such as **display resolution, graphics, keyboard controls and mouse controls** may need to be configured separately for each mod.

---


## How-to: Play Quake 3 in RetroDECK?

Make sure all the game files are at their proper location **Read Above**.

### Quake 3

1. Navigate to `retrodeck/roms/quake3/`.
2. Create an empty file named `Quake 3.quake3`.
3. Launch **Quake 3** from RetroDECK.

---

## How-to: Play Quake 3 Mods in RetroDECK

Quake3e supports many types of mods.

**The following installation steps apply to all mods:**

1. Download the mod from its respective source.
2. Extract the mod archive to `retrodeck/roms/quake3/<MOD_NAME>/`.
3. Ensure the mod files are located directly in `retrodeck/roms/quake3/<MOD_NAME>/` and are not nested inside additional subdirectories.

---

### Example: Challenge ProMode Arena (CPMA) 

Some mods have additional dependencies or installation requirements. Always check the mod's documentation and adapt the instructions for RetroDECK as needed.

The official [Challenge ProMode Arena: Installation Guide](https://playmorepromode.com/guides/cpma-cnq3-installation) includes instructions that does not apply directly to RetroDECK.

#### CPMA Map Pack

The CPMA guide instructs you to extract `cpma-mappack-full.zip` into the Quake 3 `q3/baseq3` directory.

In RetroDECK, this corresponds to:

```
retrodeck/roms/quake3/baseq3/
```

#### Installing the CPMA Mod

Download the latest CPMA release from the [CPMA downloads page](https://playmorepromode.com/files/latest/cpma).

Extract the `cpma` folder directly into the Quake 3 directory, alongside `baseq3`:

```
retrodeck/
└── roms/
    └── quake3/
        ├── baseq3/
        └── cpma/
            └── <Mod_Files>
```

#### CNQ3 Executable

**This step is not required for RetroDECK.**

The CPMA installation guide instructs you to download the CNQ3 executable.

RetroDECK already includes **Quake3e**, which provides the required Quake 3 engine. You only need to install the mod and any additional files or dependencies it requires not the engine.

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

This method is **not guaranteed to work** with every mod. If the mod does not launch, remove the `.quake3` extension and try loading the mod from the **Mods** menu in Quake 3.

---

## Controls

### ⌨️ Keyboard and 🖱️ Mouse

| Action | Input | Command |
|---|---|---|
| Attack / Fire | `CTRL` | `+attack` |
| Attack / Fire | `MOUSE1` | `+attack` |
| BFG 10K | `9` | `weapon 9` |
| Center view | `END` | `centerview` |
| Chat | `T` | `messagemode` |
| Console | `` ` `` / `~` | `toggleconsole` |
| Crouch | `C` | `+movedown` |
| Decrease screen size | `-` / `_` | `sizedown` |
| Increase screen size | `+` / `=` | `sizeup` |
| Jump | `SPACE` | `+moveup` |
| Lightning Gun | `6` | `weapon 6` |
| Look down | `DEL` | `+lookdown` |
| Look up | `PGDN` | `+lookup` |
| Machine Gun | `2` | `weapon 2` |
| Menu | `ESCAPE` | `togglemenu` |
| Mouse look | `\` | `+mlook` |
| Move backward | `S` | `+back` |
| Move backward | `↓` | `+back` |
| Move forward | `W` | `+forward` |
| Move forward | `↑` | `+forward` |
| Move left | `A` | `+moveleft` |
| Move right | `D` | `+moveright` |
| Next weapon | `/` / `]` | `weapnext` |
| Next weapon | `MWHEELDOWN` | `weapnext` |
| Pause | `PAUSE` | `pause` |
| Plasma Gun | `8` | `weapon 8` |
| Previous weapon | `[` | `weapprev` |
| Previous weapon | `MWHEELUP` | `weapprev` |
| Railgun | `7` | `weapon 7` |
| Rocket Launcher | `5` | `weapon 5` |
| Run / Sprint | `SHIFT` | `+speed` |
| Scores | `TAB` | `+scores` |
| Screenshot | `F11` | `screenshot` |
| Shotgun | `3` | `weapon 3` |
| Strafe | `ALT` | `+strafe` |
| Strafe | `MOUSE2` | `+strafe` |
| Team orders | `F3` | `ui_teamorders` |
| Turn left | `←` | `+left` |
| Turn right | `→` | `+right` |
| Use item | `ENTER` | `+button2` |
| Vote no | `F2` | `vote no` |
| Vote yes | `F1` | `vote yes` |
| Weapon 0 - Grappling Hook | `0` | `weapon 10` |
| Weapon 1 - Gauntlet | `1` | `weapon 1` |
| Weapon 2 - Machine Gun | `2` | `weapon 2` |
| Weapon 3 - Shotgun | `3` | `weapon 3` |
| Weapon 4 - Grenade Launcher | `4` | `weapon 4` |
| Weapon 5 - Rocket Launcher | `5` | `weapon 5` |
| Weapon 6 - Lightning Gun | `6` | `weapon 6` |
| Weapon 7 - Railgun | `7` | `weapon 7` |
| Weapon 8 - Plasma Gun | `8` | `weapon 8` |
| Weapon 9 - BFG 10K | `9` | `weapon 9` |
| Zoom | `MOUSE3` | `+zoom` |


### 🎮 Gamepad

| Action | Xbox / Steam Deck / PlayStation / Nintendo | Input | Command |
|---|---|---|---|
| Attack / Fire | RT / R2 / ZR | `PAD0_RIGHTTRIGGER` | `+attack` |
| Center view | L3 | `PAD0_LEFTSTICK_CLICK` | `centerview` |
| Console | ↓ | `PAD0_DPAD_DOWN` | `toggleconsole` |
| Crouch | A / × / B | `PAD0_A` | `+movedown` |
| Jump | B / ○ / A | `PAD0_B` | `+moveup` |
| Look down | Right Stick ↓ | `PAD0_RIGHTSTICK_DOWN` | `+lookdown` |
| Look up | Right Stick ↑ | `PAD0_RIGHTSTICK_UP` | `+lookup` |
| Menu | Start / Options / + | `PAD0_START` | `togglemenu` |
| Move backward | Left Stick ↓ | `PAD0_LEFTSTICK_DOWN` | `+back` |
| Move forward | Left Stick ↑ | `PAD0_LEFTSTICK_UP` | `+forward` |
| Move left | Left Stick ← | `PAD0_LEFTSTICK_LEFT` | `+moveleft` |
| Move right | Left Stick → | `PAD0_LEFTSTICK_RIGHT` | `+moveright` |
| Next weapon | → | `PAD0_DPAD_RIGHT` | `weapnext` |
| Previous weapon | ← | `PAD0_DPAD_LEFT` | `weapprev` |
| Run / Sprint | RB / R1 / R | `PAD0_RIGHTSHOULDER` | `+speed` |
| Scores | ↑ | `PAD0_DPAD_UP` | `+scores` |
| Turn left | Right Stick ← | `PAD0_RIGHTSTICK_LEFT` | `+left` |
| Turn right | Right Stick → | `PAD0_RIGHTSTICK_RIGHT` | `+right` |
| Use item | Y / △ / X | `PAD0_Y` | `+button2` |
| Zoom | R3 | `PAD0_RIGHTSTICK_CLICK` | `+zoom` |


---

## Troubleshooting

| Topic | Issue | Solution |
|---|---|---|
| **Missing Models in Player Selection** | Some graphics cards may have difficulty rendering models in the Player model picker. | **None:** The models function correctly in-game. The issue is limited to the model selection window. |
| **Invalid CD Key** | CD keys from the GOG and Steam versions are no longer required or valid for online play. This is a legacy requirement from the early days of Quake 3. | Ignore the message. |

---

