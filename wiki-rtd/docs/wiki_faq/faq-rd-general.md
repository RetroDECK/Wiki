# FAQ: RetroDECK - General Questions

<img src="../../wiki_icons/retrodeck/rd_icon_circle_192x192.png">

## What does the "b" stand for in the versioning number?
It stands for Beta.

## What is RetroDECK cooker?
Cooker is a bleeding edge snapshot of the current commits, the action of uploading code to GitHub is called commit.

As you can understand, the code may not be always reviewed and so the cooker it's unstable by its nature, it's just suggested to testers or developer to try bleeding edge function or to contribute.

More info on the pinned post in #💙-i-want-to-help on our [Discord Server](https://discord.gg/Dz3szYsP8g).
We don't support the cooker on user side.

### Why the name cooker? 🍲
That's what cooking in the pot at this moment and not yet ready to be served (released). This name was also used by Linux Mandrake and Mandriva for the bleeding edge channel.

## What emulators and software is included in RetroDECK?
Check: [RetroDECK: What's included?](../wiki_general/what-is-included.md)

## Does RetroDECK include any games?

No games are included in RetroDECK at this moment.

## Will you include Open-Source games in the future?

We are looking into a ports downloader for a future update.

## Does RetroDECK include any Firmware or BIOS?

RetroDECK only includes those BIOS and Firmware that are Open-Source. All others can never be done for legal reasons.

### Can you at least point me towards where I can find: Games, Firmeware or BIOS?

For purchased titles we recommend that you use your own game backups and investigate how to extract the Firmware or BIOS from your own consoles.

## When does the next version of RetroDECK come out?

When it's ready.

### When does the version after the upcoming version come out?

After the upcoming version.

### When will version 1.0 of RetroDECK come out?7

In the future.

## Are you related anyway to Batocera?

No, but RetroDECK had some dialog before the project started with some of the Batocera crew if there were any plans to start a Batocera non-OS application (there were no plans at that moment and their focus is to make the best retro gaming operative system).

RetroDECK and Batocera also have good dialog together with representatives of each project inside the internal development channels.

## Are you related to EmuDeck?

No, the two projects are not related.

### What's the difference between RetroDECK and EmuDeck?

Apart of that from the user point of view EmuDeck and RetroDECK may sound similar but technically they're completely different.

EmuDeck is a shell script interface that you run in the Steam Decks desktop mode that downloads and configures all the separate emulators & plugins for you from various sources using a built-in electron based gui.

RetroDECK is an all-in-one application contained in a sandboxed environment called "flatpak", that is downloaded from Discover (Flathub). This is Valves and other Linux desktops recommended way of distributing applications on the Steam Deck and Linux desktop in a safe way. It guarantees for example even if Valve makes major changes to the file system in a SteamOS update, RetroDECK and its configurations will not be touched and will be safe.

RetroDECK only writes in these two folders: `~/retrodeck` for roms/configurations/bios etc.. And an hidden flatpak folder located in `~/.var/net.retrodeck.retrodeck`.

As everything is contained within those two folders it will not conflict if you decide to install an emulator from another source like Yuzu or RetroArch with your RetroDECK setup. Even if you uninstall RetroDECK all your roms/bios/saves/etc.. are safe until you remove the `~/retrodeck` folder. If you for some reason don't like the application after playing for a while you can easily move out your important files after an uninstall (or you can just reinstall RetroDECK again and start where you left off).

This approach of everything is in an all-in-one package will also allow RetroDECK to do tighter integrations with each bundled emulator in the future and expose all those settings when you are inside RetroDECK, so you do not need to go into Steam Decks desktop mode to do changes and tweaks. All things should be, in the long term, inside the application itself and you can already see a part of that inside the RetroDECK Configurator in the Tools menu.


### Can I install RetroDECK if I have EmuDeck already?

Yes, as RetroDECK is completely standalone.

### Why create RetroDECK when EmuDeck and other solutions exists?

RetroDECK is older than EmuDeck, EmuDeck was created later, and we wanted to make a one-in-all application.

### Batocera or EmuDeck or RetroDECK I still don't get it?

- Batocera is a retro emulation operative system that you need to boot into separately (like from an SDCard) or replace your current OS.  For the Steam Deck you lose access to the SteamOS features and your emulation gaming is separate from your SteamOS gamemode gaming. That said; Batocera has many years of development time, is a great mature OS with a lot of features.

- EmuDeck is a shell script interface that you download and run. The interface downloads & configures all the separate emulators & plugins for you from various sources for various operative systems and create a common linked folder structure in that system from the native emulator folders.s

- RetroDECK is an all-in-one application that should provide a preconfigured but modifiable environment to make it easy for both the new user and hardcore veteran to use.  The goal is to provide everything you need in one application without the need to download tons of separate apps on your system, only one thing to update. As RetroDECK is a flatpak and on Flathub, it allows the users to update the application from standard update methods already built into the operating system like KDE Discover or Gnome Software.  All the important userdata files (roms/bios/scarped things/etc..) are contained within one folder and not all over the filesystem.

You can see RetroDECK as the in-between of EmuDeck and Batocera. We hope that one day we can offer a complete Batocera-like experience right inside your operating system.

### What is your relationship with ES-DE?

ES-DE and RetroDECK are separate projects, but we collaborate to give the best possible user experience.
We have a unique partnership where inside the ES-DE code is a section just for RetroDECK specific features.

[Read more on ES-DE FAQs](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#what-is-the-relationship-between-es-de-and-retrodeck)
