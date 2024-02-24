# FAQ: RetroDECK - Usage Questions



<img src="../../wiki_icons/retrodeck/rd_icon_circle_192x192.png">



## What to use? In the game Saves or States?

Always use in-game saves and treat the states as a compliment to the main save. As emulators update with new versions, states of old versions could be incompatible and simply not work. Never rely only on states!



## Do I have to partition or format my disk/sdcard to install RetroDECK?

No, partitioning or formatting is not needed at all. RetroDECK (differently from AmberELEC, Batocera and others) comes as a flatpak. Just install it as any other application and launch it from your desktop and/or Steam library.

## Where is RetroDECK installed?

There are two primary folders:

`~/retrodeck`

- The location of this folder is where you set it during installation.

- This contains all the user data that the users put into RetroDECK like ROMs, Mods, Texturepacks, Downloaded Content, Themes etc.

- The folder is not deleted during an uninstallation of RetroDECK and must be manually deleted, as all the users valuble files are there.

`~/.var/app/net.retrodeck.retrodeck/`

- This is the main flatpak folder, under the hidden `./var/app/` folder you need to show hidden folders and files to see it.

- This contains all the emulators, emulationstation and other settings that make RetroDECK work.

- During uninstallation, this folder is removed.



## Can I move the ROMs folder to another place?

Yes, you can do so inside the configurator and the `Move RetroDECK` option.



## Is there a way to reset RetroDECK?

Yes, you can reset various parts of the software using the RetroDECK Configurator's reset functions.

Read more on: [RetroDECK Configurator 🛠️](../wiki_general/configurator.md)



## How do I uninstall RetroDECK?

On the Steam Deck first put itinto Desktop Mode `Steam button`  `Power`  `Switch to Desktop`

* Go into Discover or you software manager.

* Press the `Installed` tab and find RetroDECK

* Press the `Uninstall` button

* Manually backup then remove the `~\retrodeck` folder. Warning! Make a backup of your data roms/bios/saves etc if you want to save them else, they will be gone.


## Does uninstalling RetroDECK remove my roms, bios and saves/states?

No, if you do not manually delete the `~\retrodeck` folder and its content your data is safe. You could uninstall RetroDECK and install it again and keep going.



## How can I move RetroDECK to a different device like Steam Deck OLED or a new Linux PC?

Yes, check over at [How to: Move RetroDECK to a new device](../wiki_management/retrodeck-move.md)



## Where can I find the logfiles?

In `~/retrodeck/.logs/retrodeck.log`



## Can I add a single game to my Steam Library?

We are working on this feature. Meanwhile you can achieve this manually.

Example of a launch script to launch to launch a Wii game called Baloon World:


```

flatpak run --command=dolphin-emu-wrapper net.retrodeck.retrodeck -e "/run/media/mmcblk0p1/retrodeck/roms/wii/Baloon World.rvz" -b

```



## After installing RetroDECK manually, Discover is not opening or giving me some errors?

This bug appears only when installing RetroDECK manually and not from Discover. The discover release is suggested for all the users.
However, you can run this to fix it: `flatpak remote-delete retrodeck-origin`



## I disabled Steam Input from RetroDECK in Steam and now controls do not work anymore.

RetroDECK is using Steam Input so for all the controller profiles disabling it is not recommend. If you can not enable Steam Input again and the Steam GUI is buggy you have to do this:

1. Remove RetroDECK as `A Non-Steam Game` from the `Library`
2. Add it again via  `Library` - `Add a Non-Steam Game to My Library` (or use BoilR).



## How do I update RetroDECK?

Updates to RetroDECK are handled automatically via your distributions software manager when there is an updated version released like KDE's Discover or Gnome Software.
On the Steam Deck you can also install the AutoFlatpaks plugin for Decky to be able to update in gamemode.

If you want to update from the terminal, you can type:

`flatpak update`



### I have not updated RetroDECK for a very very long time, can I safely update?

It is always recommended to keep RetroDECK updated.

But if you have not updated in very long time (a year or more) it might be better to just uninstall and reinstall RetroDECK from your software manager instead of doing the upgrade, as it can take longer.

If you are even several major versions behind (example: going from 0.4b to 0.8b) we recommend uninstalling and reinstalling.

## How do I update a specific emulator in RetroDECK?

You cannot in a straightforward way do that without breaking several things. RetroDECK builds many emulators and adds RetroDECK specific features on top of them and makes it into one application as is the goal of the project.

But that said we are looking into allowing a limited scope of custom emulator installation for those that have early access versions that are payed like Yuzu and the users really want to add in.

The custom installation will still be more limited than the one we ship with RetroDECK by default and might have less features than normal Yuzu in term of hotkey support and other things that the user will need to configure manually.

## Do you only ship stable versions of the emulators or nightly versions?

RetroDECK ships with the version that is the best for running the games on a case-by-case basis.

For all bleeding edge emulators like Yuzu or RPCS3 it's nightly version we ship.

But for things like RetroArch it is only the stable release of the application we ship. When it comes to RetroArch Cores they always use their stable version, but if there is no stable version of a core within a stable release of RetroArch the nightly version of that core will be used instead.

Even before we release a new update for RetroDECK the nightly versions of the emulators will be tested to make sure they work, and no serious issues are known to exist in them.
There have been instances where the nightly version of an emulator has been completely broken and we want to avoid shipping that with RetroDECK.


## Will you implement Cloud Sync / Backup?

Yes, that is the plan in a future update. We will not do our own infrastructure but allow users to their own services via easy built-in tools in the Configurator.

### What can I use now while we wait for Cloud Sync / Backup?

There exist several open-source options, here is a few of them:

- [Rsync](https://linux.die.net/man/1/rsync)

- [NextCloud](https://nextcloud.com/)

- [Syncthing](https://github.com/syncthing/syncthing)

- [Syncthing GTK GUI](https://flathub.org/apps/me.kozec.syncthingtk)

