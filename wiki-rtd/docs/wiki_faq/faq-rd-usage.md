# FAQ: RetroDECK - Usage Questions

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="75">

## Do I Need to Partition or Format My Disk/SD Card for RetroDECK?

No, RetroDECK installs as a flatpak. Just install it like any other app and launch it from your desktop or Steam library.

## Where is RetroDECK Installed?

`~/retrodeck`: Contains user data like ROMs, mods, and themes. This folder is not deleted during uninstallation.

`~/.var/app/net.retrodeck.retrodeck`: Contains the core flatpak, emulators, and settings. This folder is removed during uninstallation.

## Can I Move the RetroDECK Folders?

Yes, you can move it using the RetroDECK Configurator's "Move Tools".

Read more on: [RetroDECK Configurator 🛠️](../wiki_configurator_guides/configurator/configurator.md)

## Is There a Way to Reset RetroDECK?

Yes, you can reset various parts of the software using the RetroDECK Configurator's reset functions.

Read more on: [RetroDECK Configurator 🛠️](../wiki_configurator_guides/configurator/configurator.md)

## How Do I Update RetroDECK?

Check the guide at: [How-to: Update RetroDECK](../wiki_management/retrodeck-update/retrodeck-update.md)

## How Do I Remove RetroDECK?

Check the guide at: [How-to: Remove RetroDECK ](../wiki_management/retrodeck-remove/retrodeck-remove.md)

## How do I move RetroDECK to a New Device?

Check the guide at: [How-to: Move RetroDECK to a New Device](../wiki_management/retrodeck-move/retrodeck-move.md)

## Where to Find Logfiles?

You can find the logfiles in the `retrodeck/.logs/` folder.

## Does RetroDECK ship with Stable or Nightly Versions of Systems?

RetroDECK ships with the best version for running games. For bleeding-edge emulators like RPCS3, it ships nightly versions. For RetroArch, it ships stable releases, but uses nightly versions of cores if no stable version exists.

## Recovering Deleted Folders

If you've accidentally deleted folders (BIOS, Saves, etc.) under `retrodeck/`, you can get them back by doing a Full Reset and redoing the initial setup.

## I have .bin + .cue files and the games shows up twice in ES-DE

We recommend that you use the built-in compression tool in the configurator to compress the games into another format like `.chd`. You will only get one entry and you will also save space.
