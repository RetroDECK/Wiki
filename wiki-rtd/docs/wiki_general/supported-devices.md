# What devices and OS does RetroDECK currently support?

RetroDECK currently only works on x86_64 architecture.

## Steam Deck

RetroDECK was built for the Steam Deck in mind and started as a project towards that device.

## Linux Desktop

It works, but RetroDECK is still reliant on Steam Input for advanced hotkeys. 

For the best experience we recommend a distribution that has built in Game Mode like Valves SteamOS, Bazzite, ChimeraOS and so forth. 

Game Mode fixes several Steam issues that are present in standard Linux Desktop such as the radials are rendered correctly on screen. 

## Other x86_64 Linux Handhelds / Devices

Our community is highly creative and likes putting RetroDECK on new devices. 

Many devices are emulating a Playstation, Steam Deck or Xbox controller this it should work out of the box and be able to hook into that corresponding Steam Input Layout. 

If it does not show up as any known input, The RetroDECK Team might not have been able to create a input profile for a new device as it needs to be bought by the team to add it. 

If you own a device that has custom inputs and want to create a Steam Input profile for it, please get it touch with the Team and so we can ship it in a later update.

### Installing Linux & RetroDECK on x86_64 Windows Handelds

We have user confirmation that RetroDECK does work on the other handhelds that was released with Windows.

## FAQ Devices / OS

### Will you support Windows?

No, RetroDECK doesn't support Windows currently.

As an alternative you could try [RetroBat](https://www.retrobat.org/) that offers similar functionality in a Windows environment.
How ever if you install a Linux distribution on your device instead you can try out RetroDECK.

ES-DE does support the Windows as does the emulators, but it is a vastly different landscape.

It would be a major undertaking but maybe one day in the future it could be possible.

We would also need more developers with Windows experience to help us with this effort.

### Will you support ARM devices like iOS, MacOS and Android?

No, RetroDECK doesn't support ARM devices currently.

It would be a major undertaking but maybe one day in the future it could be possible.

We would also need more developers with ARM experience to help us with this effort.

But it would need to be a unique experience as the emulators, other underlying systems would not be the same and would need to be rewritten from the ground up.

It is a vastly different landscape with other licensing models for several of the emulators/systems specially on Android where the X86_64 binary is FOSS while the Android version is closed source.

### Will you support RISC-V?

The idea of a widely accepted open-source architecture is exiting at least. It would be a major undertaking but one day in the far-off future it could be possible as the platform matures and more systems gets compatibility.

### Will you support other Linux distribution methods such as Snap or AppImage?

It's not in our roadmap yet as now the entire buildsystem is based on the flatpak-build that builds the software via the flatpak manifest.
In the past we evaluated to migrate to **Buildstream** (or similar solutions) and build on to multiple output formats.

But the team is not large enough to migrate and maintain other distribution methods, so we prefer to focus our effort on Flatpak only.
If someone with knowledge and passion wishes to help us with migrating to a solution and help us maintain it, we are open for a discussion.
