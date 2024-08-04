# What devices/systems does RetroDECK currently support?

RetroDECK currently officially supports two systems:

- Steam Deck
- Linux Desktop

## Steam Deck LCD/OLED

RetroDECK was built for the Steam Deck in mind.

### Other SteamOS devices

SteamOS the operative system will always be supported but as of today there are no other officialy released devices with SteamOS other the Valve's Steam Deck lineup.

## Linux Desktop

It is working, but the user experience might not be that great it as we want it to be just yet.

You will also need to manually configure the input to match your desktop and might need to tweak more settings.

If you want to try it make sure that your distribution has flatpak support (else you will need to install it).

### Will you support other Linux distribution methods such as Snap or AppImage?

It's not in our roadmap yet as now the entire buildsystem is based on the flatpak-build that builds the software via the flatpak manifest.
In the past we evaluated to migrate to **Buildstream** (or similar solutions) and build on to multiple output formats.

But the team is not large enough to migrate and maintain other distribution methods, so we prefer to focus our effort on Flatpak only.
If someone with knowledge and passion wishes to help us with migrating to a solution and help us maintain it, we are open for a discussion.

### Putting Linux on Windows Gaming Device and running RetroDECK

We have user confirmation that RetroDECK does work on the other handhelds.

Our community is highly creative and likes putting RetroDECK on new things like Legion Go and ROG Ally.

## Will you support Windows?

No, RetroDECK doesn't support Windows currently.

As an alternative you could try [RetroBat](https://www.retrobat.org/) that offers similar functionality in a Windows environment.
How ever if you install a Linux distribution on your device instead you can try out RetroDECK.

ES-DE does support the Windows as does the emulators, but it is a vastly different landscape.

It would be a major undertaking but maybe one day in the future it could be possible.

We would also need more developers with Windows experience to help us with this effort.

## Will you support ARM devices like iOS, MacOS and Android?

No, RetroDECK doesn't support ARM devices currently.

It would be a major undertaking but maybe one day in the future it could be possible.

We would also need more developers with ARM experience to help us with this effort.

But it would need to be a unique experience as the emulators, other underlying systems would not be the same and would need to be rewritten from the ground up.

It is a vastly different landscape with other licensing models for several of the emulators/systems specially on Android where the X86_64 binary is FOSS while the Android version is closed source.

## Will you support RISC-V?

The idea of a widely accepted open-source architecture is exiting at least. It would be a major undertaking but one day in the far-off future it could be possible as the platform matures and more systems gets compatibility.
