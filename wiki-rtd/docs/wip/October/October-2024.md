---
date: 2024-09-06
---

# October 2024: Spooky Update

Highlights:

- Godot Configurator - Status
- PortMaster - Status

<!-- more -->

## Spooky update

It's once again time for a blogpost on what we have been working on for the past month.

---

Captain Comeback

---

<img src="../godot.png" width="80">

## Godot Configurator - Status

![type:video](GodotNavigation.mp4)

Developer MonkeyX of the RetroDECK Team is hard at work with his Godot Magic (we are happy to have him).

- Here we show a more updated navigation.
- More colorful.


---

<img src="../portmaster-logo.png" width="80">


## PortMaster - Status

<img src="../homm3.png" width="450">

The PortMaster X86_64 version is coming along slow and steady. We are working togheter with the PortMaster team to make this happen. It offers a plethora of FOSS games, game engines and other custom games.

**Question: How many ports are available currently in development?**

So far there about 40-50 ports already for X86_64.

As stated in a previous blog the goal is NOT to have all 600+ ports in X86_64 as it does not makes sense. Only games that have

**Question: Where will the portmaster ports directory be?**

It will be under `roms/portmaster/`

**Question: Will PortMaster be part of 0.9.0b?**

We *hope* to ship is as part of the update. But it is also a quite big feature in addition to the Godot Configuror (let's see where we are when the time comes).

---

## Ryujinx Issues - Status

We are still working with and having open dialog with the Ryujinx Team on this. They hope to make their pathing more dynamic to solve that the Emulator can't find several files in an upcoming Ryujinx update. But the problem is quite complex.

Depending on where we and they are in development

---


## Steam ROM Manager - SRM (Add to Steam) - Status

We have had good dialog and cooperation with the SRM Team to make this feature a reality. But RetroDECK's implementation is quite different as we don't plan to let the users open the SRM interface at all as it will be preconfigured in the back-end.

The goal is the same as a blogpost from way in the past with a much more seamless and elegant solution.

1. You enable the system from the Configurator.
2. Games you mark as ⭐ favorites in the ES-DE interface will be synced to Steam as separate game entries in your library.
3. The sync will scrape the art from SteamGridDB and add our controller profile on the games.
4. You can launch the game as an individual entry.

In addition SRM will allow us to Add RetroDECK to Steam directly on first install with SteamGridDB art and the controller profile, so we can cut down that entire step from the installation process.

Note: That you will need to accept or deny that we add RetroDECK to Steam during first install.

---

### Question - SRM: Will this be part of 0.9.0b?

Right now we don't know it is still quite complex, no promises.

---

### Question - SRM: If all settings are in the back-end how do I change GridArt type?

We plan to expose all those important settings inside the Godot Configurator instead. With various dropdowns menus or checkboxes.

**Examples:**

Grid Style:

- any
- alternate
- blurred
- white logo
- material
- no logo

Hero Style:

- any
- alternate
- blurred
- material

Icon Style:

- any
- official

#### I consider myself a man/woman/anthropomorphic animal/vtuber/etc.. of CULTURE. Will ALL the SRM Toggles be exposed in the Configuror?

We are fully aware that SRM features more toggles and yes we plan to make them all available.

Including the toggles for:

- NSFW
- Static or Animated

Stop bothering us on Discord, you know who you are.

---

## How can I help out?

If you want to help out with our efforts, please post your interest in the 💙-i-want-to-help in either Matrix or Discord.

We are always looking for more developers, artists or testers that can contribute to RetroDECK.


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
