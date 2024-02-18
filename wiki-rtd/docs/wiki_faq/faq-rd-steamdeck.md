# FAQ: RetroDECK on Steam Deck

<img src="../..//wiki_images/graphics/steamdeck/rd_sd_screen6.jpeg" width="300">

<br>

## Can I launch RetroDECK from inside of the Steam Decks gamemode?
Yes, RetroDECK currently only supports Steam Deck's gamemode as it relies on Steam Controller configs.
To add it into Steam please check the second step of `Steam Deck 🕹️` - `Steam Deck - Installation and Updates`.

<br>

## XBOX games are slow on the Steam Deck
Unfortunately on thanks to missing optimizations focusing on the Steam Deck and the hardware is limited in scope makes performance not great. Like most emulators they will get improvements over time and we will follow the XBOX emulators progress with great interest.

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

## I'm having problems with my brand new SD card on my Steam Deck: It does not have the right file size

SD Cards can be tricky and there are a of scam cards out there. <br>
But when you are thinking about getting a new SD Card adhere to the following rules:

- Buy a reputable brand.
- Buy from a reputable store. If a deal sounds to good to be true, it is probably not true.
- Make sure you get a good card with good read and write speeds (what is the best card to get always changes, check current reviews online).
- When getting the card the first thing you should do is format it. Press `Steam` - `Storage` - Select The Card - Press `Y` for Options - `Format Drive`.
- If you are going to name your SD Card avoid exotic names with special characters, emojis or spaces. Stick with to A to Z and 1 to 9.

There are several solutions listed online with quick search on how to test if a SD Card is fake for various OSes like the software `f3` for Linux.

## I'm having problems with my SD card on my Steam Deck: It can't be found since SteamOS 3.5

Some users of SteamOS have had a problem since the upgrade to SteamOS 3.5 by Valve.

It changed how the SD cards where mounted and gave them a new path and in some cases this broke the auto-mounting on boot. There are several issues on Valves SteamOS github mentioning this.
This does not only affect RetroDECK but also all games and files you could have on the SD card.

The solution some found was either to reset the entire Steam Deck and reformat the card or to go into Desktop Mode on each boot and click on the card from the GUI to make sure it is mounted.

But these issues might be fixed in a upcoming update to SteamOS.

NOTE: Valve does not recommend users to fix it by editing fstab or using something link Gnome Disks or KDE Partition Manager to do so. This could break other things.