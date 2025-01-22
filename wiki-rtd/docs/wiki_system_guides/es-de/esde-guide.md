# EmulationStation Desktop Edition: User Guide

<img src="../../../wiki_images/logos/es-de-logo.png" width="150">

ES-DE is RetroDECK's primary frontend.

### ES-DE Links:

[ES-DE Webpage](https://es-de.org/)

[ES-DE Gitlab](https://gitlab.com/es-de/emulationstation-de)

[ES-DE User Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md)

[ES-DE FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)

[ES-DE: Theme List](https://gitlab.com/es-de/themes/themes-list)

[ES-DE Development: Translations](https://gitlab.com/es-de/emulationstation-de/-/blob/master/TRANSLATIONS.mdl)

[ES-DE Development: Roadmap](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ROADMAP.md)

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Top Folder | `retrodeck/ES-DE/`   |   |
| Collection Folder | `retrodeck/ES-DE/collections/`  |  Usermade ES-DE collections  |
| Custom Systems Folder | `retrodeck/ES-DE/custom_systems/`  |  Usermade ES-DE custom systems  |
| Media Folder | `retrodeck/ES-DE/downloaded_media/`  |  Scraped media files  |
| Gamelists Folder | `retrodeck/ES-DE/gamelists/`  |  Gamelists  |
| Themes Folder | `retrodeck/ES-DE/themes/`  |  Downloaded themes |

## ES-DE General Usage

### How-to switch language in ES-DE?

ES-DE is by default set to respect your systems language if supported by the frontend. 

If you want to change the locale:

1. Open the `ES-DE Menu`.
2. `ES-DE Configurations` -> `UI Settings` -> `Application Language`.
3. Set the language you want. 

### How-to change the Emulator for a whole system?

1. Open the `ES-DE Menu`.
2. Navigate to `ES-DE Configurations` -> `Other Settings` -> `Alternative Emulators`
3. A list of systems will be shown and select the system you want to change.
4. Change the default emulator. 

### How-to change the Emulator for a spefic game?

1. Navigate to the game you want to change emulator for. 
2. Press `Select` -> `EDIT THIS GAME'S METADATA` -> `Alternative Emulator`
3. Change the emulator.
4. Press `SAVE`.

### Why can't I press the up button in menus to jump to the bottom row and vice versa?

[ES-DE: Awnser](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#why-cant-i-press-the-up-button-in-menus-to-jump-to-the-bottom-row-and-vice-versa)

```
Why this does not work is that menus in ES-DE are not lists but grids.

A grid can not only contain selectable rows with text but also other features like buttons. <br>
For example, in one part of the interface there could just be a list of ROMs but in another there could be various button elements as in the scraping menu.

Enabling the up and down buttons to wrap around would therefore not work consistently as it would sometimes jump to the last row of the grid or to a button at random depending on the layout of the grid.
Every time it would require a different number of button presses depending on the grid layout.

This type of contextual navigation feels very weird in practice, especially when you must press the up button twice to find the underlying cause of a list in some lists but more times in others depending on the button layout.
```

The solution ES-DE opted for instead is:

- `L1` or `Page Up` Jumps up 6 rows in menus and 10 rows in gamelists.
- `R1` or `Page Down` Jumps down 6 rows in menus and 10 rows in gamelists.
- `L2` or `Home` Jumps to the top of the menu or gamelist.
- `R2` or `End` Jumps to the bottom of the menu or gamelist.

## ES-DE Themes

ES-DE comes with several themes ready to download.

Check the [ES-DE: Theme List](https://gitlab.com/es-de/themes/themes-list) for a list of them.

### How-to switch between themes?

Go to `ES-DE Menu` -> `ES-DE Configurations` -> `UI Settings` -> `Theme Set` to select the theme you want to use.

### How do I add additional themes?

**From the Theme Downloader**

Go into `ES-DE Menu` -> `ES-DE Configurations` -> `UI Settings` -> `Theme Downloader` from there you can download a wide array of themes.

**From the Internet**

If you find a theme on the internet you would like to use that is not in the `Theme Downloader`.

**NOTE:** Before you begin always check if the theme is compatible with ES-DE.

1. Download the theme.
2. Extract it if it is compressed (.zip or .7z).
3. Put the extracted folder into `retrodeck/ES-DE/themes/`.
4. The end result should look like `retrodeck/ES-DE/themes/<downloaded theme folder>`.
5. Launch RetroDECK and select the theme as normal.

### "Why does the theme I am using not work?" or "Why does the layout look broken?" (black screen with blue text)?

- Please make sure you are specifically using a theme that is compatible with [ES-DE](https://www.es-de.org).
- If you are trying to use a theme that was built for Batocera it will not be compatible.
- ES-DE uses a unique theme engine so themes are not directly portable from Batocera.

See the ES-DE's Guide 📘 for more details.


### Why does the theme layout look squished?

- The Steam Deck has a screen aspect ratio of `16:10` and most themes that you will find are built for an aspect ratio of `16:9`.  Depending on the theme's design this may cause the layout to appear squished when using it on the Steam Deck's display.

- All the included themes are built for 16:10 aspect ratio so you should not see this issue with any of them; however, if you are downloading a theme from another source there is a chance this can occur for you.

- There are 2 ways to fix this if it does occur: (1) see if a specific version was built for `16:10` aspect ratio and use that instead or (2) edit the theme to make it compatible with that aspect ratio.


## ES-DE Scraping

Scraping allows you to make the games look "pretty" with coverarts, icons, discimages and more.

ES-DE supports two scraping services:

- [Screenscraper](https://www.screenscraper.fr/)
- [THEGAMESDB](https://thegamesdb.net/) 

Read up on the ES-DE userguide on scraping here:

[ES-DE Scraper guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping)

You can find the scraping settings in the ES-DE interface under `ES-DE Menu` ->  `Scraping`.

### Tips on Scraping

- On most occasions you want to use ScreenScraper and not TheGamesDB. But for PC titles scraping from TheGamesDB might be better.
- You will need to register an account on [ScreenScraper.fr](https://www.screenscraper.fr/) to scrape (support them on Patreon for faster downloads, more scrapes per day and priority scraping).
- Login to your Screenscraper.fr account inside of the ES-DE interface in RetroDECK
- Choose what content you want to scrape (remember that each content you choose could take up several mb of data per game).
- Do an initial scrape of all the games you want to scrape.
- If some games are missed do a more narrow scraping by enabling `Scraper -> Other Settings -> Interactive Mode -> On`& Scraper -> `Other Settings -> Auto-Accept Single Game Matches -> On` and choose to scrape by games missing metadata. This will allow you to select each game from a list and also tweak the searches of the missing games.
- In some cases you need to remove certain aspects of the name like if a rom comes both with a Japanese name and English name, you could try to remove one of the names to find a better result.

### Where is my scraped data?

In: `~/retrodeck/ES-DE/downloaded_media` folder.

### Can I move the downloaded_media folder?

You can move it with the the move RetroDECK option inside the configurator.

### Can I copy the downloaded_media folder to another device?

Yes, just copy it into the other device RetroDECK folder.

### My systems storage ran out after scraping...

**Try an automatic cleanup:**

`ES-DE Menu` -> `Utilties` - `Orphaned Data Cleanup`

This will remove media files that have no games associated with them.

**Try manual cleanup:**

You can clean out images and videos that takes a lot of space under: `~/retrodeck/ES-DE/downloaded_media`.

**But I still want them all...**.

The only way to still keep them is either delete something else from the storage or buy more storage.


### How-to: Add manual game media files without scraping

**TIP**

The ES-DE User Guide has their own guide and a handy speadsheet:

- [Instructions: Manually copying game media files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md?ref_type=heads#manually-copying-game-media-files) 
- [Spreadsheet: Media Types in ES-DE](https://docs.google.com/spreadsheets/d/18VJAL44aNxsFOd4pVAONmdWwa7srCSzr2Z2SJEiNKnE/edit?gid=1812680930#gid=1812680930)

**The Guide:**

If you already have a library of game media (images, videos and PDF manuals) you can manually copy these files into RetroDECK (ES-DE). 

**Requirements & Tips:**

- Remember that on Linux filenames are case sensitive.
- The file extensions must be in lower case in ES-DE (`.png` instead of `.PNG` / `.Png`).
- The media files names must correspond exactly to the game files name.
- For directories interpreted as files games (like ScummVM) you will need to add the folder file extension to the media file name example: `dig.scummvm.png`.
- Supported image file extensions are: `.jpg` and `.png`.
- Supported document file extensions are: `.pdf`.
- Supported video file extensions are: `.avi` , `.mkv` , `.mov` , `.mp4` and `.wmv`.

The default media directory is: 

```
~/retrodeck/ES-DE/downloaded_media/<system name>/<media type>/<files goes here>
```

The following media type directories are supported: 

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

#### Example adding media files to games

**A multi-disk game or a single game:**

You want to add a screenshot and a video to the game:

```
~/retrodeck/roms/c64/Multidisk/Last Ninja 2/Last Ninja 2.m3u
```

Then the media files structure needs to be the following:

Screenshots: 

```
~/retrodeck/ES-DE/downloaded_media/c64/screenshots/Multidisk/Last Ninja 2/Last Ninja 2.jpg
```

Videos: 

```
`~/retrodeck/ES-DE/downloaded_media/c64/videos/Multidisk/Last Ninja 2/Last Ninja 2.mp4`
```

**A Directories interpreted as files game:**

You want to add a screenshot and a video to the game:

```
~/retrodeck/roms/scummvm/dig.scummvm
```

The media files for this directory which is interpreted as a file will be:

Screenshots:

```
`~/retrodeck/ES-DE/downloaded_media/scummvm/screenshots/dig.scummvm.png
```

Videos:

```
~/retrodeck/ES-DE/downloaded_media/scummvm/videos/dig.scummvm.mp4
```





## Screenscraper FAQ

### I got some weird error message about quota after scraping?

The error message mentions something about quota. You have a quota limit on how much you can scrape each day from [Screenscraper](https://www.screenscraper.fr/) where each item you scrape counts as 1 quota of the daily total.

You can pay them to get a bit more daily quota and show your support or just wait 24 hours.

### The Server or Service is down?

The service is down, check the [Screenscraper Website](https://www.screenscraper.fr/) when they get back up.

### I have donated how do I get faster scraping?

You have to associate your Screenscraper Account with your Pateron Account.

Check [Screenscraper Pateron](https://www.patreon.com/screenscraper) for instructions.

### The scraping is very slow...

[Screenscraper](https://www.screenscraper.fr/) offers different types of donations that can increase your speed with extra threads.




## ES-DE User Guide Links

Here follows various quick bookmarks to specific section of the User Guide that is good to read and always updated with the lastest information.

### Navigation and UI Settings

[ES-DE: General Navigation](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#general-navigation)

[ES-DE: UI Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#ui-settings)

[ES-DE: Other UI settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings)

[ES-DE: Sound Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sound-settings)

### Game settings, collections and filters

[ES-DE: Game Options](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#game-options-menu)

[ES-DE: Game Collections](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#game-collections)

[ES-DE: Setting Alternative Emulator](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings-1)

### Scraper, art, videos and images

[ES-DE: Scraper Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scraping)

[ES-DE: Scraper Accounts](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#account-settings)

[ES-DE: Content Settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#content-settings)

[ES-DE: Custom Media Files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#manually-copying-game-media-files)

[ES-DE: Miximage settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#miximage-settings)

[ES-DE: Other scraper settings](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#other-settings)

[ES-DE: Metadata editor](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#metadata-editor)

