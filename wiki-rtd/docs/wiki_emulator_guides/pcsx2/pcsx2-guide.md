# PCSX2 - General Guide

<img src="../../../wiki_images/logos/pcsx2-logo.png" width="100">

PCSX2 is a free and open-source PlayStation 2 (PS2) emulator.

---

### PCSX2 Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| PCSX2 Compability List | [Link](https://pcsx2.net/compat/) |
| PCSX2 Documentation | [Link](https://pcsx2.net/docs/) |
| PCSX2 Github | [Link](https://github.com/PCSX2/pcsx2) |
| PCSX2 Website | [Link](https://pcsx2.net/) |



---

## Where to put the games

Playstation 2 games should be put under the `retrodeck/roms/ps2/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| File Format | Description |
|-------------|-------------|
| .iso| Standard ISO disc image |
| .bin + .cue | Binary disc image file with cue sheet |
| .chd| Compressed Hunks of Data **(Recommended)** |

---

## Does PCSX2 require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

Yes, there exists several PS2 BIOS from different regions and hardware versions.

You need at least one.

| Region | Typical BIOS Region / Use Case |
|--------------|----------------------------------------|
| NTSC‑U (USA / North America) | Used for North American PS2 games (60 Hz, NTSC format) |
| PAL (Europe / Australia)| Used for European / PAL‑region games (50 Hz) |
| NTSC‑J (Japan / Asia) | Required for Japanese PS2 games and imports (NTSC format)|


**Read more here:** 

- [PCSX2 - BIOS Guide](https://pcsx2.net/docs/setup/bios/)

### Where to put the PSX BIOS?

Directly into the folder

`retrodeck/bios/`

---


## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type          | Directory                                         | Comment             |
|:-------------:|:--------------------------------------------------|:-------------------|
| BIOS          | `retrodeck/bios/`                                 |                     |
| Cheats        | `retrodeck/cheats/PCSX2/`                         | PCSX2/cheats       |
| Config        | `~/.var/app/net.retrodeck.retrodeck/config/PCSX2/` |                     |
| Logs          | `retrodeck/logs/PCSX2/`                           | PCSX2/logs         |
| Mods          | `retrodeck/mods/PCSX2/patches/`                   | PCSX2/patches      |
| ROMs          | `retrodeck/roms/ps2/`                             |                     |
| Saves         | `retrodeck/saves/ps2/pcsx2/`                      |                     |
| Memory Cards  | `retrodeck/saves/ps2/pcsx2/memcards/`            |                     |
| Screenshots   | `retrodeck/screenshots/PCSX2/`                    |                     |
| States        | `retrodeck/states/ps2/pcsx2/`                    |                     |
| Texture Packs | `retrodeck/texture_packs/PCSX2/`                 | PCSX2/textures     |
| Videos        | `retrodeck/videos/PCSX2/`                         |                     |

---

## Enable Cheats

Place your `.pnach` files in: **retrodeck/cheats/pcsx2/**

1. Open **PCSX2** via the **RetroDECK Configurator**.
2. **Right-click** the game you want to configure and select **Properties**.
3. Open the **Cheats** tab and enable **Cheats**.
4. Check **Enabled** next to the cheat you want to activate.

---

## Enable Patches: Widescreen and more

1. Open **PCSX2** via the **RetroDECK Configurator**. 
2. **Right-click** the game you want to configure and click on **Properties**.
3. Open **Patches** and enable the patch (if there is one) by checking **Enabled**.


---

## Different Settings Per Game

1. Open **PCSX2** via the **RetroDECK Configurator**. 
2. **Right-click** the game you want to configure and click on **Properties**.
3. Adjust any settings you want and apply.

---

## Emulate the Multitap (PCSX2)

Multitap allows up to **8 players** on the PlayStation 2 by connecting 4 controllers to each controller port.

**Note:** Most games do not support this feature, and some may not work with it enabled.

1. Open **PCSX2** via the **RetroDECK Configurator**. 
2. Go to **Settings → Controllers → Controller Multitap**.
3. Enable/disable Multitap for **Port 1**, **Port 2**, or both by checking the box.
4. New controller slots (1A-1D and 2A-2D) will appear for mapping.

---

## Emulate the EyeToy (PCSX2)

Requires a **USB webcam** or **integrated webcam**.

1. Open **PCSX2** via the **RetroDECK Configurator**. 
2. Go to **Settings → Controllers → USB Port**.
3. From the dropdown, select **Webcam (EyeToy)**.
4. Choose the **Device Name** of your connected camera.

---

## Configuring Language Settings

### PCSX2 GUI Language

PCSX2 typically follows your system locale if supported.

1. Open **PCSX2** via the **RetroDECK Configurator**. 
2. Navigate to **Settings → Interface → Interface**.
3. Under **Preferences**, select your preferred language from the drop-down menu.
4. Close **PCSX2**.

### BIOS / In-Game Language

1. Open **PCSX2** via the **RetroDECK Configurator**. 
2. Go to **Settings → BIOS**.
3. Under **Options and Patches**, uncheck **Fast Boot**, then close the menu.
4. Go to **System → Start BIOS**.
5. In the BIOS, navigate to **System Configuration → Language** and select your preferred language.
6. Exit the BIOS, return to **Settings → BIOS → Options and Patches**, and re-enable **Fast Boot**.
7. Close **PCSX2**.

---

## Adding Texture Packs

**Note:** Some texture packs are made for specific game versions or regions. Ensure you have the correct game and textures. Each game has a unique `TITLEID`.

### Enable Custom Textures

Open **PCSX2** via the **RetroDECK Configurator**. 

**Globally for All Games**

1. Go to **Settings → Graphics → Texture Replacement**.
2. Enable **Load Textures** and **Async Texture Loading**.

**Per Game**

1. In the PCSX2 interface, **right-click** the game and open the menu.
2. Go to **Game Properties → Graphic Settings → Texture Replacement**.
3. Enable **Load Textures** and **Async Texture Loading**.

### Adding Texture Packs

1. Extract texture pack files from `.zip` or other compressed formats.
2. Navigate to **`retrodeck/texture_packs/pcsx2/`**.
3. Locate the correct **`TITLEID`** for your game.
4. Move the texture files into: **`retrodeck/texture_packs/pcsx2/<TITLEID>`**
5. If the textures match the game, they will load the next time the game is launched. 

---

## Disc Swapping (In-Game)

Follow these steps to swap discs in PCSX2 without restarting your game:

1. Pause the game at the **"Insert Disc"** screen.
2. Open the **PCSX2 menu** (press **Esc** or your the **Open Menu Hotkey**).
3. Navigate to **System → Change Disc → ISO Selector**.
4. Select the next disc file (**ISO** or **CHD**) you want to load.
5. Resume the game, it should continue seamlessly from where you left off.

---
