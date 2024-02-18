# FAQ: ES-DE Frontend General - Questions

<img src="../../wiki_images/logos/es-de-logo.png" width="150">

## Why can't I press the up button in menus to jump to the bottom row and vice versa?

[Source](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#why-cant-i-press-the-up-button-in-menus-to-jump-to-the-bottom-row-and-vice-versa)

Why this does not work is that menus in ES-DE are not lists but grids.

A grid can not only contain selectable rows with text but also other features like buttons. <br>
For example in one part of the interface there could just be a list of roms but in another there could be various button elements as in the scraping menu.

Enabling the up and down buttons to wrap around would therefore not work consistently as it would sometimes jump to the last row of the grid or to a button seemingly at random depending on the layout of the grid. <br>
Every time it would requiring a different number of button presses depending on the grid layout.

This type of contextual navigation feels very weird in practice, especially when you have to press the up button twice to get to the bottom of a list in some lists but more times in others depending on the button layout.

The solution we opted for instead is:

- `L1` or `Page Up` Jumps up 6 rows in menus and 10 rows in gamelists.
- `R1` or `Page Down` Jumps down 6 rows in menus and 10 rows in gamelists.
- `L2` or `Home` Jumps to the top of the menu or gamelist.
- `R2` or `End` Jumps to the bottom of the menu or gamelist.


## How can I add more themes?
ES-DE comes with a built in Theme Downloader `UI Settings  Theme Downloader`. But you can also add themes manually in the: `~/retrodeck/themes` folder.

<br>

## Is there a list of themes?

Yes, check here: [ES-DE: Themes List](https://gitlab.com/es-de/themes/themes-list).

## How do you switch between themes inside of RetroDECK?
 You can switch between them by open the menu and then navigate to `UI Settings  Theme Set` to select the theme you want to use.

<br>

## "Why does the theme I am using not work?" or "Why does the layout look broken?" (black screen with blue text)?
- Please make sure you are specifically using a theme that is compatible with [ES-DE](https://www.es-de.org).
- If you are trying to use a theme that was built for Batocera it will likely not be compatible.
- ES-DE uses a unique theme engine so themes are not directly portable from Batocera.

See the ES-DE's Guide 📘 for more details.

 <br>

## Why does the theme layout look squished?
- The Steam Deck has a screen aspect ratio of `16:10` and most themes that you will find are built for an aspect ratio of `16:9`.  Depending on the theme's design this may cause the layout to appear squished when using it on the Steam Deck's display.

- All of the included themes are built for 16:10 aspect ratio so you should not see this issue with any of them; however if you are downloading a theme from another source there is a chance this can occur for you.

- There are 2 ways to fix this if it does occur: (1) see if a specific version was built for `16:10` aspect ratio and use that instead or (2) edit the theme to make it compatible with that aspect ratio.

<br>


## Can I manually add custom game images/videos/media for games that I can not scrape?
Yes, check the file structure over at Emulationstation DE's user guide on gitlab.
[Manually copying game media files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#manually-copying-game-media-files)

<br>

## Where is my scraped data?
In: `~/retrodeck/downloaded_media` folder.

<br>

## I got some weird error message about quota after scraping!
The error message mentions something about quota. You have a quota limit on how much you can scrape each day from [Screenscraper](https://www.screenscraper.fr/) where each item you scrape counts as 1 quota of the daily total.
You can pay them to get a bit more daily quota and show your support or just wait 24 hours.

<br>

## The Scraper said: The Server or Service is down?
The service is down, check [Screenscraper](https://www.screenscraper.fr/) when they get back up.

<br>

## Can I only scrape one game or can I narrow down the scraping method?
Yes, check the `EmulationStation-DE Guide 📘`  for more details.

<br>

## Can I move the downloaded_media folder?
 You can move it with the the move RetroDECK option inside the configurator.

<br>

## Can I copy the downloaded_media folder to another device?
Yes, just copy it into the other device RetroDECK folder.

<br>

## The scraping is very slow...
[Screenscraper](https://www.screenscraper.fr/) offers different types of donations that can increase your speed with extra threads.

<br>

## My systems storage ran out after scraping...
You can clean out images and videos that takes a lot of space under: `~/retrodeck/downloaded_media`.

<br>


### But I still want them...
The only way to still keep them is either delete something else from the storage or buy more storage.

<br>
