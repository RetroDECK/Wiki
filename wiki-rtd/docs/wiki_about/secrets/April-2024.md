---
date: 2024-04-20
---

# April 2024: Porting things

Highlights:

- Bonsai Banana Released
- PortMaster

<!-- more -->

## Bonsai Banana - Released

We thank everyone for your patience.

The update was hard to get out as it needed major back-end changes to accommodate both Ponzu and all the major structural changes brought by the ES-DE 3.0 update.

We opted for a more extended testing period as well to make sure everything was as safe as possible. But as always there will be bugs as no software is bug free.

Everyone is watching and documenting the issues people are having on Discord, Matrix, Reddit, Lemmy and other places and added to a list. So far, no severe issues have been reported (application crashes, loss of data, etc.).

### Reported issues from our community

We still need to test an verify these with the beta testers and we will have a 0.8.1b out shortly.

**None Issues:**

- Citra (Legacy) Hotkeys don't work in RetroArch Citra Core. This is true as the core don't support the same hotkeys as Citra.

**Emulators:**

- GB Inputs don't work in the RetroArch Core.
- Weird performance in RetroArch Citra Core.
- Wii U sound not working after reset on a Steam Deck.
- Wii U Mic Command not working &/ missing.
- Amstrad RetroArch inputs not working.
- Some OpenBOR games are not loading.
- For certain users the Ryujinx post-update is not triggering as it should causing: save folders not being to be created and firmware folders not recognized. (You can try manually putting in the firmware via the config folder /.var/net.retrodeck.retrodeck/config/Ryujinx/)
- For certain users Ponzu is not respecting config changes or showing in the configurator.

**Steam Input**

- Switch Menu goes to ScummVM Menu in Radials - Confirmed

## PortMaster and RetroDECK

The RetroDECK Team have been working with parts of PortMaster Team and other passionate developers that want to bring [PortMaster](https://portmaster.games/index.html) to RetroDECK and x86_64 systems.

In this video we display an early POC one developer made from PortMaster running within RetroDECK.

This is still incredibly early and if or when this will fully ship, we don't know yet. The scaling is also wrong and not everything works...


![type:video](pm-retrodeck.mp4)




### What is PortMaster?

It is a Linux Port Manager to easily download, manage, create and play various Linux game ports.
In many of the ports you will need to own the game and take files from the original game for the ports to work.

For a full game list check here:

[PortMaster Gamelist](https://portmaster.games/games.html)

### There exist other ways to run the same games?

Yes, there exists many ways to run these ports and games outside of PortMaster.

PortMaster was born from the scope of arm based handheld gaming devices to play games not available for those systems.

For certain ports it might make more sense to install them directly via:

- [Luxtorpeda](https://github.com/dreamer/luxtorpeda)
- [Lutris](https://lutris.net/)
- [Flathub](https://flathub.org/en)
- [Steam](https://store.steampowered.com/)
- [Heroic](https://heroicgameslauncher.com/)
- [MiniGalaxy](https://sharkwouter.github.io/minigalaxy/)

Some ports are extremely hard to install for the average user and PortMaster makes it a breeze to install.

What we are doing is providing you with a new possibility within RetroDECK.

## I don't care about any of this, I just want to add my games to Steam!

The team is working on integrating an already pre-configured micro version of SRM (Steam ROM Manager) within RetroDECK with several functions exposed in the configurator.

We know how you feel, it is by far the:

[Most Requested Feature](https://soundcloud.com/lazorne/the-most-requested-feature-1/s-ZU517nfk95h?si=82f784da8bae467f8655d43fdadb15a8)



## That is all for April

Thanks everyone!

//The RetroDECK Team

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

[Lemmy](https://lemmy.zip/c/retrodeck)<br/>
