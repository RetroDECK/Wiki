---
date: 2024-08-18
---

# August 2024: Summer report

Highlights:

- Lighter Manifest: What is it?
- Lighter Manifest: Results
- Godot Configurator: Font Selector & Accessible
- Godot Configurator: Logs & Wiki


<!-- more -->

<img src="rd-circle.png" width="150">


## NEWS: Lighter Manifest for 0.9b

You did not think we just spent all summer on the beach, did you?! 🏖️

Now this might not be so exciting for most of our users, but we have begun rewriting the entire RetroDECK flatpak manifest for 0.9.0b (it is not done yet but getting close).

**In short what we have done:**

Moved RetroDECK from a monolithic approach where everything was built in one instance to a modular approach where each subsystem/emulator/engine/feature has its own building environment in its own repo and the main RetroDECK project just builds together all those modules.

The change did require us to change RetroDECK to an organization on GitHub to manage all the new "sub-repos" in a better way, as having them all under one developers GitHub profile was a bit unwieldy (it also made it easier for the entire team to contribute in a more organized manner).

**This allows us to:**

- Make even better synergies between emulator/engine dependencies with less overhead.

- Make several optimizations.

- Cut down build time.

- Reduce space.

- And more!


### What are the current results?

The results so far 🥁

#### RetroDECK's build time has been reduced:

- We have cut down the average buildtime by a whopping **70-75%**.
- From **3.30 hours** to about **45 minutes**.

#### We saved space:

A majority of this freed space will probably be eaten up later by the new systems we will add in 0.9.0b.

- Around **500mb** of data have been freed from the finished project to use for other activites.

- That is about **1/6** of the entire application trimmed.


---

## Godot Configurator

Yes, we are still working on it and much more!

🛑 **W.I.P** Things will change and nothing in these videos should be seen as final and is more akin to a pre-alpha. 🛑

The goal of the Godot Configurator are the same:

- Replaces the current configurator.
- Can us controllers to navigate.
- Populate it with more features then before and make it easy to expand.

![type:video](ConfiguratorGodot.mp4)

**In this video:**

- We show an early version of the BIOS checker in a table format.

- The font selector and highlighting the **Accessible** font.

    - This is something we talked about for a long time and was the driving force behind the font selector. It uses the [OpenDyslexic](https://opendyslexic.org/) font. For many users it is a trivial feature to change a font but for those that truly need something that is easier to read, it could be a game changer.


---


![type:video](ConfiguratorLogs.mp4)

**In this video:**

- Access various logs directly from the Configurator only a few have been added as a POC. This is great for troubleshooting but also a useful tool for users that love to tweak.

- Experimenting with the ability to open both the Wiki and the Website from within the Configurator.

    - We are also looking into an option to sync/download the entire Wiki via a button to have as a local copy when you are offline for ease-of-access when you are out traveling.




---


<img src="../submenu-ra.png" width="750">

**In this screenshot:**

This is a prototype sub-menu for RetroArch.

- Where you can have some information about RetroArch.
- Open RetroArch
- Quick Settings Menu: That allows you do some things without needing to open the entire RetroArch interface.
- We are also Experimentinging with button inputs.


## That is all for now

There are more things we are working on but you will see them future blog updates!

Thanks everyone!

//The RetroDECK Team

### Links

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

[Lemmy](https://lemmy.zip/c/retrodeck)
