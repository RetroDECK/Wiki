# Guide: ECWolf

<img src="../../../wiki_images/logos/ecwolf-logo.webp" width="150" alt="Ecwolf logo">

ECWolf is a source port engine of Wolfenstein 3D and its related games, based on the Wolf4SDL engine and powered by the ZDoom codebase.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### ECWolf Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| ECWolf Webpage | [Link](https://maniacsvault.net/ecwolf/) |
| ECWolf GitHub | [Link](https://github.com/ECWolfEngine/ECWolf) |
| Wolf3D.net | [Link](https://beta.wolf3d.net/) |
| ZDoom Wolf3D Remastered | [Link](https://forum.zdoom.org/viewtopic.php?f=19&t=48633) |

---

## Where to put the games

ECWolf game files must be placed in the `retrodeck/roms/wolfenstein/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">

| File Format | Description |
|-------------|-------------|
| .wolf    | RetroDECK ECWolf launcher format |




---

## Does ECWolf require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

However, you do need copies of the official game data.

---

## Directory Structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type | Directory | Comment |
|:----:|:--------------------------------------|:-----------------------------------------------|
| ROMs | `retrodeck/roms/wolfenstein` | |

--- 

## ECWolf Required Game Data Files

Below are the original game data files required by **ECWolf** to run that version.

- Wolfenstein 3D (Shareware)
- Wolfenstein 3D (Full)
- Spear of Destiny (Demo)
- Spear of Destiny (Full)
- Spear of Destiny - Mission Pack 1 - Return to Danger
- Spear of Destiny - Mission Pack 2 - Return to Danger
- Spear of Destiny - Mission Pack 3 - Ultimate Challenge
- Super 3D Noah's Ark

These files must be copied from your original game installation.

---

###  Wolfenstein 3D - Shareware Version (.WL1)

| File Name        | Description | Comments |
|------------------|------------|----------|
| audiohed.wl1     | Audio header file that indexes sound data | |
| audiot.wl1       | Contains digitized sound effects and AdLib audio data | |
| config.wl1       | Stores game configuration settings | |
| gamemaps.wl1     | Contains Episode 1 level map data (shareware episode) |  |
| maphead.wl1      | Map header information for level lookup | |
| vgadict.wl1      | VGA graphics dictionary for decompression | |
| vgagraph.wl1     | Compressed graphics data (sprites, UI, textures) | |
| vgahead.wl1      | Header for VGA graphics data | |
| vswap.wl1        | Main asset container (sprites, walls, sounds) | |

---

### Wolfenstein 3D - Full Version (.WL6)

| File Name | Description | MD5 | Comments |
|---|---|---|---|
| AUDIOHED.WL6 | Audio header file that indexes sound data | `a41af25a2f193e7d4afbcc4301b3d1ce` | |
| AUDIOT.WL6 | Contains digitized sound effects and AdLib audio data | `2385b488b18f8721633e5b2bdf054853` | |
| CONFIG.WL6 | Stores game configuration settings | `2d047fa6c554cc3a12f194d982acb2c8` | |
| GAMEMAPS.WL6 | Contains all level map data | `a4e73706e100dc0cadfb02d23de46481` | |
| MAPHEAD.WL6 | Map header information for level lookup | `b8d2a78bc7c50da7ec9ab1d94f7975e1` | |
| VGADICT.WL6 | VGA graphics dictionary for decompression | `dec8939cff5a4ec27ae7b43e8f52ec28` | |
| VGAGRAPH.WL6 | Compressed graphics data (sprites, UI, textures) | `8b40b5b785f898e229bf1c2f2e3ee003` | |
| VGAHEAD.WL6 | Header for VGA graphics data | `8e75e3ffb842ed3d08abe6ffea97b231` | |
| VSWAP.WL6 | Main asset container (sprites, walls, sounds) | `b8ff4997461bafa5ef2a94c11f9de001` | |



---

### Spear of Destiny Demo (.SDM)

| File Name        | Description | Comments |
|------------------|------------|----------|
| audiohed.sdm     | Audio header file that indexes sound data | |
| audiot.sdm       | Contains digitized sound effects and AdLib audio data | |
| config.sdm       | Stores game configuration settings | |
| gamemaps.sdm     | Contains sample level map data | |
| maphead.sdm      | Map header information for level lookup | |
| vgadict.sdm      | VGA graphics dictionary for decompression | |
| vgagraph.sdm     | Compressed graphics data (sprites, UI, textures) | |
| vgahead.sdm      | Header for VGA graphics data | |
| vswap.sdm        | Main asset container (sprites, walls, sounds) | |

---


### Spear of Destiny (.SOD)

| File Name | Description | MD5 | Comments |
|---|---|---|---|
| AUDIOHED.SOD | Audio header file that indexes sound data | `6e914d15335125872737718470061ad8` / `a41af25a2f193e7d4afbcc4301b3d1ce` | |
| AUDIOT.SOD | Contains digitized sound effects and AdLib audio data | `10020fce0f04d21bd07b1b5b951c360a` / `2385b488b18f8721633e5b2bdf054853` | |
| CONFIG.SOD | Stores game configuration settings | `2d047fa6c554cc3a12f194d982acb2c8` | |
| GAMEMAPS.SOD | Contains all level map data | `29860b87c31348e163e10f8aa6f19295` / `04f16534235b4b57fc379d5709f88f4a` | |
| MAPHEAD.SOD | Map header information for level lookup | `a8b24dd3d3271e0b7fc6f2f995915f27` / `276c79a4a6419db6b23e7699e41cb9fa` | |
| VGADICT.SOD | VGA graphics dictionary for decompression | `30b11372b9ec6bc06289eb3e9b2ef0b9` | |
| VGAGRAPH.SOD | Compressed graphics data (sprites, UI, textures) | `3b85f170098fb48d91d8bedd0cac4e0d` | |
| VGAHEAD.SOD | Header for VGA graphics data | `fb75007a1167bba05c4acadf90bc30d8` | |
| VSWAP.SOD | Main asset container (sprites, walls, sounds) | `26697dff80a0f382ed4ffef07ce3b9a2` / `b1dac0a8786c7cdbb09331a4eba00652` | |


---

### Spear of Destiny - Alternative (.SD1)

.SD1 is an alternative used for the original Spear of Destiny by some releases instead of .SOD.

| File Name | Description | MD5 | Comments |
|---|---|---|---|
| GAMEMAPS.SD1 | Level data for SOD | `04f16534235b4b57fc379d5709f88f4a` | |
| MAPHEAD.SD1 | Map header information for SOD | `276c79a4a6419db6b23e7699e41cb9fa` | |
| VSWAP.SD1 | Asset container for SOD | `b1dac0a8786c7cdbb09331a4eba00652` | |

---

### Spear of Destiny - Mission Pack 2 - Return to Danger (.SD2)

| File Name | Description | MD5 | Comments |
|---|---|---|---|
| GAMEMAPS.SD2 | Level data for Mission Pack 2 | `fa5752c5b1e25ee5c4a9ec0e9d4013a9` | |
| MAPHEAD.SD2 | Map header information for Mission Pack 2 | `d55508cd58e2e61076ac81b98aeb9269` | |
| VSWAP.SD2 | Asset container for Mission Pack 2 | `25d92ac0ba012a1e9335c747eb4ab177` | |

---

### Spear of Destiny - Mission Pack 3 - Ultimate Challenge (.SD3)

| File Name | Description | MD5 | Comments |
|---|---|---|---|
| GAMEMAPS.SD3 | Level data for Mission Pack 3 | `29860b87c31348e163e10f8aa6f19295` | |
| MAPHEAD.SD3 | Map header information for Mission Pack 3 | `a8b24dd3d3271e0b7fc6f2f995915f27` | |
| VSWAP.SD3 | Asset container for Mission Pack 3 | `94aeef7980ef640c448087f92be16d83` | |


---

### Super 3D Noah's Ark (.N3D)

| File Name | Description | MD5 | Comments |
|---|---|---|---|
| AUDIOHED.N3D | Audio header file that indexes sound data | `9c7e08401faf9c7d64e7ee7bceb6c9b8` | |
| AUDIOT.N3D | Contains digitized sound effects and music data | `8b40a14de58cf8578bb3a783dcb4f7bb` | |
| GAMEMAPS.N3D | Contains all level map data | `d35ce2257a4fb56f61529df5f7f77adb` | |
| MAPHEAD.N3D | Map header information for level lookup | `2eaab4dd50856abeaebe75a8bcbbab42` | |
| VGADICT.N3D | VGA graphics dictionary for decompression | `fb3d87a2e265d87e720ac011b7301b23` | |
| VGAGRAPH.N3D | Compressed graphics data (sprites, UI, textures) | `58d67ea6f4a9d5c7a788b7406e50dda3` | |
| VGAHEAD.N3D | Header for VGA graphics data | `fe26baf052f03e92019e221bc106dfec` | |
| VSWAP.N3D | Main asset container (sprites, walls, sounds) | `8c61a9b3bb38a598990ccb743d2679fa` | |
| NOAH3D.PK3 | PK3 archive containing game data | `41f374182a0cddba9916617369089053` | |
| NOAH3D.WAD | WAD archive containing game data | `a59e49bc0da9dbd4e508811c9dea7c09` | |


---

## Where to buy the games?

Below is a combined table containing purchase links.

| Game / Bundle | Steam Link | GOG Link | itch.io Link | Comments |
|---------------|------------|----------|--------------|---------|
| Wolfenstein 3D | [Steam](https://store.steampowered.com/app/2270/Wolfenstein_3D/) | [GOG](https://www.gog.com/en/game/wolfenstein_3d) |  | No version today includes the Spear of Destiny mission packs 2 and 3. |
| Super 3-D Noah's Ark | [Steam](https://store.steampowered.com/app/371180/Super_3D_Noahs_Ark/) | [GOG](https://www.gog.com/en/game/super_3d_noahs_ark) |**(Recommended)** [itch.io](https://wisdomtree.itch.io/s3dna) | 100% of itch.io purchases go to ECWolf directly and the Steam is key included.  |

---

## How-to: Get game from your bought copy of Wolfenstein 3D?

### Where are the game files? - Steam

1. Open **Steam**
2. Right-click the game in your Library
3. Select **Manage → Browse Local Files**
4. The file manager will open directly to the installation directory

**Wolfenstein 3D**

| Platform | Game / Folder | Example Path | Notes |
|----------|---------------|--------------|-------|
| Steam (Native) | Wolfenstein 3D | `~/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/` | Main installation directory |
| Steam (Native) | Wolfenstein 3D / original SOD levels | `~/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/m1/` | Contains only original SOD levels (no extra missions) |
| Steam (Flatpak) | Wolfenstein 3D | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/` | Flatpak sandbox path |
| Steam (Flatpak) | Wolfenstein 3D / original SOD levels | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Wolfenstein 3D/base/m1/` | Contains only original SOD levels (no extra missions) |

**Spear of Destiny**

**Note:** This has been delisted on Steam.

| Platform | Game | Example Path | Notes |
|----------|------|--------------|-------|
| Steam (Native) | Spear of Destiny | `~/.local/share/Steam/steamapps/common/Spear of Destiny/base/` | Full version including extra missions (.sd1, .sd2, .sd3) |
| Steam (Flatpak) | Spear of Destiny | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Spear of Destiny/base/` | Full version including extra missions (.sd1, .sd2, .sd3) |

**Super 3-D Noah's Ark**

| Platform | Game | Example Path | Notes |
|----------|------|--------------|-------|
| Steam (Native) | Spear of Destiny | `~/.local/share/Steam/steamapps/common/Super 3-D Noah's Ark/` |  |
| Steam (Flatpak) | Spear of Destiny | `~/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Super 3-D Noah's Ark/` |  |


---

### Where Are the Game Files? - GOG

**Wolfenstein 3D**

| Platform / Method | Game / Folder | Example Path | Notes |
|------------------|---------------|--------------|-------|
| GOG (Native install) | Wolfenstein 3D | `~/GOG Games/Wolfenstein 3D/` | Default installer “GOG Games” folder |
| GOG (Native install) | Wolfenstein 3D / original SOD levels | `~/GOG Games/Wolfenstein 3D/base/m1/` | Contains original SOD levels (no extra missions) |
| GOG (Native install) | Super 3-D Noah’s Ark | `~/GOG Games/Super 3-D Noah’s Ark/` | Full game folder |

**Spear of Destiny**

**Note:** This has been delisted on GOG.

| Platform / Method | Game / Folder | Example Path | Notes |
|------------------|---------------|--------------|-------|
| GOG (Native install) | Spear of Destiny | `~/GOG Games/Spear of Destiny/` | Full version including extra missions (.sd1, .sd2, .sd3) |

**Super 3-D Noah's Ark**

| Platform / Method | Game / Folder | Example Path | Notes |
|------------------|---------------|--------------|-------|
| GOG (Native install) | Spear of Destiny | `~/GOG Games/Super 3-D Noah's Ark/` | |


---

## Cheats

### Wolfenstein 3D

| Cheat        | Key Combination | Release                     | Comments |
|------------|----------------|----------------------------|-------|
| MIL cheat  | M + I + L       | All                        | Gives goodies, resets score and adds 10 minutes |
| BAT cheat  | B + A + T       | All                        | Displays a message from Commander Keen  |
| God Mode   | F10 + Tab + G   | Spear of Destiny        |  |

---

### Super 3D Noah's Ark - Quiz Pickups Cheat Sheet

Quiz pickups are scattered throughout the game. The starting question depends on where the player ended the previous playthrough, cycling sequentially until it returns to the first question.

| Question ID  | Question | Answer / Reference |
|----|----------|------------------|
| 1  | Who was Noah's father? | Lamech. (Gen 5:30) |
| 2  | How old was Noah when he had Shem, Ham and Japheth? | 500 years old. (Gen 5:32) |
| 3  | How many sons did Noah have? | Three: Shem, Ham, Japheth. (Gen 6:10) |
| 4  | What kind of wood was the Ark made of? | Gopher wood. (Gen 6:14) |
| 5  | How many cubits long was the Ark? | 300 cubits long, 50 wide, 30 high. (Gen 6:15) |
| 6  | How many windows did the Ark have? | One window, to a cubit upward. (Gen 6:16) |
| 7  | How many doors did the Ark have? | One door in its side. (Gen 6:16) |
| 8  | How many stories did the Ark have? | Three levels: lower, second, third. (Gen 6:16) |
| 9  | How many of each kind of animal did Noah have? | Two of each, male and female. (Gen 6:19) |
| 10 | How many of each clean animal did Noah have? | Seven pairs of each clean animal. (Gen 7:2) |
| 11 | How many days did it rain? | 40 days and nights. (Gen 7:4) |
| 12 | How old was Noah when the floods came? | 600 years old. (Gen 7:6) |
| 13 | How many days did Noah wait in the Ark before the flood? | 7 days. (Gen 7:10) |
| 14 | Did the flood come only from the sky? | No - from sky and fountains of the deep. (Gen 7:11) |
| 15 | How many people were on the Ark? | Noah, his wife, his three sons and their wives. (Gen 7:13) |
| 16 | Did Noah collect the animals? | Yes, pairs of all living things entered the Ark. (Gen 7:15) |
| 17 | Who survived the flood? | Only Noah and those with him on the Ark. (Gen 7:23) |
| 18 | How long did the flood last? | 150 days. (Gen 7:4; 8:3) |
| 19 | Which mountain did the Ark land on? | Mountains of Ararat. (Gen 8:4) |
| 20 | What was the first animal to leave the Ark? | Raven. (Gen 8:7) |
| 21 | What did the dove bring back to Noah? | Olive leaf. (Gen 8:11) |
| 22 | How many days after the dove brought the branch did Noah wait? | 7 days. (Gen 8:12) |
| 23 | First thing Noah did after leaving the Ark? | Built an altar and offered burnt offerings. (Gen 8:20) |
| 24 | Sign that God would never flood the world again? | Rainbow. (Gen 9:14-15) |
| 25 | How old was Noah when he died? | 950 years. (Gen 9:29) |
| 26 | Who closed the Ark door? | God shut it in. (Gen 7:16) |
| 27 | Why did God send the flood? | Earth was corrupt and filled with violence. (Gen 6:12-13) |
| 28 | Did Noah find favor with God? | Yes. (Gen 6:8; 6:11-12) |
| 29 | How many years would God strive with man? | 120 years. (Gen 6:3) |
| 30 | What did Noah do after the flood? | Planted a vineyard. (Gen 9:20) |
| 31 | Who was Noah's oldest son? | Shem. (Gen 10:21) |
| 32 | On which side did God tell Noah to pitch the Ark? | Sealed inside and out with pitch. (Gen 6:14) |
| 33 | How wide was the Ark? | 50 cubits. (Gen 6:15) |
| 34 | How tall was the Ark? | 30 cubits. (Gen 6:15) |
| 35 | How did God assure Noah's safety? | Established covenant with him and his household. (Gen 6:18) |
| 36 | What else did Noah bring besides animals? | Food for him and the animals. (Gen 6:18-21) |
| 37 | Why did God choose Noah? | His righteousness was seen in that generation. (Gen 7:1) |
| 38 | Did Noah enter early to prepare the Ark? | Yes, with his family. (Gen 7:13) |
| 39 | How did God make the floods recede? | Sent a wind; waters subsided. (Gen 8:1) |
| 40 | How many months in the Ark after resting on Ararat? | ~7.5 months. (Gen 8:4-14) |
| 41 | Who was first off the Ark? | Noah with family. (Gen 8:18) |
| 42 | What did Noah offer God after the flood? | Burnt offerings of clean animals and birds. (Gen 8:20) |
| 43 | What did God promise never to do again? | Flood the earth. (Gen 9:11) |
| 44 | In which book is Noah's story? | Genesis |
| 45 | Which ancestor lived 969 years? | Methuselah. (Gen 5:27) |
| 46 | How is Noah mentioned in the NT? | Hebrews 11:7; 1 Peter 3:20; 2 Peter 2:5 |
| 47 | Which descendant was mighty on earth? | Nimrod. (1 Chr 1:10) |
| 48 | Which ancestor never died? | Enoch. (Gen 5:24) |
| 49 | Noah's lineage from Adam? | Descendant of Seth. (Luke 3:36-38) |
| 50 | Why is Noah in Hebrews 11? | Faith, built Ark, saved family. (Heb 11:7) |
| 51 | Who entered Ark? | Noah, his wife, sons and sons’ wives. (Gen 7:7) |
| 52 | Where did the flood waters come from? | Fountains of the deep & windows of heaven. (Gen 7:11; 8:2) |
| 53 | What is a covenant? | A contract or agreement. |
| 54 | Noah’s title in 2 Peter 2:5? | Preacher of righteousness. (2 Pet 2:5) |
| 55 | Time before flood likened to? | Days of Noah, eating, drinking, marrying. (Matt 24:37-38; Luke 17:26-27) |
| 56 | How did God feel about man before flood? | Grieved He made man. (Gen 6:6) |
| 57 | Is Jesus a descendant of Noah? | Yes, through Shem. (Luke 3:23-38) |
| 58 | What creatures were not destroyed? | Sea creatures. (Gen 7:21-22) |
| 59 | How high did waters cover mountains? | 15 cubits above. (Gen 7:20) |
| 60 | Day of Ark landing on Ararat? | 17th day of 7th month. (Gen 8:4) |
| 61 | What was Noah commanded not to eat? | Flesh with blood. (Gen 9:4) |
| 62 | What were animals to do after flood? | Multiply abundantly. (Gen 8:7) |
| 63 | With whom did God make His covenant? | Noah, sons and all living creatures. (Gen 9:8-10) |
| 64 | Father of Canaanites? | Ham. (Gen 9:22) |
| 65 | Abraham descended from which son? | Shem. (Luke 3:34-36) |
| 66 | Which descendant did Noah curse? | Canaan. (Gen 9:25) |
| 67 | Why did Shem & Japheth cover Noah? | To respect his nakedness. (Gen 9:23) |
| 68 | Rainbow symbolism? | God will never judge mankind again. (Gen 9:13-15) |
| 69 | God promised Noah and animals? | Humans rule over animals. (Gen 9:2) |
| 70 | Did man eat meat before flood? | No. (Gen 9:3) |
| 71 | Punishment for murder? | Life for life. (Gen 9:6) |
| 72 | Everyone on Ark survived? | Yes. (Gen 8:18) |
| 73 | How long to recede water for Ark? | 150 days. (Gen 8:3) |
| 74 | Did God destroy the Ark after flood? | False. |
| 75 | Why store food? | For Noah and animals. (Gen 6:21) |
| 76 | Name of Noah’s wife? | False - not Sarah. |
| 77 | Did Noah have more sons after flood? | No - only Shem, Ham, Japheth. (Gen 9:19) |
| 78 | Years given to repent before flood? | 120 years. (Gen 6:3) |
| 79 | Who lived before Noah? | Adam. (Gen 5:1) |
| 80 | Who lived after Noah? | Example: Joshua. (Luke 3:36-37) |
| 81 | Did Noah obey God fully? | Yes. (Gen 6:22) |
| 82 | Next covenant after Noah? | With Abram. (Gen 15:18) |
| 83 | Kind of covenant with Noah? | God promised no more floods. (Gen 9:11) |
| 84 | Did people eat vegetables only before flood? | False - they ate green herbs. (Gen 9:3-4) |
| 85 | What will not cease in covenant? | Seed time/harvest, cold/heat, summer/winter, day/night. (Gen 8:22) |
| 86 | God told Noah to make windows for animals? | Yes. (Gen 6:16) |
| 87 | Did rainbows exist before flood? | False - rainbow given after flood. (Gen 9:12-17) |
| 88 | Length of a cubit? | ~18 inches (finger to elbow) |
| 89 | Did it take 40 days to find animals? | No - animals came by pairs as commanded. (Gen 7:8-10) |
| 90 | Day Noah saw dry land? | 1st day, 1st month of 601st year. (Gen 8:13) |
| 91 | Canaan cursed to be servant? | Yes. (Gen 9:25) |
| 92 | Years Noah lived after flood? | 350 years. (Gen 9:28) |
| 93 | Which son was a tattle-tale? | Ham. (Gen 9:22) |
| 94 | What did Noah plant after flood? | Vineyard. (Gen 9:20) |
| 95 | How did God communicate to Noah? | Spoke directly. (Gen 6:13) |
| 96 | Ark had sails? | False. |
| 97 | Male & female of each animal on Ark? | Yes. (Gen 6:19) |
| 98 | How many times did Noah send the dove? | 3 times; third did not return. (Gen 8:8-12) |
| 99 | How old was Lamech when he had Noah? | 182 years. (Gen 5:28) |

---
