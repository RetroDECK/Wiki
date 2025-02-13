# FAQ: RetroDECK - General Questions

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="75">

## What does the "b" stand for in the versioning number?

It stands for Beta.

## What software is included in RetroDECK?

Check: [RetroDECK: What's included?](../wiki_about/what-is-included.md)

## Does RetroDECK include any games?

No, RetroDECK does not include any games at this moment.

## Does RetroDECK include any Firmware or BIOS?

RetroDECK only includes those BIOS and Firmware that are Open-Source or Free to use. All others must be provided by the user.

### Can you at least point me towards where I can find: Games, Firmware, or BIOS?

For purchased titles, we recommend using your own game backups and investigating how to extract the Firmware or BIOS from your own consoles. Some games can be bought from itch.io, GOG, and Steam.

## When does the next version of RetroDECK come out?

When it's ready.

### When does the version after the upcoming version come out?

After the upcoming version.

### When will version 1.0 of RetroDECK come out?

In the future.

## How do I connect my Patreon to Discord?

Check the: [Pateron Article](https://support.patreon.com/hc/en-us/articles/212052266-Getting-Discord-access)

## What is flatpak?

Flatpak is a framework and application packaging method for distributing sandboxed desktop applications across various Linux distributions. 

It is the primary recommendation for distributing desktop applications on several immutable Linux Desktop distros, including SteamOS from Valve, Bazzite, and more. It ensures that if Valve (or anyone else) makes major changes to the system in an OS update, a Flatpak like RetroDECK and its configurations will not be affected.

Read more here: [Introduction to Flatpak](https://docs.flatpak.org/en/latest/introduction.html)

### RetroDECK is a sandbox?


RetroDECK only writes in two folders: `~/retrodeck/` for userdata and a hidden folder located in`~/.var/net.retrodeck.retrodeck/`where all the config files and defaults are stored. 

This containment ensures no conflicts with other systems you may install. 

If you uninstall RetroDECK, all userdata files remain safe until you manually remove the `~/retrodeck/` folder. 

This all-in-one package approach allows RetroDECK to integrate tightly with each bundled systems and expose all settings within the application itself.

## Why does RetroDECK need the filesystem=host permission?

`filesystem=host` is the only permission that allows full access to `/media` and `/mnt`. 

Users want to move or use files in different directories, SD cards, and external disks in the file system. We had a lower-level permission before, but with access to all the gaming devices and more things, the Flathub developers recommended raising the permission level. 

The best solution would be more granular permissions in Flatpak and Flathub, such as for external storage devices, general USB devices, and gaming devices. 

We have provided feedback to the developers, and they are looking into it for the future. As soon as more granular permissions are available, we will switch to those.

## On other Emulation / Retro gaming solutions

### Are you related anyway to ES-DE?

RetroDECK and ES-DE are separate projects, but they are in open collaboration to provide the best possible user experience. 

There is a unique partnership where a section of the ES-DE code is dedicated to RetroDECK-specific features.

[Read more on ES-DE FAQs](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md#what-is-the-relationship-between-es-de-and-retrodeck)

### Will you add another frontend in the future like Pegasus or others?

We are always open to exploring more possibilities in the future.

### Why create RetroDECK when EmuDeck, Batocera and other solutions exists?

RetroDECK is older than EmuDeck as it was created later.

Everyone can make what they want and have their own vision. 

The RetroDECK Team considers RetroDECK an in-between solution of EmuDeck and Batocera that fills a gap no one else is filling. 

We hope to offer a complete `Batocera-like` experience right inside your operating system one day.


### Are you related anyway to Batocera?

RetroDECK and Batocera are separate projects. We have a good dialogue and share knowledge in common spaces.

#### Can I symlink Batocera ROMs folders with RetroDECK ROMs folder?

Batocera uses different names for ROMs system folders, so it might be harder to do so. We recommend doing it system by system, not the entire folder.

### Are you related anyway to EmuDeck?

RetroDECK and EmuDeck are separate projects.

#### What's the difference between RetroDECK and EmuDeck?

From a user perspective, EmuDeck and RetroDECK may sound similar, but technically they are completely different. 

EmuDeck is a shell script interface that downloads and configures separate emulators and plugins for you. 

RetroDECK is an all-in-one application contained in a flatpak, designed to be easy to install and remove, with everything contained within the application itself.

#### Can I install RetroDECK if I have EmuDeck already?

Yes, RetroDECK is completely standalone, and you can run both if you wish.

#### Can I symlink EmuDeck ROMs folders with RetroDECK ROMs folder?

Maybe, but we recommend doing it system by system, not the entire folder.

### Batocera or EmuDeck or RetroDECK I still don't get it?

- [Batocera](https://batocera.org/) is a retro emulation operating system that you need to boot into separately or replace your current OS. For the Steam Deck, you lose access to SteamOS features, and your emulation gaming is separate from your SteamOS gamemode gaming. Batocera is a mature OS with many features that RetroDECK doesn't offer yet.

- EmuDeck is a shell script interface that downloads and configures separate emulators and plugins for you from various sources, creating a common linked folder structure.

- RetroDECK is an all-in-one application that provides a preconfigured but modifiable environment. It allows users to update the application from standard update methods built into the operating system. All important user data files are contained within one folder `~/retrodeck/`. The core design philosophy is that everything should be contained within the application itself.
