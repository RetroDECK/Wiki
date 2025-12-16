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

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Root ES-DE | `retrodeck/ES-DE/`   |   |
| Collections | `retrodeck/ES-DE/collections/`  |  Usermade ES-DE collections  |
| Custom Systems | `retrodeck/ES-DE/custom_systems/`  |  Usermade ES-DE custom systems  |
| Media | `retrodeck/ES-DE/downloaded_media/`  |  Scraped media files  |
| Gamelists | `retrodeck/ES-DE/gamelists/`  |  Gamelists  |
| Themes | `retrodeck/ES-DE/themes/`  |  Downloaded themes |

---

## ES-DE General Usage

| Topic | Description |
|------|-------------|
| **Change Language in ES-DE** | ES-DE defaults to the system language if supported.<br>To change it manually: open **ES-DE Menu → ES-DE Configurations → UI Settings → Application Language**, then select your preferred language. |
| **Change Emulator for an Entire System** | Open **ES-DE Menu → ES-DE Configurations → Other Settings → Alternative Emulators**.<br>Select the system, and choose a new default emulator. |
| **Change Emulator for a Specific Game** | Navigate to the game.<br>Press **Select → Edit This Game’s Metadata → Alternative Emulator**.<br>Choose the emulator, and press **Save**. |
| **Why Menu Navigation Does Not Wrap (Up/Down)** | ES-DE menus are grid-based rather than simple lists, and grids can include mixed elements such as text entries and buttons.<br>Because layouts vary, wrap-around navigation would behave inconsistently.<br>ES-DE instead provides navigation shortcuts:<br>• **L1 / Page Up** - jump up 6 rows in menus, 10 in gamelists<br>• **R1 / Page Down** - jump down 6 rows in menus, 10 in gamelists<br>• **L2 / Home** - jump to top<br>• **R2 / End** - jump to bottom<br>See the official FAQ for more details: [ES-DE FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#why-cant-i-press-the-up-button-in-menus-to-jump-to-the-bottom-row-and-vice-versa). |


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

| Topic | Description |
|------|-------------|
| **Supported Scraping Services** | • [ScreenScraper](https://www.screenscraper.fr/) <br>  • [TheGamesDB](https://thegamesdb.net/) |
| **Scraping Settings Location** | **ES-DE Menu → Scraping** |
| **Official Guide** | See the [ES-DE Scraper Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping) for detailed documentation. |

### General Tips

| Topic | Description |
|------|-------------|
| **ScreenScraper vs TheGamesDB** | ScreenScraper is recommended in most cases.<br>TheGamesDB may work better for PC titles. |
| **ScreenScraper Account** | A ScreenScraper account is required.<br>Supporting them on Patreon enables faster downloads, higher daily limits, and priority scraping. |
| **Account Login** | Log in via **ES-DE Menu → Scraping → Account Settings**. |
| **Content Selection** | Choose what to scrape under **ES-DE Menu → Scraping → Content Settings**.<br>Each content type may consume several MB per game. |
| **Initial Scrape** | Perform a full scrape of your library first. |
| **Fix Missing Games** | Enable **Scraping → Other Settings → Interactive Mode → On** and **Auto-Accept Single Game Matches → On**.<br>Then scrape only games missing metadata. |
| **Name Adjustments** | If scraping fails, try simplifying ROM names (e.g., remove duplicate Japanese/English titles). |


### Scraped Data Management

| Topic | Description |
|------|-------------|
| **Scraped Data Location** | `~/retrodeck/ES-DE/downloaded_media` |
| **Move downloaded_media** | Use the **Move RetroDECK** option in the configurator. |
| **Copy to Another Device** | Yes. Copy the `downloaded_media` folder into the RetroDECK directory on the other device. |
| **Storage Full After Scraping** | Large media files can quickly consume storage. |

### Storage Cleanup Options

| Method | Description |
|------|-------------|
| **Automatic Cleanup** | **ES-DE Menu → Utilities → Orphaned Data Cleanup** (removes unused media). |
| **Manual Cleanup** | Manually delete large files (images/videos) from `~/retrodeck/ES-DE/downloaded_media`. |
| **Keep Everything** | Free space elsewhere or expand storage capacity. |

---

## Manual Media (Without Scraping)

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

## ScreenScraper FAQ

| Question | Answer |
|---------|--------|
| **I received a quota-related error after scraping** | ScreenScraper enforces a daily scraping quota, where each scraped item counts toward the daily limit.<br>You can either wait 24 hours for the quota to reset or support ScreenScraper financially to increase your daily quota. |
| **The server or service is down** | If ScreenScraper is unavailable, check the official [ScreenScraper website](https://www.screenscraper.fr/) for status updates and availability. |
| **I have donated—how do I get faster scraping?** | You must link your ScreenScraper account with your Patreon account.<br>Refer to the [ScreenScraper Patreon](https://www.patreon.com/screenscraper) page for detailed instructions. |
| **Scraping is very slow** | ScreenScraper offers multiple donation tiers that increase scraping speed by enabling additional download threads. |




---

## ES-DE User Guide Links

Here follows various quick bookmarks to specific section of the User Guide that is good to read and always updated with the lastest information.

## ES-DE User Guide Quick Links

| Section | Link |
|---------|------|
| **Navigation and UI Settings** | [General Navigation](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#general-navigation) |
|  | [UI Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#ui-settings) |
|  | [Other UI Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings) |
|  | [Sound Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sound-settings) |
| **Game Settings, Collections, and Filters** | [Game Options](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#game-options-menu) |
|  | [Game Collections](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#game-collections) |
|  | [Setting Alternative Emulator](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings-1) |
| **Scraper, Art, Videos, and Images** | [Scraper Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping) |
|  | [Scraper Accounts](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#account-settings) |
|  | [Content Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#content-settings) |
|  | [Custom Media Files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#manually-copying-game-media-files) |
|  | [Miximage Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#miximage-settings) |
|  | [Other Scraper Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings) |
|  | [Metadata Editor](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#metadata-editor) |


---
