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

## What are the new Defaults?

- Ryujinx
- Citra-core in RetroArch

## Is the planned feature of Yuzu (Custom) removed?

Yes, the planned feature have been removed. But it still lives on with a changed scope with the goal of historical preservation instead of latest EA Builds.

### I have the AppImages of last versions the Emulators, can I integrate them with RetroDECK for historical curiosity?

Yes, the RetroDECK Team believes there is value in looking back into the past even in the future. Even tho RetroDECK will not provide the emulators anymore, there will be a way for you to integrate them with RetroDECK in 0.8.0b.

##  We are following the development of this and this statement might change

As everything is up in the air and constantly changing, we are trying to provide the information as it is right now in the current moment as of this writing.
Things could maybe change for Citra or there can be other solutions.

Thanks for your understanding!
