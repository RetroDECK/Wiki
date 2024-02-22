# FAQ: RetroDECK - Usage Questions

<img src="../../wiki_icons/retrodeck/rd_icon_circle_192x192.png">

## Saves vs States what to use?

Always you in-game saves before states. <br>
The states can stop working when emulators updates as past states could not be compatible with newer versions. Treat the states as a compliment to the main save.


## Do I have to partition or format my disk/sdcard to install RetroDECK?
No, partitioning or formatting is not needed at all. RetroDECK (differently from AmberELEC, Batocera and others) comes as a flatpak. Just install it as any other application and launch it from your desktop and/or Steam library.

<br>

## Where is RetroDECK installed?

There are two primary folders:

`~/retrodeck`

- The location of this folder is where you set it during installation.
- This cointains all of the userdata that the users put into RetroDECK like: ROMs, Mods, Texturepacks, Downloaded Content, Themes etc.
- The folder is not deleted during a uninstallation of RetroDECK and must be manually deleted, as all the users valuble files are there.

`~/.var/app/net.retrodeck.retrodeck/`

- This is the main flatpak folder, under the hidden `./var/app/` folder you need to show hidden folders and files to see it.
- This cointains all of the emulators, emulationstation and other settings that make RetroDECK work.
- During uninstallation this folder is removed.

## Can I move the ROMs folder to another place?
Yes, you can do so inside the configurator and the `Move RetroDECK` option.

<br>

## Is there a way to reset RetroDECK?
Yes, you can reset various parts of the software using the RetroDECK Configurator's reset functions.<br>
Read more on: [RetroDECK Configurator 🛠️](../wiki_general/configurator.md)

Or if you want to reset from CLI you can read up on:<br>
`Development 🖥️` - [CLI Guide](../wiki_development/general/cli-guide.md)


 <br>

## How do I uninstall RetroDECK?
**On the Steam Deck:**

Put the Steam Deck into Desktop Mode `Steam button`  `Power`  `Switch to Desktop`

* Go into Discover
* Press the `Installed` tab and find RetroDECK
* Press the `Uninstall` button
* Manually backup then remove the `~\retrodeck` folder. Warning! Make a backup your data roms/bios/saves etc if you want to save them else they will be gone.

<br>

## Does uninstalling RetroDECK remove my roms, bios and saves?
No, as long as you don't manually don't delete the `~\retrodeck` folder and it's content your data is safe. You could uninstall RetroDECK and install it again and keep going.

<br>

## How can I move RetroDECK do a different device like Steam Deck OLED or a new Linux PC?
Yes, check over at [How to: Move RetroDECK to a new device](../wiki_management/retrodeck-move.md)

<br>

## Where can I find the logfiles?
In `~/retrodeck/.logs/retrodeck.log`

<br>

## Can I add a single game to my Steam Library?
We are working on this feature. Meanwhile you can achieve this manually.
Example of a launch script to launch to launch a Wii game called Baloon World:

 ```
 flatpak run --command=dolphin-emu-wrapper net.retrodeck.retrodeck -e "/run/media/mmcblk0p1/retrodeck/roms/wii/Baloon World.rvz" -b
 ```

<br>

## After installing RetroDECK manually, Discover is not opening or giving me some errors?
This bug is appearing only when installing RetroDECK manually and not from Discover. The discover release is suggested for all the users.
However you can run this to fix it: `flatpak remote-delete retrodeck-origin`

<br>

## I disabled Steam Input from RetroDECK in Steam and now controls do not work anymore.
RetroDECK is using Steam Input so for all the controller profiles disabling it is not recommend. If you can not enable Steam Input again and the Steam GUI is buggy you have to do this:

1. Remove RetroDECK as `A Non-Steam Game` from the `Library`
2. Add it again via  `Library` - `Add a Non-Steam Game to My Library` (or use BoilR).

<br>

## How do I update RetroDECK?
Updates to RetroDECK is handled automatically via your software manager when there is a new version released.

Or if you want to update from the terminal you can type:
`flatpak update`

<br>

## How do I update a specific emulator in RetroDECK?
You can't in a easy way do that without breaking several things. RetroDECK builds many emulators and add RetroDECK specific features on top of them and makes it into one application as is the goal of the project.

But that said we are looking into a allowing a limited scrope of custom emulator installation for those that have early access versions that are payed like Yuzu and the users really want to add in.

The custom installation will still be more limited then the one we ship with RetroDECK by default and might have less features then normal Yuzu in term of hotkey support and other things that the user will need to configure manually.

<br>

## Do you only ship stable versions of the emulators or nightly versions?
RetroDECK ships with the version that is the best for running the games on a case-by-case basis.

For all  bleeding edge emulators like Yuzu or RPCS3 it's nightly versyncrsion we ship.

But for things like RetroArch it is only the stable release of the application we ship.
When it comes to RetroArch Cores they always use their stable version, but if there is no stable version of a core within a stable release of RetroArch the nightly version of that core will be used instead.

Even before we release a new update for RetroDECK the nightly versions of the emulators will be tested to make sure they work and no major issues are known to exist in them.

There have been instances where the nightly version of a emulator have been completly broken and we want to avoid to ship that with RetroDECK.

<br>

## Will you implement Cloud Sync / Backup to various services?

Yes, that is the plan in a future update. We will not do our own infrastructure but allow users to their own services via easy built-in tools in the Configurator.

### What can I use now while we wait for Cloud Sync / Backup?

There exist several open source options, here is a few of them:

- [Rsync](https://linux.die.net/man/1/rsync)
- [NextCloud](https://nextcloud.com/)
- [Syncthing](https://github.com/syncthing/syncthing)
- [Syncthing GTK GUI](https://flathub.org/apps/me.kozec.syncthingtk)

