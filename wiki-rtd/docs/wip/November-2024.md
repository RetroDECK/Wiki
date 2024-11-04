---
date: 2024-10-03
---

# November 2024: Merged winter

This month we will discuss

## Highlights

- Development is a bit slower 
- New website
- 3DS Emulation - status
- Xenia - status
- Godot Configurator - status
- Merged Cooker

<!-- more -->

## Development is a bit slower 

Please note that this is a big release with several features that requires coordination of several people that spends their free time doing this. 
It is a huge endeavor and we can't give any ETA's on when 0.9b will be released and done. We had an internal goal of December but...

sometimes IRL issues happen that takes away that time (work, family, life, death, love, etc..). 

Everyone in FOSS have to always balance their commitment to free software and still do everything life entails.

---

## New website

We secretly soft launched our new website during Halloween.

https://retrodeck.net/ 

Check it out and give feedback on the Discord on Lemmy. 

Thanks Adam Iannazzone for all his hard work on contributing his free time to the RetroDECK project and the new website. 

---

## 3DS Emulation - status

We had secret plans to include Lime3DS into the release of 0.9b. 

But as the big Citra forks are merging into one, it feels better to wait until they have sorted everything sorted out and get the best project into RetroDECK proper. When their new repo is up and running we will target that.

---

## Xenia - status

We are looking into utilizing [UMU Launcher](https://github.com/Open-Wine-Components/umu-launcher) for Xenia (and other Wine based systems in the future). 

Instead of pulling in all of vanilla Wine into RetroDECK and configuring it, UMU Launcher feels like a better architectural choice that can give more synergies in the future.

We are waiting for the Open Wine Components Team (Heroic Game Launcher, Lutris, Bottles, Lutris, Proton-GE and more) to finish up their flatpak version (they do great work!). 

---

<img src="../godot.png" width="80">

## Godot Configurator - status

On the Steam Deck, Game Mode has no included web browser that can be launched via flatpak thus rendering the the wiki links and website links useless in Game Mode. We will probably keep the buttons but only have them shown in Desktop Mode (or any normal Linux Desktop). 

We currently don't feel like we want to ship an entire web browser inside of RetroDECK to remedy it. 

Instead we are looking into a sophisticated markdown viewer instead. That will give you the ability to sync the entire wiki down to local storage with the click of a button and have it readable no matter if you are online or offline. 

---

<img src="../big-chungus.png" width="70">

## Merged Cooker

Several of the big feature branches are now merged into Cooker proper (creating one big chunky boi).

Having one big cooker now will make it easier to test everything in one go. 

In the future we might utilize the flathub-beta remote to facilitate easy testing when the cooker is more stable.

The current cooker now features:

- SRM (Add to Steam)
- Godot Configurator
- Updated Emulators / Components
- PortMaster
- Lighter Manifest
- Ruffle

---

## Known issues in cooker

There is still plenty of work to do and we always do need more people testing and developing.

This is a list of major issues we are investigating.

If you want to help with parts of development or testing please contact us on `Matrix` / `Discord` in the `💙-i-want-to-help` channel.


### SRM

<img src="../srm-logo.png" width="30">

- Is not yet added to Godot Configurator and need to be enabled from Legacy Configurator.
- Not all systems are adding the games as they should.

### Godot Configurator

<img src="../godot.png" width="30">

- Bash slowdown for certain scripts if launched via Godot Configurator via Steam.
- Need to add some more menus / buttons.
- Needs more testing of all the features.

### Emulators / Components

<img src="../Ryujinx.png" width="30">

- Not all emulators have been updated yet as some have added additional dependencies we need to build.
- Ryujinx is disabled at the moment.

### PortMaster 

<img src="../portmaster.png" width="30">

- No reported issues

### Ruffle

<img src="../ruffle.png" width="30">

- Need to do a configuration pass on settings and controls.

---

## That is all for now

There are more things we are working on, but you will see them in future blog updates!

Thanks everyone!

//The RetroDECK Team

### Links

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

[Lemmy](https://lemmy.zip/c/retrodeck)
