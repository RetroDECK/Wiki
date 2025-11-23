# FAQ: Feature Requests

<img src="../../wiki_icons/retrodeck/icon-rd.svg" width="75">

## Will you implement X/Y/Z system?

Our goal is to implement and configure the best version, for each system supported by ES-DE. 

If your favorite system is not integrated, you can request its integration by opening an issue on GitHub. 

There are already several suggestions:

[RetroDECK Github - New Components](https://github.com/RetroDECK/RetroDECK/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22New%20Component%20%F0%9F%92%BE%22)

## I have an innovative idea on a new feature, how do I suggest it?

Check if the request already exists in the issue list on GitHub. 

If not, you can create a new issue and suggest it. 

You can also discuss your ideas in our community before submitting.

## Will you add Windows versions of the emulators and run them via Wine/Proton?

Currently, there are no plans to support this.

## Will you implement Cloud Sync/Backup?

Yes, that is planned for a future update. We will allow users to use their own services via easy built-in tools in the Configurator.

### What can I use now while waiting for Cloud Sync/Backup?

Here are some open-source options:

- [Rsync](https://linux.die.net/man/1/rsync)

- [NextCloud](https://nextcloud.com/)

- [Syncthing](https://github.com/syncthing/syncthing)

- [Syncthing GTK GUI](https://flathub.org/apps/me.kozec.syncthingtk)


## Will you support ARM Linux Devices like the Steam Frame or Nvidia N1X? 

The RetroDECK Team is investigating the possibility to support this platform. 

## Will you support RISC-V?

The idea of supporting RISC-V is exciting, but it as everything else would be a major undertaking.

It might be possible in the future as the platform matures and gains more compatibility.

But supporting RISC-V devices would be a major undertaking and would require more developers with RISC-V experience.

## Will you support Windows?

<img src="../../wiki_icons/pixelitos/distributor-logo-windows.png" width="50">

No, RetroDECK doesn't support Windows currently. 

You can try [RetroBat](https://www.retrobat.org/) for similar functionality on Windows.

Alternatively, you can install a Linux distribution on your device to use RetroDECK. Supporting Windows would be a major undertaking and would require more developers with Windows experience.

## Will you support MacOS?

No, RetroDECK doesn't support MacOS currently. 

You can try [OpenEmu](https://openemu.org/) for MacOS.

Alternatively, you can install a Linux distribution on your device to use RetroDECK. Supporting MacOS would be a major undertaking and would require more developers with MacOS experience.

## Will you support ARM mobile devices like iOS and Android?

<img src="../../wiki_icons/pixelitos/distributor-logo-macos.png" width="50"> <img src="../../wiki_icons/pixelitos/android.png" width="50">

No, RetroDECK doesn't support ARM devices currently. 

The underlying systems would need to be rewritten due to different emulators and licensing models,
especially on Android where some emulators are open source on x86_64 but closed source on android.

Supporting mobile ARM devices would be a major undertaking and would require more developers with ARM experience.

## Will you support other Linux distribution methods such as Snap, AppImage, AUR, etc...?

It's not in our roadmap. Currently, the entire build system is based on flatpak-build and we are reliant on Flathub for publication. 

The team is not large enough to migrate and maintain other distribution methods. 

However, if someone with knowledge and passion wishes to help with migrating and maintaining it, we are open to discussion.
