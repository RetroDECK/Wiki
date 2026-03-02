---
date: 2024-03-04
---

# March 2024: Tiny update - Yuzu Removal

## Highlights

- Yuzu & Citra is getting removed in 0.8.0b


<!-- more -->

## Yuzu & Citra-SA Removal in the Next Update 0.8.0b

Hello everyone!

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

### Q: What is Ponzu?
Ponzu is in part the former Yuzu (Custom) AppImage Loader and tool that we had planned for 0.8.0b with a changed scope.

If the user has personal backups of any dead emulators in AppImage format, they can temporarily be used with RetroDECK as a safe way to migrate to other solutions.

### Q: Should this be seen as official support for the removed emulators?

No we provide zero support, the the only official emulators we support for those systems are Ryujinx and Citra-core in RetroArch (as long as it is shipped as part of RetroArch).

Since the first day of our announcement on both Citra's and Yuzu's removal.

We made it extremely clear that we will not provide any new: configurations, bug fixes, improvements, or any kind of support at all, for the these removed emulators. There is also a very substantial risk that future updates of RetroDECK will break the current temporary compatibility, this to be seen as a as-is solution.

At the same moment we also updated our social rules to reflect that any type of discussion about these emulators will come with a warning first and then a ban.

The only recommended use case of Ponzu is the intended function as safe way to migrate to Ryujinx or the Citra-core (finish up, save and move).

We urge everyone to stop using these emulators.

### Q: Will you be looking in into other forks of Citra & Yuzu later and add into RetroDECK?

First, this type of event makes it ripe for scammers.

We would urge all users to be extra careful and not blindly downloading solutions and any type of fan patches/tweaks for the dead emulators that we have seen circulating.

**Regarding forks:**

We will not investigate any forks until they have proven they are good, ethical and safe. But also vetted by the FOSS community and proven they are long lasting.

## Will Ponzu be a part of 0.8.0b?

Yes

##  We are following the development of this and this statement might change

As everything is up in the air and constantly changing, we are trying to provide the information as it is right now in the current moment as of this writing.

Thanks for your understanding!
