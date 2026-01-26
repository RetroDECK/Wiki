# ES-DE Frontend: General Guide

<img src="../../../wiki_images/logos/es-de-logo.png" width="100">

ES-DE Frontend (EmulationStation Desktop Edition) is a frontend for browsing and launching games from your multi-platform collection. 

**Note:**

ES-DE is the default frontend used in RetroDECK.

---


### ES-DE Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| ES-DE - Changelog | [Link](https://gitlab.com/es-de/emulationstation-de/-/blob/master/CHANGELOG.md) |
| ES-DE - FAQ | [Link](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md) |
| ES-DE - Gitlab | [Link](https://gitlab.com/es-de/emulationstation-de) |
| ES-DE - Issues | [Link](https://gitlab.com/es-de/emulationstation-de/-/issues) |
| ES-DE - Roadmap | [Link](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ROADMAP.md) |
| ES-DE - Theme List | [Link](https://gitlab.com/es-de/themes/themes-list) |
| ES-DE - Translations | [Link](https://gitlab.com/es-de/emulationstation-de/-/blob/master/TRANSLATIONS.mdl) |
| ES-DE - Userguide | [Link](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md) |
| ES-DE - Webpage | [Link](https://es-de.org/) |



---


## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">

| Type           | Directory                           | Comment                   |
|:--------------:|:----------------------------------|:-------------------------|
| Collections    | `retrodeck/ES-DE/collections/`     | Usermade ES-DE collections |
| Custom Systems | `retrodeck/ES-DE/custom_systems/`  | Usermade ES-DE custom systems |
| Downloaded Media | `retrodeck/ES-DE/downloaded_media/` | Scraped media files        |
| Gamelists      | `retrodeck/ES-DE/gamelists/`       | Gamelists                 |
| Screensavers         | `retrodeck/ES-DE/screensavers/`          | Custom Sceensavers          |
| Scripts         | `retrodeck/ES-DE/scripts/`          | Custom Scripts          |
| Themes         | `retrodeck/ES-DE/themes/`          | Downloaded themes          |



---

## ES-DE General Usage

| Topic | Description |
|------|-------------|
| Change Emulator for a Specific Game | Navigate to the game.<br>Press **Select → Edit This Game’s Metadata → Alternative Emulator**.<br>Choose the emulator, and press **Save**. |
| Change Emulator for an Entire System | Open **ES-DE Menu → ES-DE Configurations → Other Settings → Alternative Emulators**.<br>Select the system, and choose a new default emulator. |
| Change Language in ES-DE | ES-DE defaults to the system language if supported.<br>To change it manually: open **ES-DE Menu → ES-DE Configurations → UI Settings → Application Language**, then select your preferred language. |
| Why Menu Navigation Does Not Wrap (Up/Down) | ES-DE menus are grid-based rather than simple lists, and grids can include mixed elements such as text entries and buttons.<br>Because layouts vary, wrap-around navigation would behave inconsistently.<br>ES-DE instead provides navigation shortcuts:<br>• **L1 / Page Up** - jump up 6 rows in menus, 10 in gamelists<br>• **R1 / Page Down** - jump down 6 rows in menus, 10 in gamelists<br>• **L2 / Home** - jump to top<br>• **R2 / End** - jump


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
| Add Themes (From the Internet) | Ensure the theme is compatible with ES-DE before downloading.<br>Download the theme, extract it if compressed (.zip or .7z), and place the extracted folder in `retrodeck/ES-DE/themes/`.<br>The final path should be `retrodeck/ES-DE/themes/<downloaded_theme_folder>`.<br>Launch RetroDECK and select the theme normally. |
| Add Themes (Theme Downloader) | Navigate to **ES-DE Menu → ES-DE Configurations → UI Settings → Theme Downloader**.<br>Browse and download additional themes directly within ES-DE. |
| Squished Theme Layout on Steam Deck | The Steam Deck uses a `16:10` aspect ratio, while many third-party themes are designed for `16:9`, which can cause layouts to appear squished.<br>All included themes are built for `16:10`.<br>To resolve this issue with external themes, either use a version designed for `16:10` or modify the theme to support that aspect ratio. |
| Switch Between Themes | Open **ES-DE Menu → ES-DE Configurations → UI Settings → Theme Set**.<br>Then select the desired theme. |
| Theme Not Working or Broken Layout | Verify the theme is explicitly compatible with **ES-DE**.<br>Themes designed for Batocera are not compatible, as ES-DE uses a unique theme engine and themes are not directly portable.<br>Refer to the ES-DE Guide for additional details. |


---

## ES-DE Scraping

Scraping enhances your game library with cover art, icons, disc images, videos, and more. ES-DE supports **ScreenScraper** and **TheGamesDB**

### General 

| Topic | Description |
|------|-------------|
| Account Login | Log in via **ES-DE Menu → Scraping → Account Settings**. |
| Content Selection | Choose what to scrape under **ES-DE Menu → Scraping → Content Settings**.<br>Each content type may consume several MB per game. |
| Official Guide | See the [ES-DE Scraper Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping) for detailed documentation. |
| ScreenScraper Account | A ScreenScraper account is required.<br>Supporting them on Patreon enables faster downloads, higher daily limits, and priority scraping. |
| ScreenScraper vs TheGamesDB | ScreenScraper is recommended in most cases.<br>TheGamesDB may work better for PC titles. |
| Scraping Settings Location | **ES-DE Menu → Scraping** |
| Supported Scraping Services | • [ScreenScraper](https://www.screenscraper.fr/) <br>• [TheGamesDB](https://thegamesdb.net/) |

---

### Scraping Tips

| Topic | Description |
|------|-------------|
| Fix Missing Games | Enable **Scraping → Other Settings → Interactive Mode → On** and **Auto-Accept Single Game Matches → On**.<br>Then scrape only games missing metadata. |
| Initial Scrape | Perform a full scrape of your library first. |
| Name Adjustments | If scraping fails, try simplifying ROM names (e.g., remove duplicate Japanese/English titles). |


---

### ScreenScraper FAQ

| Question | Answer |
|---------|--------|
| I have donated—how do I get faster scraping? | You must link your ScreenScraper account with your Patreon account.<br>Refer to the [ScreenScraper Patreon](https://www.patreon.com/screenscraper) page for detailed instructions. |
| I received a quota-related error after scraping | ScreenScraper enforces a daily scraping quota, where each scraped item counts toward the daily limit.<br>You can either wait 24 hours for the quota to reset or support ScreenScraper financially to increase your daily quota. |
| Scraping is very slow | ScreenScraper offers multiple donation tiers that increase scraping speed by enabling additional download threads. |
| The server or service is down | If ScreenScraper is unavailable, check the official [ScreenScraper website](https://www.screenscraper.fr/) for status updates and availability. |


---

### Scraped Data Management

| Topic | Description |
|-------|-------------|
| Copy to Another Device | Yes. Copy the `downloaded_media` folder into the RetroDECK directory on the other device. |
| Move downloaded_media | Use the Move RetroDECK option in the configurator. |
| Scraped Data Location | `~/retrodeck/ES-DE/downloaded_media` |
| Storage Full After Scraping | Large media files can quickly consume storage. |


---

### Storage Cleanup Options

| Method | Description |
|--------|-------------|
| Automatic Cleanup | ES-DE Menu → Utilities → Orphaned Data Cleanup (removes unused media). |
| Keep Everything | Free space elsewhere or expand storage capacity. |
| Manual Cleanup | Manually delete large files (images/videos) from `~/retrodeck/ES-DE/downloaded_media`. |


---

## ES-DE Scraper Menu Overview

| Section | Description |
|---------|-------------|
| Scrape from | Select scraper service: ScreenScraper.fr or TheGamesDB.net. |
| Scrape these games | Criteria for which games to scrape:<br>All games, Favorite games, No metadata, No game image, No game video, Folders only.<br>No metadata checks if a description exists; No game image checks for miximage → screenshot → title screen → box cover. |
| Scrape these systems | Choose which systems to scrape. Multiple or all systems can be selected. |


### Account Settings

| Field | Description |
|-------|-------------|
| ScreenScraper password | Registered password (masked). Stored in `es_settings.xml` in clear text. |
| ScreenScraper username | Registered username on screenscraper.fr. |
| Use this account for ScreenScraper | Enables or disables usage of this account during scraping. Useful for troubleshooting. |


### Content Settings

| Content Type | Description |
|--------------|-------------|
| 3D box images | 3D box/case image (ScreenScraper only). |
| Box back cover images | Back of box/case. |
| Box cover images | Front box/case art. |
| Fan art images | Fan-created artwork. |
| Game manuals | PDF manuals (ScreenScraper only). Can be large. |
| Game names | Scrape game names (does not affect filesystem). Used for appearance and sorting. |
| Marquee images | Game logotype for wheels. |
| Other metadata | Description, release date, developer, publisher, genre, number of players. |
| Physical media images | Cartridges, disks, tapes, CD-ROMs, etc. |
| Ratings | Download ratings (ScreenScraper only). |
| Screenshot images | Screenshots of gameplay. |
| Title screen images | Screenshot of the title screen. |
| Videos | Gameplay videos (ScreenScraper only). |


### Miximage Settings

| Option | Description |
|--------|-------------|
| Blank areas fill color | Fill color for empty areas when using `contain`. |
| Box / Physical media size | Medium, small, or large. |
| Generate miximages when scraping | Enable/disable generation during scraping. |
| Horizontal / Vertical screenshot fit | `contain`, `crop`, or `stretch` options. Crop is best for horizontal, contain for vertical. |
| Include marquee / box / physical media | Control which images are included in composite miximage.<br>`Use cover image if 3D box is missing` can fallback to 2D box. |
| Miximage file format | PNG or WebP. WebP is smaller but slower to generate. |
| Miximage resolution | 1280x960 (default), 1920x1440, 640x480. Lower resolution recommended for weak hardware. |
| Offline generator | GUI for generating miximages without scraping. Requires at least a screenshot per game. |
| Overwrite miximages | Whether to overwrite existing miximages. |
| Remove letterboxes/pillarboxes | Automatically crop black bars from screenshots. |
| Rotate horizontally oriented boxes | Rotate covers printed horizontally (e.g., SNES). |
| Screenshot aspect ratio threshold | Tolerance for aspect ratio deviations when using crop/contain. Low = strict, High = lenient. |
| Screenshot scaling method | `Sharp` = nearest-neighbor (retro games), `Smooth` = Lanczos (modern games). |


### Other Scraper Settings

| Setting | Description |
|---------|-------------|
| Auto-accept single game matches | Automatically confirm searches with a single result (multi-scraper only). |
| Automatic retries on error | 0-10 retries (automatic/semi-automatic modes only). |
| Convert underscores to spaces | Replaces `_` with space in game names when searching. |
| Enable fallback to additional regions | Scrapes media from additional regions if missing in the selected region (ScreenScraper only). |
| Exclude folders recursively | Skip entire folder if parent folder is excluded. |
| Hash searches max file size | Max file size for hash-based search: 32-800 MiB. Larger files fall back to name search. |
| Interactive mode | If off, multi-scraper runs fully automatically. |
| Overwrite files and data | Controls overwriting of metadata and media (does not affect miximages). |
| Preferred language | Language for game descriptions and genres (ScreenScraper only). Falls back to English if unavailable. |
| Region | Region for scraping: Europe, Japan, USA, World, Asia, Australia, Brazil, Canada, China, Germany, France, Italy, Korea, Netherlands, Russia, Sweden, Spain, Taiwan, UK. |
| Remove dots from searches | Strips `.` from game names in automatic multi-scraper (ScreenScraper only). |
| Respect per-file scraper exclusions | Overrides per-game exclusions set in metadata editor. |
| Retry attempt timer | 1-30 seconds between retries. |
| Search using file hashes | Non-interactive scraper can search using game file hashes for 100% accuracy. |
| Search using metadata names | Use metadata editor names instead of physical filenames for searches. |
| Scrape actual folders | Include folders in multi-scraper (DOS, ScummVM, multi-disc games). |


---

## Adding Manual Media (Without Scraping)

You can manually add images, videos, and manuals without using scraping.

| Topic | Description |
|-------|-------------|
| Directory-as-File Games | For systems like ScummVM, include the directory extension in the media filename (e.g., `dig.scummvm.png`). |
| Filename Rules | Linux is case-sensitive.<br>File extensions must be lowercase and filenames must exactly match the game filename. |
| Official Resources | • [Manual Media Instructions](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md?ref_type=heads#manually-copying-game-media-files)<br>• [Media Types Spreadsheet](https://docs.google.com/spreadsheets/d/18VJAL44aNxsFOd4pVAONmdWwa7srCSzr2Z2SJEiNKnE/edit?gid=1812680930#gid=1812680930) |
| Supported Documents | `.pdf` |
| Supported Image Formats | `.jpg`, `.png` |
| Supported Video Formats | `.avi`, `.mkv`, `.mov`, `.mp4`, `.wmv` |


### Examples

| Scenario | Path |
|---------|------|
| Directory-as-File Game (Screenshot) | `~/retrodeck/ES-DE/downloaded_media/scummvm/screenshots/dig.scummvm.png` |
| Directory-as-File Game (Video) | `~/retrodeck/ES-DE/downloaded_media/scummvm/videos/dig.scummvm.mp4` |
| Multi-disk / Single Game (Screenshot) | `~/retrodeck/ES-DE/downloaded_media/c64/screenshots/Multidisk/Last Ninja 2/Last Ninja 2.jpg` |
| Multi-disk / Single Game (Video) | `~/retrodeck/ES-DE/downloaded_media/c64/videos/Multidisk/Last Ninja 2/Last Ninja 2.mp4` |

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

## Custom Collections

 Collections created by the user, grouping games from existing game systems.

| Collection Type       | Description |
|----------------------|-------------|
| Automatic collections | Predefined collections: <br>• **All games** - Groups all games from all systems. <br>• **Favorites** - Groups all games marked as favorites. <br>• **Last played** - Lists the 50 last launched games. <br>Can be enabled/disabled via Main Menu → Game collection settings → Automatic game collections. |
| Collection editing    | • Tick symbol displayed for games in collection (if textlist theme). <br>• Collection badge displayed for selected game (if theme supports badges). <br>• Folder link functionality disabled during editing. <br>• Finish editing via Main Menu or gamelist options menu. <br>• Additional games can be added later via gamelist options → Add/remove games to this collection. |
| Custom collections    | User-defined collections. Examples: genres (Shoot 'em up, Fighting) or time periods (1980s, 1990s). <br>• Created via Main Menu → Game collection settings → Create new custom collection. <br>• Name restrictions: *",./:;<>\| automatically removed. <br>• Games added/removed using Y button; can belong to multiple collections. <br>• Only files, not folders, can be added. |
| Implementation        | • Each collection has a single configuration file in `retrodeck/ES-DE/collections/custom-<name>.cfg`. <br>• File contains a list of ROM paths. <br>• Changes (add/remove games) are immediately written to this file. <br>• Migrating from older versions: must explicitly enable collections via menu; absolute paths are rewritten with `%ROMPATH%` on first edit. |


**Example**

File `retrodeck/ES-DE/collections/custom-Platform.cfg` contains: 

```
%ROMPATH%/amiga/Flashback_v3.2_1163.hdf
%ROMPATH%/amiga/JamesPond2_v1.1_AGA_1354.hdf
%ROMPATH%/amiga/Nebulus_v1.3_0361.hdf
%ROMPATH%/c64/Bionic Commando.d64
%ROMPATH%/c64/Great Giana Sisters, The.d64
%ROMPATH%/c64/Trantor.d64
%ROMPATH%/c64/Zorro.d64
```

---

## Migrating from EmulationStation (Batocera/Recalbox and others)

| Topic | Description |
|-------|-------------|
| Compatibility | ES-DE has evolved significantly from EmulationStation.<br>Data, system names, directory structures, and themes are **not transferable**.<br>Only ES-DE-specific themes will work.<br>Media is matched to game/ROM filenames rather than using tags in `gamelist.xml`. |
| Gamelist location | Move `gamelist.xml` files from ROM directories to `~/ES-DE/gamelists/`. |
| One-way migration | Moving data from EmulationStation to ES-DE may modify `gamelist.xml` and custom collection files, potentially making them incompatible with EmulationStation. |
| Other differences | Directory structure, metadata handling, and theme engine differences may require manual adjustments. |
| Path tags | ES-DE requires a leading `./` in path tags.<br>**Incorrect:** `<path>Another World.lha</path>`<br>**Correct:** `<path>./Another World.lha</path>` |
| System names | ES-DE may use different system names than Batocera, RetroBat, or Recalbox.<br>Example: Sega SG-1000 is `sg-1000` in ES-DE vs `sg1000` elsewhere.<br>Check the Supported Game Systems table for correct names. |


---

## Third-Party Tools for ES-DE

| Tool | Description | Link |
|------|------------|------|
| ES-DE - Vita3K | Python script to generate `.psvita` files for populating the PSVita system in ES-DE. | [GitHub](https://github.com/BinaryQuantumSoul/esde-vita3k) |
| ES-DE-Roms-Renamer | Python tool to rename ROMs, update media files, and modify `gamelist.xml` entries. | [GitHub](https://github.com/mirai-toto/ES-DE-Roms-Renamer) |
| GameList.xml to RetroArch Playlist Converter | Converts ES-DE `gamelist.xml` files to RetroArch playlist format. | [GitHub](https://github.com/bnovakovic/GameList_Converter) |
| M3U Files Generator | Python script to automate creation of `.m3u` files for various systems. | [GitHub](https://github.com/Jetup13/Retroid-Pocket-4-Pro-Wiki/wiki/Emulators-and-Formats#m3u-file-generator-python-script) |

---

## ES-DE FAQ

Here are some ES-DE FAQ entries compressed, focusing on RetroDECK-related questions.

| Question | Answer |
|----------|--------|
| Can I use an external scraper instead of the built-in ES-DE scraper? | Yes, external scrapers such as Skyscraper, Skraper, or ARRM are supported. |
| Feature request? | Check Kanban board or Roadmap.<br>If absent, submit via board or Discord. |
| Game won't start / flashes black? | Usually corrupt ROMs/disc images or missing BIOS files. |
| How can I change the system sorting order in ES-DE? | Use **UI Settings → Systems sorting** to select a predefined sort order or place custom XML files in `retrodeck/ES-DE/custom_systems/` for full control. |
| How do I add or install themes in ES-DE? | Use the built-in theme downloader in the UI or manually add ES-DE-compatible themes to `retrodeck/ES-DE/themes/`.<br>EmulationStation themes are not compatible. |
| How does ES-DE handle multi-file or multi-disc games? | Games using `.bin/.cue` or `.m3u` files are supported.<br>Converting them to `.chd` is recommended for single-file storage and space savings. |
| Is ES-DE free and open source? | Yes, all versions of ES-DE except the Android version are free and open source under the MIT license.<br>The Android version is paid. |
| Miximages not updating? | Generated from scraped/media assets; rescrape or run offline generator in Miximage Settings menu. |
| Relationship with RetroDECK? | Separate project, collaborates to bundle ES-DE with emulators in a Flatpak.<br>Useful for Steam Deck or Linux desktops. |
| SteamOS language not detected? | SteamOS game mode misconfigures environment; select language manually via UI Settings → Application Language. |
| What are Miximages in ES-DE and how are they updated? | Miximages are generated from a combination of screenshots, marquees, and 3D box images.<br>They can be updated using the offline generator in the Miximage Settings menu. |
| What is the official name of the project and application? | ES-DE Frontend (originally EmulationStation Desktop Edition).<br>The community mostly refers to it simply as ES-DE. |
| Why are some game systems missing, like SNES MSU-1 or WiiWare? | Hack/e-shop systems are intentionally not included.<br>You can add them manually or organize them into custom collections. |
| Why can’t menu wrap around? | Menus are grids; wrapping causes inconsistent navigation.<br>Use shoulder or trigger buttons for consistent jumps. |
| Why don’t hidden games completely disappear from the gamelist? | By default, hidden games are only shown with lower opacity.<br>To fully hide them, enable **Show hidden games** in Other Settings. |

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
