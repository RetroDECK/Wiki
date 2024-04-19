# FAQ: RetroDECK on Steam Deck

<img src="../..//wiki_images/graphics/steamdeck/rd_sd_screen6.jpeg" width="300">

<br>

## Can I launch RetroDECK from inside of the Steam Decks gamemode?

Yes, RetroDECK currently only supports Steam Deck's gamemode as it relies on Steam Controller configs.
To add it into Steam please check the second step of `Steam Deck 🕹️` - `Steam Deck - Installation and Updates`.

<br>

## XBOX games are slow on the Steam Deck

Unfortunately, thanks to missing optimizations, focusing on the Steam Deck and the hardware is limited in scope makes performance not great. Like most emulators they will make improvements over time, and we will follow the XBOX emulators' progress with great interest.

<br>

## The games are stuck at 30FPS on the Steam Deck
Press the [...] button on the Steam Deck, go into the Power menu and see if the Framerate Limit is set to 30FPS and set it to 60FPS or off.

<br>

## Fast forwarding is slow on the Steam Deck
Same as above: Check the Power menu Framerate Limit.

<br>

## Some emulators run slow when I got my Steam Deck docked to a 4k, 8k or above resolution monitor.
The Steam Deck does not have the power to play all the games in those high resolutions with a stable framerate. What you could do is go into desktop mode while docked and lower the resolution of the display to 1080p or 720p then return to gamemode.

<br>

## I am having problems with my brand-new SD card on my Steam Deck: It does not have the right file size

SD Cards can be tricky and there are a of scam cards out there. <br>
But when you are thinking about getting a new SD Card adhere to the following rules:

- Buy a reputable brand.
- Buy from a reputable store. If a deal sounds too good to be true, it is probably not true.
- Make sure you get a good card with good read and write speeds (what is the best card to get always changes, check current reviews online).
- When getting the card, the first thing you should do is format it. Press `Steam` - `Storage` - Select the Card - Press `Y` for Options - `Format Drive`.
- If you are going to name your SD Card avoid exotic names with special characters, emojis or spaces. Stick with to A to Z and 1 to 9.

There are several solutions listed online with quick search on how to test if a SD Card is fake for various OSes like the software `f3` for Linux.

## I am having problems with my SD card on my Steam Deck: It cannot be found since SteamOS 3.5

Some users of SteamOS have had a problem since the upgrade to SteamOS 3.5 by Valve.

It changed how the SD cards were mounted and gave them a new path and in some cases, this broke the auto-mounting on boot. There are several issues on Valves SteamOS github mentioning this.
This does not only affect RetroDECK but also all games and files you could have on the SD card.

The solution some found was either to reset the entire Steam Deck and reformat the card or to go into Desktop Mode on each boot and click on the card from the GUI to make sure it is mounted.
But these issues might be fixed in an upcoming update to SteamOS.

NOTE: Valve does not recommend users to fix it by editing fstab or using something link Gnome Disks or KDE Partition Manager to do so. This could break other things.

## I need to access a setting emulators GUI but the interface is to cramped

The recommend method is to do this in `Desktop Mode` and open the emulator via the `Configurator` to make changes.

But it is possible to do in `Game Mode`

Go to RetroDECK in Steam.

But before you launch RetroDECK click on the `⚙️` icon - `Properties` - `Shortcut` - `Game Resolution`

Set the Resolution from `Default` to `1920x1080`

Also turn on `Set resolution for internal and external display` (this might be hidden sometimes just go back one menu and go in again to make it show up).

After you are done making your changes, quit RetroDECK and reset `Game Resolution` to Default else you could have performance issues.
