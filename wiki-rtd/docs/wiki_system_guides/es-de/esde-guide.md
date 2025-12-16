# ES-DE Frontend: General Guide

<img src="../../../wiki_images/logos/es-de-logo.png" width="100">

ES-DE Frontend (EmulationStation Desktop Edition) is a frontend for browsing and launching games from your multi-platform collection. 

**Note:**

ES-DE is the default frontend used in RetroDECK.

---


### ES-DE Links:

[ES-DE: Webpage](https://es-de.org/)

[ES-DE: Gitlab](https://gitlab.com/es-de/emulationstation-de)

[ES-DE: Userguide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md)

[ES-DE: FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)

[ES-DE: Theme List](https://gitlab.com/es-de/themes/themes-list)

[ES-DE: Translations](https://gitlab.com/es-de/emulationstation-de/-/blob/master/TRANSLATIONS.mdl)

[ES-DE: Roadmap](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ROADMAP.md)

[ES-DE: Issues](https://gitlab.com/es-de/emulationstation-de/-/issues)

[ES-DE: Changelog](https://gitlab.com/es-de/emulationstation-de/-/blob/master/CHANGELOG.md) 


---


## Folder structure

| Type| Folder |Comment | 
|:---:| :---:| :---: |
| Root ES-DE | `retrodeck/ES-DE/` | |
| Collections | `retrodeck/ES-DE/collections/`|Usermade ES-DE collections|
| Custom Systems | `retrodeck/ES-DE/custom_systems/`|Usermade ES-DE custom systems|
| Media | `retrodeck/ES-DE/downloaded_media/`|Scraped media files|
| Gamelists | `retrodeck/ES-DE/gamelists/`|Gamelists|
| Themes | `retrodeck/ES-DE/themes/`|Downloaded themes |

---

## ES-DE General Usage

| Topic | Description |
|------|-------------|
| **Change Language in ES-DE** | ES-DE defaults to the system language if supported.<br>To change it manually: open **ES-DE Menu → ES-DE Configurations → UI Settings → Application Language**, then select your preferred language. |
| **Change Emulator for an Entire System** | Open **ES-DE Menu → ES-DE Configurations → Other Settings → Alternative Emulators**.<br>Select the system, and choose a new default emulator. |
| **Change Emulator for a Specific Game** | Navigate to the game.<br>Press **Select → Edit This Game’s Metadata → Alternative Emulator**.<br>Choose the emulator, and press **Save**. |
| **Why Menu Navigation Does Not Wrap (Up/Down)** | ES-DE menus are grid-based rather than simple lists, and grids can include mixed elements such as text entries and buttons.<br>Because layouts vary, wrap-around navigation would behave inconsistently.<br>ES-DE instead provides navigation shortcuts:<br>• **L1 / Page Up** - jump up 6 rows in menus, 10 in gamelists<br>• **R1 / Page Down** - jump down 6 rows in menus, 10 in gamelists<br>• **L2 / Home** - jump to top<br>• **R2 / End** - jump to bottom<br>See the official FAQ for more details: [ES-DE FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#why-cant-i-press-the-up-button-in-menus-to-jump-to-the-bottom-row-and-vice-versa). |

---

## ES-DE General Navigation 

**Text Input Notes:**

- **Enter** applies changes, **Escape** cancels.
- Keys mapped to left, right, down, shoulder, or trigger buttons do not work in text fields; use the virtual keyboard instead.
- Pasting is supported via **Ctrl + V / Shift + Insert**.

| Xbox Button | PlayStation | Nintendo | Default Keyboard | Function |
|-------------|-------------|----------|-----------------|---------|
| Up / Down | D-Pad Up / D-Pad Down | D-Pad Up / D-Pad Down | Arrow Up / Arrow Down | Navigate between systems and games in lists, grids, or carousels; also used for menu navigation. In the media viewer, switches between game media and PDFs. |
| Left / Right | D-Pad Left / D-Pad Right | D-Pad Left / D-Pad Right | Arrow Left / Arrow Right | Navigate between entries in grids or horizontal carousels; switch gamelists if Quick system select is enabled; navigate media files; select random games in video/slideshow screensavers; also used in menus. |
| Start | Options | + | Escape | Opens/closes main menu. |
| Back | Share | - | F1 | Opens/closes gamelist options menu. |
| Left / Right Shoulder | L1 / R1 | L / R | Page Up / Page Down | Quick jumps in lists/menus (6 entries in menus, 10 in gamelists); navigate gamelists with Quick system select; back/blankspace in text edit dialogs; zoom in/out in PDF viewer. |
| Left / Right Trigger | L2 / R2 | ZL / ZR | Home / End | Jump to first/last entries in carousels, grids, menus, and text edit dialogs; navigate gamelists with Quick system select; jump to first/last entry/page in media viewer. |
| Left / Right Thumbstick Click | L3 / R3 | L / R Stick Click | F2 / F3 | Jump to random game or system (requires Random entry button configuration). |
| A Button | Cross | B | Enter | Selects items: open gamelists, launch games, enter folders, select menu entries. |
| B Button | Circle | A | Back key | Back button. |
| X Button | Square | Y | Delete | Start media viewer in gamelist or screensaver in system view (if enabled); other minor functions. |
| Y Button | Triangle | X | Insert | Mark games as favorites (if enabled); other minor functions. |
| Start + Back | Options + Share | + + - | Ctrl + Q | Quit ES-DE; can be customized via Keyboard quit shortcut. |

---

## ES-DE Themes

 ES-DE includes several themes that can be downloaded and used immediately. A full list of available themes can be found in the [ES-DE Theme List](https://gitlab.com/es-de/themes/themes-list). 

| Topic | Description |
|------|-------------|
| **Switch Between Themes** | Open **ES-DE Menu → ES-DE Configurations → UI Settings → Theme Set**.<br>Then select the desired theme. |
| **Add Themes (Theme Downloader)** | Navigate to **ES-DE Menu → ES-DE Configurations → UI Settings → Theme Downloader**.<br>Browse and download additional themes directly within ES-DE. |
| **Add Themes (From the Internet)** | Ensure the theme is compatible with ES-DE before downloading.<br>Download the theme, extract it if compressed (.zip or .7z), and place the extracted folder in `retrodeck/ES-DE/themes/`.<br>The final path should be `retrodeck/ES-DE/themes/<downloaded_theme_folder>`.<br>Launch RetroDECK and select the theme normally. |
| **Theme Not Working or Broken Layout** | Verify the theme is explicitly compatible with **ES-DE**.<br>Themes designed for Batocera are not compatible, as ES-DE uses a unique theme engine and themes are not directly portable.<br>Refer to the ES-DE Guide for additional details. |
| **Squished Theme Layout on Steam Deck** | The Steam Deck uses a `16:10` aspect ratio, while many third-party themes are designed for `16:9`, which can cause layouts to appear squished.<br>All included themes are built for `16:10`.<br>To resolve this issue with external themes, either use a version designed for `16:10` or modify the theme to support that aspect ratio. |


---

## ES-DE Scraping

Scraping enhances your game library with cover art, icons, disc images, videos, and more. ES-DE supports **ScreenScraper** and **TheGamesDB**

### General 

| Topic | Description |
|------|-------------|
| **Supported Scraping Services** | • [ScreenScraper](https://www.screenscraper.fr/) <br>• [TheGamesDB](https://thegamesdb.net/) |
| **Scraping Settings Location** | **ES-DE Menu → Scraping** |
| **Official Guide** | See the [ES-DE Scraper Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping) for detailed documentation. |
| **ScreenScraper vs TheGamesDB** | ScreenScraper is recommended in most cases.<br>TheGamesDB may work better for PC titles. |
| **ScreenScraper Account** | A ScreenScraper account is required.<br>Supporting them on Patreon enables faster downloads, higher daily limits, and priority scraping. |
| **Account Login** | Log in via **ES-DE Menu → Scraping → Account Settings**. |
| **Content Selection** | Choose what to scrape under **ES-DE Menu → Scraping → Content Settings**.<br>Each content type may consume several MB per game. |

---

### Scraping Tips

| Topic | Description |
|------|-------------|
| **Initial Scrape** | Perform a full scrape of your library first. |
| **Fix Missing Games** | Enable **Scraping → Other Settings → Interactive Mode → On** and **Auto-Accept Single Game Matches → On**.<br>Then scrape only games missing metadata. |
| **Name Adjustments** | If scraping fails, try simplifying ROM names (e.g., remove duplicate Japanese/English titles). |

---

### ScreenScraper FAQ

| Question | Answer |
|---------|--------|
| **I received a quota-related error after scraping** | ScreenScraper enforces a daily scraping quota, where each scraped item counts toward the daily limit.<br>You can either wait 24 hours for the quota to reset or support ScreenScraper financially to increase your daily quota. |
| **The server or service is down** | If ScreenScraper is unavailable, check the official [ScreenScraper website](https://www.screenscraper.fr/) for status updates and availability. |
| **I have donated—how do I get faster scraping?** | You must link your ScreenScraper account with your Patreon account.<br>Refer to the [ScreenScraper Patreon](https://www.patreon.com/screenscraper) page for detailed instructions. |
| **Scraping is very slow** | ScreenScraper offers multiple donation tiers that increase scraping speed by enabling additional download threads. |

---

### Scraped Data Management

| Topic | Description |
|------|-------------|
| **Scraped Data Location** | `~/retrodeck/ES-DE/downloaded_media` |
| **Move downloaded_media** | Use the **Move RetroDECK** option in the configurator. |
| **Copy to Another Device** | Yes. Copy the `downloaded_media` folder into the RetroDECK directory on the other device. |
| **Storage Full After Scraping** | Large media files can quickly consume storage. |

---

### Storage Cleanup Options

| Method | Description |
|------|-------------|
| **Automatic Cleanup** | **ES-DE Menu → Utilities → Orphaned Data Cleanup** (removes unused media). |
| **Manual Cleanup** | Manually delete large files (images/videos) from `~/retrodeck/ES-DE/downloaded_media`. |
| **Keep Everything** | Free space elsewhere or expand storage capacity. |

---

## ES-DE Scraper Menu Overview

| Section | Description |
|---------|-------------|
| **Scrape from** | Select scraper service: ScreenScraper.fr or TheGamesDB.net. |
| **Scrape these games** | Criteria for which games to scrape:<br>All games, Favorite games, No metadata, No game image, No game video, Folders only.<br>No metadata checks if a description exists; No game image checks for miximage → screenshot → title screen → box cover. |
| **Scrape these systems** | Choose which systems to scrape. Multiple or all systems can be selected. |

### Account Settings

| Field | Description |
|-------|-------------|
| **ScreenScraper username** | Registered username on screenscraper.fr. |
| **ScreenScraper password** | Registered password (masked). Stored in `es_settings.xml` in clear text. |
| **Use this account for ScreenScraper** | Enables or disables usage of this account during scraping. Useful for troubleshooting. |

### Content Settings

| Content Type | Description |
|--------------|-------------|
| **Game names** | Scrape game names (does not affect filesystem). Used for appearance and sorting. |
| **Ratings** | Download ratings (ScreenScraper only). |
| **Other metadata** | Description, release date, developer, publisher, genre, number of players. |
| **Videos** | Gameplay videos (ScreenScraper only). |
| **Screenshot images** | Screenshots of gameplay. |
| **Title screen images** | Screenshot of the title screen. |
| **Box cover images** | Front box/case art. |
| **Box back cover images** | Back of box/case. |
| **Marquee images** | Game logotype for wheels. |
| **3D box images** | 3D box/case image (ScreenScraper only). |
| **Physical media images** | Cartridges, disks, tapes, CD-ROMs, etc. |
| **Fan art images** | Fan-created artwork. |
| **Game manuals** | PDF manuals (ScreenScraper only). Can be large. |

### Miximage Settings

| Option | Description |
|--------|-------------|
| **Miximage resolution** | 1280x960 (default), 1920x1440, 640x480. Lower resolution recommended for weak hardware. |
| **Miximage file format** | PNG or WebP. WebP is smaller but slower to generate. |
| **Horizontal / Vertical screenshot fit** | `contain`, `crop`, or `stretch` options. Crop is best for horizontal, contain for vertical. |
| **Screenshot aspect ratio threshold** | Tolerance for aspect ratio deviations when using crop/contain. Low = strict, High = lenient. |
| **Blank areas fill color** | Fill color for empty areas when using `contain`. |
| **Screenshot scaling method** | `Sharp` = nearest-neighbor (retro games), `Smooth` = Lanczos (modern games). |
| **Box / Physical media size** | Medium, small, or large. |
| **Generate miximages when scraping** | Enable/disable generation during scraping. |
| **Overwrite miximages** | Whether to overwrite existing miximages. |
| **Remove letterboxes/pillarboxes** | Automatically crop black bars from screenshots. |
| **Rotate horizontally oriented boxes** | Rotate covers printed horizontally (e.g., SNES). |
| **Include marquee / box / physical media** | Control which images are included in composite miximage.<br>`Use cover image if 3D box is missing` can fallback to 2D box. |
| **Offline generator** | GUI for generating miximages without scraping. Requires at least a screenshot per game. |

### Other Scraper Settings

| Setting | Description |
|---------|-------------|
| **Region** | Region for scraping: Europe, Japan, USA, World, Asia, Australia, Brazil, Canada, China, Germany, France, Italy, Korea, Netherlands, Russia, Sweden, Spain, Taiwan, UK. |
| **Preferred language** | Language for game descriptions and genres (ScreenScraper only). Falls back to English if unavailable. |
| **Automatic retries on error** | 0–10 retries (automatic/semi-automatic modes only). |
| **Retry attempt timer** | 1–30 seconds between retries. |
| **Hash searches max file size** | Max file size for hash-based search: 32–800 MiB. Larger files fall back to name search. |
| **Overwrite files and data** | Controls overwriting of metadata and media (does not affect miximages). |
| **Search using file hashes** | Non-interactive scraper can search using game file hashes for 100% accuracy. |
| **Search using metadata names** | Use metadata editor names instead of physical filenames for searches. |
| **Scrape actual folders** | Include folders in multi-scraper (DOS, ScummVM, multi-disc games). |
| **Interactive mode** | If off, multi-scraper runs fully automatically. |
| **Auto-accept single game matches** | Automatically confirm searches with a single result (multi-scraper only). |
| **Respect per-file scraper exclusions** | Overrides per-game exclusions set in metadata editor. |
| **Exclude folders recursively** | Skip entire folder if parent folder is excluded. |
| **Convert underscores to spaces** | Replaces `_` with space in game names when searching. |
| **Remove dots from searches** | Strips `.` from game names in automatic multi-scraper (ScreenScraper only). |
| **Enable fallback to additional regions** | Scrapes media from additional regions if missing in the selected region (ScreenScraper only). |

---

## Adding Manual Media (Without Scraping)

| Topic | Description |
|------|-------------|
| **Overview** | You can manually add images, videos, and manuals without using scraping. |
| **Official Resources** | • [Manual Media Instructions](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md?ref_type=heads#manually-copying-game-media-files)<br>• [Media Types Spreadsheet](https://docs.google.com/spreadsheets/d/18VJAL44aNxsFOd4pVAONmdWwa7srCSzr2Z2SJEiNKnE/edit?gid=1812680930#gid=1812680930) |
| **Filename Rules** | Linux is case-sensitive.<br>File extensions must be lowercase and filenames must exactly match the game filename. |
| **Directory-as-File Games** | For systems like ScummVM, include the directory extension in the media filename (e.g., `dig.scummvm.png`). |
| **Supported Image Formats** | `.jpg`, `.png` |
| **Supported Video Formats** | `.avi`, `.mkv`, `.mov`, `.mp4`, `.wmv` |
| **Supported Documents** | `.pdf` |

### Examples

| Scenario | Path |
|-------|------|
| **Multi-disk / Single Game (Screenshot)** | `~/retrodeck/ES-DE/downloaded_media/c64/screenshots/Multidisk/Last Ninja 2/Last Ninja 2.jpg` |
| **Multi-disk / Single Game (Video)** | `~/retrodeck/ES-DE/downloaded_media/c64/videos/Multidisk/Last Ninja 2/Last Ninja 2.mp4` |
| **Directory-as-File Game (Screenshot)** | `~/retrodeck/ES-DE/downloaded_media/scummvm/screenshots/dig.scummvm.png` |
| **Directory-as-File Game (Video)** | `~/retrodeck/ES-DE/downloaded_media/scummvm/videos/dig.scummvm.mp4` |

### Default Media Directory Structure

```
~/retrodeck/ES-DE/downloaded_media/<system name>/<media type>/<files goes here>
```


### Supported Media Types

```
3dboxes
backcovers
covers
custom
fanart
manuals
marquees
miximages (The miximages are generated by ES-DE)
physicalmedia
screenshots
titlescreens
videos
```

---

## Migrating from EmulationStation

| Topic | Description |
|-------|-------------|
| **Compatibility** | ES-DE has evolved significantly from EmulationStation. Data, system names, directory structures, and themes are **not transferable**. Only ES-DE–specific themes will work. Media is matched to game/ROM filenames rather than using tags in `gamelist.xml`. |
| **One-way migration** | Moving data from EmulationStation to ES-DE may modify `gamelist.xml` and custom collection files, potentially making them incompatible with EmulationStation. |
| **Path tags** | ES-DE requires a leading `./` in path tags.<br>**Incorrect:** `<path>Another World.lha</path>`<br>**Correct:** `<path>./Another World.lha</path>` |
| **Gamelist location** | Move `gamelist.xml` files from ROM directories to `~/ES-DE/gamelists/`. |
| **System names** | ES-DE may use different system names than Batocera, RetroBat, or Recalbox.<br>Example: Sega SG-1000 is `sg-1000` in ES-DE vs `sg1000` elsewhere.<br>Check the Supported Game Systems table for correct names. |
| **Other differences** | Directory structure, metadata handling, and theme engine differences may require manual adjustments. |

---

## Third-Party Tools for ES-DE

| Tool | Description | Link |
|------|------------|------|
| ES-DE-Roms-Renamer | Python tool to rename ROMs, update media files, and modify `gamelist.xml` entries. | [GitHub](https://github.com/mirai-toto/ES-DE-Roms-Renamer) |
| M3U Files Generator | Python script to automate creation of `.m3u` files for various systems.| [GitHub](https://github.com/Jetup13/Retroid-Pocket-4-Pro-Wiki/wiki/Emulators-and-Formats#m3u-file-generator-python-script) |
| ES-DE - Vita3K | Python script to generate `.psvita` files for populating the PSVita system in ES-DE. | [GitHub](https://github.com/BinaryQuantumSoul/esde-vita3k) |
| GameList.xml to RetroArch Playlist Converter | Converts ES-DE `gamelist.xml` files to RetroArch playlist format. | [GitHub](https://github.com/bnovakovic/GameList_Converter) |




---

## ES-DE User Guide Quick Links

Here follows various quick bookmarks to specific section of the User Guide that is good to read and always updated with the lastest information.

| Section | Link |
|---------|------|
| **Navigation and UI Settings** | [General Navigation](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#general-navigation) |
|| [UI Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#ui-settings) |
|| [Other UI Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings) |
|| [Sound Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sound-settings) |
| **Game Settings, Collections, and Filters** | [Game Options](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#game-options-menu) |
|| [Game Collections](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#game-collections) |
|| [Setting Alternative Emulator](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings-1) |
| **Scraper, Art, Videos, and Images** | [Scraper Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping) |
|| [Scraper Accounts](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#account-settings) |
|| [Content Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#content-settings) |
|| [Custom Media Files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#manually-copying-game-media-files) |
|| [Miximage Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#miximage-settings) |
|| [Other Scraper Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings) |
|| [Metadata Editor](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#metadata-editor) |


---
