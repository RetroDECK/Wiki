# FAQ: RetroDECK - General Questions

<img src="../../wiki_icons/retrodeck/rd_icon_circle_192x192.png">

## What does the "b" stand for in the versioning number?

It stands for Beta.

## What emulators and software is included in RetroDECK?

Check: [RetroDECK: What's included?](../wiki_about/what-is-included.md)

## Does RetroDECK include any games?

No games are included in RetroDECK at this moment.

## Will you include Open-Source games in the future?

As of version `0.9.0b` we have included PortMaster.

## Does RetroDECK include any Firmware or BIOS?

RetroDECK only includes those BIOS and Firmware that are Open-Source or Free to use. 

All others can never be done for legal reasons and the users needs to provide their own backups of Firmware or BIOS.

### Can you at least point me towards where I can find: Games, Firmware or BIOS?

For purchased titles we recommend that you use your own game backups and investigate how to extract the Firmware or BIOS from your own consoles.

Some games can be bought from itch.io, GOG and Steam.

## When does the next version of RetroDECK come out?

When it's ready.

### When does the version after the upcoming version come out?

After the upcoming version.

### When will version 1.0 of RetroDECK come out?

In the future.

## How do I connect my Pateron to Discord?

Check the [Pateron Article](https://support.patreon.com/hc/en-us/articles/212052266-Getting-Discord-access)

## What is flatpak?

Flatpak is a framework & an application packing method for distributing sandboxed desktop applications across various Linux distributions. 

Flatpak is also the primary recommend for distributing desktop applications on several immutable Linux Desktops distros including SteamOS from Valve, Bazzite and more.

It guarantees if Valve (or anyone else) makes major changes to the system in an OS update a flatpak like RetroDECK and its configurations will not be touched and will be contained.

Read more here: [Introduction to Flatpak](https://docs.flatpak.org/en/latest/introduction.html)

### RetroDECK is a sandbox?

RetroDECK only writes in these two folders: `~/retrodeck/` for roms/configurations/bios and a hidden folder located in `~/.var/net.retrodeck.retrodeck/` where all the config files and defaults are stored.

As everything is contained within those two folders it will not conflict if you decide to install an emulator from another source like `MAME` or `RetroArch` with your RetroDECK setup. Even if you uninstall RetroDECK all files there in are safe until you remove the `~/retrodeck/` folder. If you for some reason don't like the application after playing for a while you can easily move out your important files after an uninstall (or you can just reinstall RetroDECK again and start where you left off).

This approach of everything is in an all-in-one package will also allow RetroDECK to do tighter integrations with each bundled emulator in the future and expose all those settings when you are inside RetroDECK, so you do not need to go into Steam Decks desktop mode to do changes and tweaks. All things should be, in the long term, inside the application itself and you can already see a part of that inside the RetroDECK Configurator in the Tools menu.

## Why does RetroDECK need the filesystem=host permission?

`filesystem=host` is the only permission that allows you full access to `/media` and `/mnt`.

The users wants to be able to move or use files in different directories, sdcards and external disks in the file system.

We had a lower level permission before but with access to all the gaming devices and more things the flathub developers recommend us to raise the permission level.

The best solution would be if there where more granular permissions in flatpak and flathub:

- External storage devices
- General usb devices
- Gaming devices (often needs even more access).
- ETC..

We have provided feedback to the developers regarding this and they are looking into it for the future. As soon as more granular permissions are available we will switch to those.

## Are you related anyway to ES-DE?

RetroDECK and ES-DE are separate projects.

The projects are in open collaboration to give the best possible user experience.

We have a unique partnership where inside the ES-DE code is a section just for RetroDECK specific features.

[Read more on ES-DE FAQs](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#what-is-the-relationship-between-es-de-and-retrodeck)

## Will you add another front-end in the future like Pegasus or others?

We are always up for exploring more possibilities in the future.

## On other Emulation / Retro gaming solutions

### Why create RetroDECK when EmuDeck, Batocera and other solutions exists?

RetroDECK is older than EmuDeck as it was created later. Everyone can make what they want and have their own vision :)

The RetroDECK Team considers RetroDECK a in-between solution of EmuDeck and Batocera that fills a gap no one else is filling.

We hope that one day we can offer a complete `Batocera-like` experience right inside your operating system.

### Are you related anyway to Batocera?

RetroDECK and Batocera are separate projects.

We have good dialog together as we are active in several common forums. We also share knowledge or have discussions when we can.

#### Can I symlink Batocera roms folders with RetroDECK roms folder?

Batocera are using different names for roms system folders, it might be harder to do so. We recommend that you do it system by system and not the entire folder.

### Are you related anyway to EmuDeck?

RetroDECK and EmuDeck are separate projects.

#### What's the difference between RetroDECK and EmuDeck?

Apart of that from the user point of view EmuDeck and RetroDECK may sound similar but technically they're completely different.

EmuDeck is a shell script interface with a built-in collections of scripts that you run in the Steam Decks desktop mode that downloads and configures all the separate emulators & plugins for you from various sources using a built-in electron based gui. It uses several other external optional components as well such as EmuDecky a Decky plugin.

RetroDECK is an all-in-one application contained in a flatpak that is downloaded from Flathub with design philosophy that everything should be contained within the application itself. Easy to install and easy to remove.

#### Can I install RetroDECK if I have EmuDeck already?

Yes, as RetroDECK is completely standalone an you can run both if you wish.

#### Can I symlink EmuDeck roms folders with RetroDECK roms folder?

Maybe, we recommend that you do it system by system and not the entire folder.

### Batocera or EmuDeck or RetroDECK I still don't get it?

- [Batocera](https://batocera.org/) is a retro emulation operative system that you need to boot into separately (like from an SDCard) or replace your current OS.  For the Steam Deck you lose access to the SteamOS features and your emulation gaming is separate from your SteamOS gamemode gaming. Batocera has many years of development time, is a great mature OS with a lot of features RetroDECK don't offer yet.

- EmuDeck is a shell script interface that you download and run. The interface downloads & configures all the separate emulators & plugins for you from various sources for various operative systems and create a common linked folder structure in that system from the native emulator folders and ship their own configs.

- RetroDECK is an all-in-one application that should provide a preconfigured but modifiable environment to make it easy for both the new user and hardcore veteran to use. As RetroDECK is a flatpak and on Flathub, it allows the users to update the application from standard update methods already built into the operating system like KDE Discover or Gnome Software.  All the important userdata files are contained within one folder`~/retrodeck/` . The core design philosophy is that everything should be contained within the application itself.




