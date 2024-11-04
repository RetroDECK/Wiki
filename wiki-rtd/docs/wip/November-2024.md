---
date: 2024-10-03
---

# November 2024: Flashy winter

This month we will discuss

## Highlights

- Development is a bit slower 
- Merged


<!-- more -->

## Development is a bit slower 

Please note that this is a big release with several features that requires coordination of several people that spends their free time doing this. 
It is a huge endeavor and we can't give any ETA's on when 0.9b will be released and done. We had an internal goal of December but...

sometimes IRL issues happen that takes away that time (work, family, life, death, love, etc..). 

Everyone in FOSS have to always balance their commitment to free software and still do everything life entails.

## New website

We secretly soft launched our new website during Halloween.

https://retrodeck.net/ 

Check it out and give feedback on the Discord on Lemmy. 

Thanks Adam Iannazzone for all his hard work on contributing his free time to the RetroDECK project and the new website. 

## 3DS Emulation - status

We had secret plans to include Lime3DS into the release of 0.9b. 

But as the big Citra forks are merging into one, it feels better to wait until they have sorted everything sorted out and get the best project into RetroDECK proper. When their new repo is up and running we will target that.

## Xenia - status

We are looking into utilizing [UMU launcher](https://github.com/Open-Wine-Components/umu-launcher) for Xenia instead and other Wine based systems in the future. This is instead of pulling in all of Wine into RetroDECK and configure it manually. 

UMU feels like a better approach that can give more synergies in the future.

We are waiting for the Open Wine Components Team (Heroic Game Launcher, Lutris, Bottles, Lutris, Proton-GE) to finish up their flatpak version (they do great work!). 


## Godot Configurator

On the Steam Deck, Game Mode has no included web browser that can be launched via flatpak thus rendering the the wiki links and website links useless in Game Mode. We will probably keep the buttons but only have them shown in Desktop Mode (or any normal Linux Desktop). 

We currently don't feel like we want to ship an entire web browser inside of RetroDECK to remedy it. 

Instead we are looking into a sophisticated markdown viewer instead. That will give you the ability to sync the entire wiki down to local storage with the click of a button and have it readable no matter if you are online or offline. 

## Merged Cooker

Several of the big feature branches are now merged into Cooker proper.
Having one big cooker now will make it easier to test everything in one go. 

We are looking into when the cooker is a bit more fleshed out and stable too maybe utilize the flathub-beta remote to facilitate easy testing.

The current cooker now features:

- SRM (Add to Steam)
- Godot Configurator
- Updated Emulators / Components
- PortMaster
- Lighter Manifest
- Ruffle

NOTE: That not everything is working at the moment (including some systems). 

### Known issues in cooker

There is still plenty of work to do and we always do need more people testing / developing.

This are a list of major issues we are investigating.

#### SRM

- Is not yet added to Godot Configurator and need to be enabled from Legacy Configurator
- Not all systems are adding the games as they should.

#### Godot Configurator

- Bash slowdown for certain scripts if launched via Godot Configurator via Steam.
- Need to add some more menus / buttons.
- Needs more testing of all the features.

#### Emulators / Components

- Not all emulators have been updated yet as some have added additional dependencies we need to build.
- Ryujinx is disabled at the moment.

#### PortMaster

No reported issues

#### Ruffle

- Need to do a configuration pass on settings and controls.

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
