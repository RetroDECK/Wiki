---
date: 2024-09-18
---

# September 2024: Post-summer report

Highlights:

- Lighter Manifest: What is it?
- Lighter Manifest: Results
- Godot Configurator: Font Selector & Bios Checker
- Godot Configurator: Logs & Wiki
- Godot Configurator: Logs & Wiki

<!-- more -->

<img src="rd-circle.png" width="150">


## Post-summer report

You did not think we just spent all summer on the beach, did you?! 🏖️

## NEWS: Lighter Manifest for 0.9b



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

- Around **400mb-600mb** of data have been freed from the finished project to use for other activites.

- That is about **1/5** of the entire application trimmed.


---

## Godot Configurator

Yes, we are still working on it and much more! But we are now ready to showcase more of what we have been working on for so long.

#### This is W.I.P 🛑

Things are changing daily and nothing in these videos should be seen as final and is more akin to a pre-alpha.

Also note that the name "Godot Configurator" is just the working name, it will be called RetroDECK Configurator when it is released and replaces the old version.

The goal of the new RetroDECK Configurator are the same:

- Replaces the current RetroDECK Configurator.
- Can us controllers to navigate.
- Populate it with more features then before and make it easy to expand.

### BIOS Checker, Font Selector

![type:video](Configurator-Bios-OpenDys.mp4)


- We show an early version of the BIOS checker in a table format.

- The font selector and highlighting the **Accessible** font.

    - This is something we talked about for a long time and was the driving force behind the font selector. It uses the [OpenDyslexic](https://opendyslexic.org/) font. For many users it is a trivial feature to change a font but for those that truly need something that is easier to read, it could be a game changer.



### Logs Viewer, Wiki / Website

![type:video](Configurator-Logs-Website.mp4)


- Access various logs directly from the Configurator only a few have been added as a POC. This is great for troubleshooting but also a useful tool for users that love to tweak.

- Experimenting with the ability to open both the Wiki and the Website from within the Configurator.

    - We are also looking into an option to sync/download the entire Wiki via a button to have as a local copy when you are offline for ease-of-access when you are out traveling.


### POC: RetroArch submenu

<img src="../submenu-ra.png" width="750">

This is a prototype sub-menu for RetroArch.

- Where you can have some information about RetroArch.
- Open RetroArch
- Quick Settings: It allows you do some things without needing to open the entire RetroArch interface.
- We are also experimenting with button inputs and placeholder placements.

### POC: Border Selection

<img src="../buttons.png" width="450">
<img src="../newbutton.webp" width="150">

We want to present graphical buttons on what you have selected that are shown when you enable in this example Borders with both text and a graphical icon with a check mark or a cross.


### Do you want to help out?

If you want to help out with our efforts please post your interest in the 💙-i-want-to-help in either Matrix or Discord.

We are always looking for more developers, artists or testers that can contribute to RetroDECK.

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
