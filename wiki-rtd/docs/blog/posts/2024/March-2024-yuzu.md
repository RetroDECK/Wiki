---
date: 2024-03-04
---

# March 2024: Tiny update - Yuzu Removal

Highlights:

- Yuzu & Citra is getting removed in 0.8.0b


<!-- more -->

## Yuzu & Citra-SA Removal in the Next Update 0.8.0b

Hello everyone!

First this is not the real development blog post but a tiny extra one to adress one key issue:

As you might have heard Yuzu & Citra (stand alone version) is no more and anyone supplying Yuzu or Citra is breaking the court settlement and could be targeted for litigation.

So as an effect of this, the RetroDECK Team will remove Yuzu & Citra from RetroDECK at the start of the next update 0.8.0b.

We are trying to keep this topic updated with information as we get it.

### Why is Citra affected?

- Citra and Yuzu where made by the same company in US.
- The Yuzu and Citra teams where mostly the same.
- Yuzu and Citra shared code.
- In the settlement both Citra and Yuzu where affected.
- The Citra and Yuzu discord confirmed their shutdown.

## Regarding Switch Emulation

## Ryujinx will be included  in 0.8.0b

Ryujinx will be included as the default for Switch emulation as of 0.8.0b.
Please do an in-game save for all the games you want to transfer the save files from Yuzu.

There will probably be a lot of migration guides written all over the internet in a short from all over.
All reference to Yuzu will be purged from the wiki and other places within our control.

## Regarding 3DS Emulation

### What about the Citra Core in RetroArch?

- RetroDECK synchronizes the entire core list of RetroArch in each update.
- If the Citra core is part of that it will be included in RetroDECK.
- If Libretro is removing it later, it will be removed in the whatever the next update of RetroDECK after that.

So if the Citra core exists it will be the default for 3DS emulation.

### Standalone Alternatives

We are looking into alternatives like:

- [Panda3DS](https://panda3ds.com/)
- [Mikage](https://mikage.app/).


## Will you delete any savefiles?

No, we are not trying to delete any files important to the users except for the ability to run Yuzu and Citra in RetroDECK.

## What are the new Defaults?

- Ryujinx
- Citra-core in RetroArch


## Where are the Yuzu and Citra files located?

~ = home catalog
/.var/ is hidden


```
~/.var/app/net.retrodeck.retrodeck/cache/yuzu/
~/.var/app/net.retrodeck.retrodeck/config/yuzu/
~/.var/app/net.retrodeck.retrodeck/data/yuzu/
/retrodeck/saves/switch/
/retrodeck/mods/Yuzu/
```

```
~/.var/app/net.retrodeck.retrodeck/config/citra-emu/
~/.var/app/net.retrodeck.retrodeck/data/citra-emu/
/retrodeck/saves/n3ds/
/retrodeck/states/n3ds/
/retrodeck/mods/Citra/
```

## Where did all the Yuzu and Citra guides go on the Wiki?

They have been moved to the Archive Section.

## Is the planned feature of Yuzu (Custom) removed?

Yes, the planned feature has been removed, but not all the effort was lost as this turned into Ponzu.

## What is Ponzu?

Ponzu is the former Yuzu (Custom) AppImage loader and tool. If the user has personal backups of the last versions of the now dead emulators in AppImage format they can temporarily be used with RetroDECK as-is.

### Should this be seen as official support for the removed emulators?

No, this is more of a tool to point towards those version from RetroDECK and some parts to be used from within RetroDECK and the ES-DE Frontend.

The defaults are still Ryujinx and Citra-core in RetroArch from 0.8.0b, but you can choose to run those systems against the AppImages instead from the ES-DE interface.

No new configs will be developed or any long term improvements, the emulators have been removed. This is an as-is solution.

## Will Ponzu be a part of 0.8.0b?

Yes

### Why the name Ponzu?

Ponzu is a seasoning made of fruits of the citrus family: Yuzu, Lime, Lemon.

##  We are following the development of this and this statement might change

As everything is up in the air and constantly changing, we are trying to provide the information as it is right now in the current moment as of this writing.

Thanks for your understanding!
