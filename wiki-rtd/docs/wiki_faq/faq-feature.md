# FAQ: Feature Requests

<img src="../../wiki_icons/retrodeck/rd_icon_circle_192x192.png">

## Will you implement X/Y/Z emulator?

Our goal is to implement and configure a selection of the best emulators for each system supported by ES-DE. If your favorite system is not integrated, you can request its integration by opening an issue on GitHub.

## Will you implement other software (that is not emulators and engines) inside of RetroDECK like Batocera?

We do have plans for a ports downloader / manager in the future.

## I have an innovative idea on a new feature, how do I suggest it?

Check if the request already exists in the issue list on GitHub, if not you can make a new issue and suggest it.
If you want to discuss before submitting feel free to post your ideas in our Discord community.

## Will you add Windows versions of the emulators as well and run them via Wine/Proton?

We know that some emulators like CEMU run better with the Windows version via Proton, but the entirety of Proton/Wine and DXVK must be added to the project and then configured to get it to work at all.
This is no easy feat, and most emulators are better and equally performant as their Windows counterparts with the Linux versions.

There are no plans currently to support this and it also comes with a lot of risk adding such big dependencies as Wine into the project.

## Will you implement Cloud Sync / Backup?

Yes, that is the plan in a future update. We will not do our own infrastructure but allow users to their own services via easy built-in tools in the Configurator.

### What can I use now while we wait for Cloud Sync / Backup?

There exist several open-source options, here is a few of them:

- [Rsync](https://linux.die.net/man/1/rsync)

- [NextCloud](https://nextcloud.com/)

- [Syncthing](https://github.com/syncthing/syncthing)

- [Syncthing GTK GUI](https://flathub.org/apps/me.kozec.syncthingtk)
