---
date: 2024-10-01
---

# October 2024: Spooky Lights

**Highlights:**

- Captain Comeback - 0.9.0b
- Godot Configurator - Status
- PortMaster - Status
- Ryujinx Issues - Status
- Steam ROM Manager - SRM (Add to Steam) - Status
- Q&A - Other Questions

<!-- more -->

## Spooky Lights Blogpost

It's once again time for a blogpost on what we have been working on for the past month.

First we wish the community a happy upcoming:

🎃 Halloween 🎃 / 🕯️ Diwali 🕯️ / 🪦  Día de los Muertos 🪦

## Captain Comeback - 0.9.0b

As we hit the `CC` letters with this update, we internally debated long on what the name of the update should be.

The official name for 0.9.0b is now: `Captain Comeback`.

As we have rewritten the entire application from the ground up with the new `Lighter Manifest` in addition to shipping the new `Godot Configurator`.
It does feel like a comeback.

---

<img src="../godot.png" width="80">

## Godot Configurator - Status

![type:video](GodotNavigation.mp4)

As always everything is W.I.P and subject to change.

The RetroDECK Team have kept working on Godot since last month. MonkeyX has put his heart and soul into this and we are happy to have him :)

We are showing off:

- Updated navigation.
- Updated keygrid.
- More colors.
- Navigation sounds.
- Description windows that describes the function.

We also would like even more help with Beta Testing as this is a huge feature. If you are interested post in 💙`-i-want-to-help` channel in either Matrix or Discord.

### ItzSelenux special thanks

We also want to thank [ItzSelenux / ItsZariep](https://github.com/ItzSelenux/) for helping us making all of the pixelart icons and logos.

We mostly use ItzSelenux pixelart for both the Steam Input radial menus and Godot Configurator via his Pixelitos Icon Theme for the Linux Desktop.

If you are Spanish speaking you might want to follow his YouTube channel various FOSS topics do so here:

[ItzSelenux - Youtube](https://www.youtube.com/ItzSelenux)

If you like our radial menus, please give follow him on YouTube and/or a Star on GitHub

---

<img src="../portmaster.png" width="80">

## PortMaster - Status

![type:video](PortMaster.mp4)

The [PortMaster](https://portmaster.games/games.html) `x86_64` version is coming along slow and steady.

We are working togheter with the PortMaster team to make this happen. It offers a plethora of FOSS games, game engines and other custom games.

Thanks PortMaster Team! ❤️


### Question: Will PortMaster be part of 0.9.0b?

The current goal is that we *hope* ship it as part of the update. It is also a quite big feature in addition to the Godot Configuror.

### Question: How many ports are available currently being ported to x86_64?

So far there about **40-50** ports are already done and more to come.

### Question: How do you launch the ports?

In the ES-DE interface there is a new PortMaster system menu, from there you can launch PortMaster.

Within PortMaster you can download and manage your ports.

After you have downloaded a port, it will show up in the ES-DE interface upon exit ready to be launched.

Note that some ports require additional steps like adding the purchased gamefiles inside.


### Question: Will all ports be available in the long run?

As stated in a previous blogpost the goal is NOT to have all 600+ ports available.

The primary goal of PortMaster is to port to ARM devices.

Several of the ports are redundant to offer for x86_64 and you already have a better way to play them directly via native launchers that most times offer better features.

But there could be some overlap for some games.

Linux already offers several ways to install big chunk of these ports: Flathub, Snap Store, Luxtorpeda, Lutris, Heroic, etc...

### Question: How will port and PM updates work?

PortMaster will have its own subsystem in RetroDECK and will have the ability to update itself and the ports.
Just launch PortMaster and it will update itself if needed.

---

<img src="../Ryujinx.png" width="80">

## Ryujinx Issues - Status

We are still working with and having open dialog with the Ryujinx Team on this.

They hope to make their pathing more dynamic to solve that the Emulator can't find several files in an upcoming Ryujinx update. But the problem is quite complex.

In any case 0.9.0b will have fixes for this either via a custom Ryujinx RetroDECK build or that the main application has been updated with the dynamic pathing.

Thanks Ryujinx Team! ❤️

---

<img src="../srm-logo.png" width="80">

## Steam ROM Manager - SRM (Add to Steam) - Status

We have had good dialog and cooperation with the SRM Team to make this feature a reality. But RetroDECK's implementation is quite different and you should not feel the need to open the SRM interface at all (unless you really want to) as it is all preconfigured in the back end.

The goal is the same as an old blog post with a much more seamless and elegant solution:

Enable Steam Sync from the Configurator. The games you mark as ⭐ favorites in the ES-DE interface will be synced to Steam as separate game entries in your library on launch or exit of RetroDECK and should apply our controller profile automatically.


Thanks SRM Team! ❤️

### Question: Will this be part of 0.9.0b?

Right now, we don't know it is still quite complex as it also need to be integrated into the Godot Configurator, no promises. We are working on so many things as you can see.

### Question: Will I be able to choose what artwork that are used if there are multiple?

You will not be able to choose what artwork is grabbed from SteamGridDB it will grab the first version. We plan to expose the filter settings in the Godot Configurator for ease of access (if possible).

If you want that a high level of customization you will need to open the SRM interface via the Configurator.

### Question: Can I quickly change the SRM filters?

<img src="../SRM-filters.png" width="800">

The goal is to expose them inside the Godot Configurator. With various dropdowns menus, toggles and checkboxes.

**Example:**

The `Grid Style` filter has the values of:

- Any
- Alternate
- Blurred
- White logo
- Material
- No logo

We plan to expose all of those values in some graphical form inside the Configurator (if possible).


#### But what about that ONE toggle?

We are aware that we have *some* community members that consider themselves a:

```
Person of CULTURE.
Man of CULTURE.
Woman of CULTURE.
Anthropomorphic Animal of CULTURE.
Anthropomorphic Blue Dragonkin of CULTURE.
Italian.
Sentient Furniture of CULTURE.
Virtual Avatar of CULTURE.
V.I.P member of the Goon Squad.
Undead Creature of CULTURE.
<Custom Value> of CULTURE.
```

Yes, as stated above if it is part of SRM's filters we will expose it including the toggle for NSFW artwork.

🤌 Stop asking us on Discord, you know who you are! 🤌

---

## Q&A - Other Questions

### Question: Will you update the 0.8.0b branch more?

No the goal is go straight from 0.8.4b to 0.9.0b. The 0.8.0b branch is on the old codebase and as we have rewritten the application with the light manifest it would waste development resources to do a 0.8.5b update.

### Question: How can I help out?

If you want to help out with our efforts, please post your interest in the 💙`-i-want-to-help` in either Matrix or Discord.

We are always looking for more developers, artists or testers that can contribute to RetroDECK.

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
